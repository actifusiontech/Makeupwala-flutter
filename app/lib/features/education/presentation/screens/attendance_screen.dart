import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../data/education_repository.dart';
import 'package:intl/intl.dart';

class AttendanceScreen extends StatefulWidget {
  final String batchId;
  final String batchName;

  const AttendanceScreen({Key? key, required this.batchId, required this.batchName}) : super(key: key);

  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  // Mock Students
  final List<Map<String, dynamic>> students = [
    {'id': 's1', 'name': 'Alice Johnson', 'status': 'Present', 'avatar': 'A'},
    {'id': 's2', 'name': 'Bob Smith', 'status': 'Present', 'avatar': 'B'},
    {'id': 's3', 'name': 'Charlie Brown', 'status': 'Absent', 'avatar': 'C'},
    {'id': 's4', 'name': 'Diana Ross', 'status': 'Present', 'avatar': 'D'},
    {'id': 's5', 'name': 'Evan Wright', 'status': 'Late', 'avatar': 'E'},
  ];

  void _toggleStatus(int index) {
    setState(() {
      final current = students[index]['status'];
      if (current == 'Present') students[index]['status'] = 'Absent';
      else if (current == 'Absent') students[index]['status'] = 'Late';
      else students[index]['status'] = 'Present';
    });
  }

  void _scanQR() {
    // Mock QR Scan
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Simulating QR Scan... Student "Alice Johnson" marked Present.')),
    );
    setState(() {
      students[0]['status'] = 'Present';
    });
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
              widget.batchName,
              style: GoogleFonts.outfit(color: Colors.grey[600], fontSize: 12),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            onPressed: _scanQR,
            icon: const Icon(Icons.qr_code_scanner, color: Colors.purple),
            tooltip: 'Scan Student QR',
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: students.length,
              separatorBuilder: (_, __) => const Divider(height: 1),
              itemBuilder: (context, index) {
                final student = students[index];
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey[100],
                    child: Text(student['avatar'], style: GoogleFonts.outfit(color: Colors.black, fontWeight: FontWeight.bold)),
                  ),
                  title: Text(student['name'], style: GoogleFonts.outfit(fontWeight: FontWeight.w600)),
                  trailing: InkWell(
                    onTap: () => _toggleStatus(index),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: student['status'] == 'Present' ? Colors.green[50] :
                               student['status'] == 'Absent' ? Colors.red[50] : Colors.orange[50],
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: student['status'] == 'Present' ? Colors.green :
                                 student['status'] == 'Absent' ? Colors.red : Colors.orange,
                          width: 1,
                        ),
                      ),
                      child: Text(
                        student['status'],
                        style: GoogleFonts.outfit(
                          color: student['status'] == 'Present' ? Colors.green :
                                 student['status'] == 'Absent' ? Colors.red : Colors.orange,
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
                onPressed: () async {
                  try {
                    final repository = Provider.of<EducationRepository>(context, listen: false);
                    final today = DateFormat('yyyy-MM-dd').format(DateTime.now());

                    final logs = students.map((s) => {
                      'batch_id': widget.batchId,
                      'student_id': s['id'],
                      'date': today,
                      'status': s['status'].toString().toUpperCase(),
                    }).toList();

                    await repository.markAttendance(widget.batchId, logs);

                    if (mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Attendance Saved Successfully!')),
                      );
                      Navigator.pop(context);
                    }
                  } catch (e) {
                    if (mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Error: $e')),
                      );
                    }
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
      ),
    );
  }
}
