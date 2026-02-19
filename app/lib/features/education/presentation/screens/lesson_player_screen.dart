import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../../domain/education_models.dart';
import '../../data/education_repository.dart';
import 'package:app/shared/theme/app_colors.dart';

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
  YoutubePlayerController? _controller;
  bool _isPlayerReady = false;

  @override
  void initState() {
    super.initState();
    _currentLesson = widget.initialLesson;
    _initializePlayer();
  }

  void _initializePlayer() {
    final videoId = YoutubePlayer.convertUrlToId(_currentLesson.videoUrl);
    if (videoId != null) {
      _controller = YoutubePlayerController(
        initialVideoId: videoId,
        flags: const YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
          disableDragSeek: false,
          loop: false,
          isLive: false,
          forceHD: false,
          enableCaption: true,
        ),
      )..addListener(_listener);
    }
  }

  void _listener() {
    if (mounted && _isPlayerReady && _controller != null && !_controller!.value.isFullScreen) {
      setState(() {});
    }
  }

  @override
  void deactivate() {
    // Pauses video while navigating to next screen.
    _controller?.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller?.removeListener(_listener);
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_controller == null) {
        return Scaffold(
          appBar: AppBar(title: const Text('Invalid Video')),
          body: const Center(child: Text('This lesson does not have a valid YouTube URL.')),
        );
    }

    return YoutubePlayerBuilder(
      onExitFullScreen: () {
        // The player forces portraitUp after exiting fullscreen. This overrides it.
        SystemChrome.setPreferredOrientations(DeviceOrientation.values);
      },
      player: YoutubePlayer(
        controller: _controller!,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.red,
        onReady: () {
          _isPlayerReady = true;
        },
      ),
      builder: (context, player) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              // Video Player Area
              Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: player,
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
                                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFFF6B6B).withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Text(
                                    'LESSON ${_currentLesson.sequenceOrder}',
                                    style: const TextStyle(
                                      color: Color(0xFFFF6B6B),
                                      fontWeight: FontWeight.w900,
                                      fontSize: 10,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                ),
                                if (_isPlayerReady)
                                  Text(
                                    '${_controller!.metadata.duration.inMinutes}:${(_controller!.metadata.duration.inSeconds % 60).toString().padLeft(2, '0')} total',
                                    style: const TextStyle(color: Color(0xFF94A3B8), fontSize: 11, fontWeight: FontWeight.bold),
                                  ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            Text(
                              _currentLesson.title,
                              style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w900,
                                color: Color(0xFF0F172A),
                                letterSpacing: -0.5,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              _currentLesson.description ?? 'No description provided.',
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.slate,
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
                          itemCount: widget.course.lessons?.length ?? 0,
                          itemBuilder: (context, index) {
                            final lesson = widget.course.lessons![index];
                            final isSelected = lesson.id == _currentLesson.id;
                            return ListTile(
                              contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                              leading: Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: isSelected ? const Color(0xFFFF6B6B) : AppColors.grey50,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    '${lesson.sequenceOrder}',
                                    style: TextStyle(
                                      color: isSelected ? Colors.white : AppColors.slate,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              title: Text(
                                lesson.title,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                                  color: isSelected ? const Color(0xFF0F172A) : AppColors.slate,
                                ),
                              ),
                              trailing: Icon(
                                lesson.isCompleted ? Icons.check_circle : Icons.play_circle_outline,
                                color: lesson.isCompleted ? const Color(0xFF10B981) : AppColors.slate,
                                size: 18,
                              ),
                              onTap: () {
                                if (!isSelected) {
                                  _switchLesson(lesson);
                                }
                              },
                            );
                          },
                        ),
                      ),

                      // Action Button
                      Padding(
                        padding: const EdgeInsets.all(24),
                          child: ElevatedButton(
                            onPressed: () => _markComplete(context),
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
                              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 13, letterSpacing: 1),
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
      },
    );
  }

  void _switchLesson(Lesson lesson) {
    setState(() {
      _currentLesson = lesson;
      _isPlayerReady = false;
      final videoId = YoutubePlayer.convertUrlToId(lesson.videoUrl);
      if (videoId != null) {
        _controller?.load(videoId);
      }
    });
  }

  Future<void> _markComplete(BuildContext context) async {
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
            backgroundColor: AppColors.emerald,
          ),
        );
        // Find next lesson
        final lessons = widget.course.lessons ?? [];
        final currentIndex = lessons.indexWhere((l) => l.id == _currentLesson.id);
        if (currentIndex != -1 && currentIndex < lessons.length - 1) {
          _switchLesson(lessons[currentIndex + 1]);
        } else {
          Navigator.pop(context); // Go back if last lesson
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: $e'), backgroundColor: Colors.red),
        );
      }
    }
  }
}
