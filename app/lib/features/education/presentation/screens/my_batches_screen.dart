import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../data/education_repository.dart';

class MyBatchesScreen extends StatefulWidget {
  const MyBatchesScreen({Key? key}) : super(key: key);

  @override
  State<MyBatchesScreen> createState() => _MyBatchesScreenState();
}

class _MyBatchesScreenState extends State<MyBatchesScreen> {
  List<Map<String, dynamic>> batches = [];
  bool isLoading = true;
  String? error;

  @override
  void initState() {
    super.initState();
    _loadBatches();
  }

  Future<void> _loadBatches() async {
    try {
      setState(() {
        isLoading = true;
        error = null;
      });

      // TODO: Get instituteId from user profile/context
      // For now using a placeholder - this should come from auth state
      final instituteId = 'YOUR_INSTITUTE_ID'; // Replace with actual institute ID
      
      final repository = Provider.of<EducationRepository>(context, listen: false);
      final batchList = await repository.getBatches(instituteId);

      setState(() {
        batches = batchList.map((batch) => {
          'id': batch.id,
          'name': batch.name,
          'course': batch.courseId ?? 'General',
          'schedule': '10:00 AM - 1:00 PM', // TODO: Add schedule to Batch model
          'students': batch.students?.length ?? 0,
          'nextClass': 'Today', // TODO: Calculate from schedule
        }).toList();
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        error = e.toString();
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text(
          'My Classes',
          style: GoogleFonts.outfit(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : error != null
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.error_outline, size: 48, color: Colors.red),
                      const SizedBox(height: 16),
                      Text('Error: $error'),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: _loadBatches,
                        child: const Text('Retry'),
                      ),
                    ],
                  ),
                )
              : batches.isEmpty
                  ? const Center(child: Text('No batches found'))
                  : ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: batches.length,
        separatorBuilder: (_, __) => const SizedBox(height: 16),
        itemBuilder: (context, index) {
          final batch = batches[index];
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Expanded(
                         child: Text(
                           batch['name'],
                           style: GoogleFonts.outfit(
                             fontSize: 18,
                             fontWeight: FontWeight.bold,
                             color: Colors.black,
                           ),
                         ),
                       ),
                       Container(
                         padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                         decoration: BoxDecoration(
                           color: Colors.green.withOpacity(0.1),
                           borderRadius: BorderRadius.circular(8),
                         ),
                         child: Text(
                           batch['nextClass'],
                           style: GoogleFonts.outfit(
                             fontSize: 12,
                             fontWeight: FontWeight.bold,
                             color: Colors.green,
                           ),
                         ),
                       ),
                     ],
                   ),
                   const SizedBox(height: 4),
                   Text(
                     batch['course'],
                     style: GoogleFonts.outfit(
                       fontSize: 14,
                       color: Colors.grey[600],
                     ),
                   ),
                   const SizedBox(height: 16),
                   Row(
                     children: [
                       Icon(Icons.schedule, size: 16, color: Colors.grey[400]),
                       const SizedBox(width: 4),
                       Text(
                         batch['schedule'],
                         style: GoogleFonts.outfit(
                           fontSize: 14,
                           fontWeight: FontWeight.w500,
                           color: Colors.grey[800],
                         ),
                       ),
                       const Spacer(),
                       Icon(Icons.people, size: 16, color: Colors.grey[400]),
                       const SizedBox(width: 4),
                       Text(
                         '${batch['students']} Students',
                         style: GoogleFonts.outfit(
                           fontSize: 14,
                           fontWeight: FontWeight.w500,
                           color: Colors.grey[800],
                         ),
                       ),
                     ],
                   ),
                   const Padding(
                     padding: EdgeInsets.symmetric(vertical: 16),
                     child: Divider(height: 1),
                   ),
                   Row(
                     children: [
                       Expanded(
                         child: ElevatedButton.icon(
                           onPressed: () {
                             ScaffoldMessenger.of(context).showSnackBar(
                               const SnackBar(content: Text('Opening Attendance Sheet...')),
                             );
                             // Navigate to Attendance Screen
                           },
                           icon: const Icon(Icons.check_circle_outline, size: 18),
                           label: const Text('Attendance'),
                           style: ElevatedButton.styleFrom(
                             backgroundColor: Colors.black,
                             foregroundColor: Colors.white,
                             elevation: 0,
                             padding: const EdgeInsets.symmetric(vertical: 12),
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(12),
                             ),
                           ),
                         ),
                       ),
                       const SizedBox(width: 12),
                       Expanded(
                         child: OutlinedButton.icon(
                           onPressed: () {},
                           icon: const Icon(Icons.list_alt, size: 18),
                           label: const Text('Students'),
                           style: OutlinedButton.styleFrom(
                             foregroundColor: Colors.black,
                             side: const BorderSide(color: Colors.black12),
                             padding: const EdgeInsets.symmetric(vertical: 12),
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(12),
                             ),
                           ),
                         ),
                       ),
                     ],
                   ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
