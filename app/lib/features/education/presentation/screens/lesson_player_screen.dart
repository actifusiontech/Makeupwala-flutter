import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../domain/education_models.dart';
import '../../data/education_repository.dart';

class LessonPlayerScreen extends StatefulWidget {
  final Course course;
  final Enrollment enrollment;
  final Lesson initialLesson;

  const LessonPlayerScreen({
    super.key,
    required this.course,
    required this.enrollment,
    required this.initialLesson,
  });

  @override
  State<LessonPlayerScreen> createState() => _LessonPlayerScreenState();
}

class _LessonPlayerScreenState extends State<LessonPlayerScreen> {
  late Lesson _currentLesson;

  @override
  void initState() {
    super.initState();
    _currentLesson = widget.initialLesson;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          // Video Player Placeholder
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 240,
                color: Colors.black,
                child: const Center(
                  child: Icon(Icons.play_circle_fill, size: 64, color: Colors.white70),
                ),
              ),
              Positioned(
                top: 50,
                left: 20,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ],
          ),

          // Content
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
              ),
              child: Column(
                children: [
                   // Current Lesson Info
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10, py: 4),
                              decoration: BoxDecoration(
                                color: const Color(0xFFFF6B6B).withOpacity(0.1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                'LESSON ${_currentLesson.sequenceOrder}',
                                style: const TextStyle(
                                  color: Color(0xFFFF6B6B),
                                  fontWeight: FontWeight.black,
                                  fontSize: 10,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                            const Text(
                              '12:45 total',
                              style: TextStyle(color: Color(0xFF94A3B8), fontSize: 11, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Text(
                          _currentLesson.title,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.black,
                            color: Color(0xFF0F172A),
                            letterSpacing: -0.5,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          _currentLesson.description ?? 'No description provided.',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.slate.shade600,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const Divider(height: 1, color: Color(0xFFF1F5F9)),

                  // Curriculum List
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      itemCount: widget.course.lessons?.length ?? 5,
                      itemBuilder: (context, index) {
                        final isSelected = index + 1 == _currentLesson.sequenceOrder;
                        return ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                          leading: Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              color: isSelected ? const Color(0xFFFF6B6B) : Colors.slate.shade50,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                '${index + 1}',
                                style: TextStyle(
                                  color: isSelected ? Colors.white : Colors.slate.shade400,
                                  fontWeight: FontWeight.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          title: Text(
                            'Lesson ${index + 1}: Professional Workflow',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: isSelected ? FontWeight.bold : FontWeight.medium,
                              color: isSelected ? const Color(0xFF0F172A) : Colors.slate.shade600,
                            ),
                          ),
                          trailing: Icon(
                            index == 0 ? Icons.check_circle : Icons.play_circle_outline,
                            color: index == 0 ? const Color(0xFF10B981) : Colors.slate.shade300,
                            size: 18,
                          ),
                        );
                      },
                    ),
                  ),

                  // Action Button
                  Padding(
                    padding: const EdgeInsets.all(24),
                      child: ElevatedButton(
                        onPressed: () async {
                          try {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Marking lesson as complete...')),
                            );
                            
                            await context.read<EducationRepository>().completeLesson(
                                widget.enrollment.id, 
                                _currentLesson.id
                            );

                            if (mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Lesson Completed!'),
                                  backgroundColor: Colors.emerald,
                                ),
                              );
                              Navigator.pop(context); // Go back to classroom
                            }
                          } catch (e) {
                            if (mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Error: $e'), backgroundColor: Colors.red),
                              );
                            }
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF0F172A),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 18),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 0,
                        ),
                        child: const Text(
                          'COMPLETE & CONTINUE',
                          style: TextStyle(fontWeight: FontWeight.black, fontSize: 13, letterSpacing: 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
