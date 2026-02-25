import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../../bloc/education_bloc.dart';
import '../../bloc/education_event.dart';
import '../../bloc/education_state.dart';

class AttendanceScreen extends StatefulWidget {
  final String batchId;
  final String batchName;

  const AttendanceScreen({Key? key, required this.batchId, required this.batchName}) : super(key: key);

  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  final Map<String, String> _statuses = {}; // studentId -> status
  late String _selectedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate = DateFormat('yyyy-MM-dd').format(DateTime.now());
    _loadData();
  }

  void _loadData() {
    context.read<EducationBloc>().add(EducationEvent.fetchBatchDetails(widget.batchId));
    context.read<EducationBloc>().add(EducationEvent.fetchAttendanceLogs(widget.batchId, _selectedDate));
  }

  void _toggleStatus(String studentId) {
    setState(() {
      final current = _statuses[studentId] ?? 'Present';
      if (current == 'Present') _statuses[studentId] = 'Absent';
      else if (current == 'Absent') _statuses[studentId] = 'Late';
      else _statuses[studentId] = 'Present';
    });
  }

  void _scanQR() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('QR Scanner coming soon! Please use the manual toggles for now.')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Attendance',
              style: GoogleFonts.outfit(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(
              '${widget.batchName} • ${_selectedDate}',
              style: GoogleFonts.outfit(color: Colors.grey[600], fontSize: 12),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            onPressed: () async {
              final date = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2024),
                lastDate: DateTime.now(),
              );
              if (date != null) {
                setState(() {
                  _selectedDate = DateFormat('yyyy-MM-dd').format(date);
                });
                _loadData();
              }
            },
            icon: const Icon(Icons.calendar_today, color: Colors.purple),
          ),
          IconButton(
            onPressed: _scanQR,
            icon: const Icon(Icons.qr_code_scanner, color: Colors.purple),
          ),
        ],
      ),
      body: BlocConsumer<EducationBloc, EducationState>(
        listener: (context, state) {
          state.maybeWhen(
            attendanceLogsLoaded: (logs) {
              setState(() {
                for (var log in logs) {
                  _statuses[log['student_id'].toString()] = log['status'].toString();
                }
              });
            },
            actionSuccess: (msg) {
               ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
            },
            error: (msg) {
               ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg), backgroundColor: Colors.red));
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            batchDetailsLoaded: (batch) => _buildAttendanceList(batch),
            attendanceLogsLoaded: (logs) {
              // Re-rendering with current logs
              final currentState = context.read<EducationBloc>().state;
              return currentState.maybeWhen(
                 batchDetailsLoaded: (batch) => _buildAttendanceList(batch),
                 orElse: () => const Center(child: Text('Loading batch details...')),
              );
            },
            orElse: () => const Center(child: Text('Initialize batch details...')),
          );
        },
      ),
    );
  }

  Widget _buildAttendanceList(Map<String, dynamic> batch) {
    final students = batch['students'] as List<dynamic>? ?? [];
    if (students.isEmpty) {
      return const Center(child: Text('No students enrolled in this batch.'));
    }

    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.all(16),
            itemCount: students.length,
            separatorBuilder: (_, __) => const Divider(height: 1),
            itemBuilder: (context, index) {
              final student = students[index];
              final studentId = student['student_id'].toString();
              // In production, student details might need another fetch or be preloaded in batch students
              // For now we use ID as name if name is missing
              final name = student['name'] ?? 'Student ${studentId.substring(0, 4)}';
              final status = _statuses[studentId] ?? 'Present';

              return ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  backgroundColor: Colors.purple[50],
                  child: Text(name[0], style: GoogleFonts.outfit(color: Colors.purple, fontWeight: FontWeight.bold)),
                ),
                title: Text(name, style: GoogleFonts.outfit(fontWeight: FontWeight.w600)),
                trailing: InkWell(
                  onTap: () => _toggleStatus(studentId),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: status == 'Present' ? Colors.green[50] :
                             status == 'Absent' ? Colors.red[50] : Colors.orange[50],
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: status == 'Present' ? Colors.green :
                               status == 'Absent' ? Colors.red : Colors.orange,
                        width: 1,
                      ),
                    ),
                    child: Text(
                      status,
                      style: GoogleFonts.outfit(
                        color: status == 'Present' ? Colors.green :
                               status == 'Absent' ? Colors.red : Colors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // Batch submit or individual submit?
                // For simplicity, let's submit all current statuses
                for (var entry in _statuses.entries) {
                   context.read<EducationBloc>().add(EducationEvent.logAttendance(
                     batchId: widget.batchId,
                     studentId: entry.key,
                     date: _selectedDate,
                     status: entry.value,
                   ));
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              child: Text(
                'Save Attendance',
                style: GoogleFonts.outfit(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
