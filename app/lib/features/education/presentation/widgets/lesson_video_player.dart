import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LessonVideoPlayer extends StatefulWidget {
  final String videoUrl;
  final String lessonId;
  final Function(Duration)? onProgressUpdate;
  final Function()? onCompleted;

  const LessonVideoPlayer({
    super.key,
    required this.videoUrl,
    required this.lessonId,
    this.onProgressUpdate,
    this.onCompleted,
  });

  @override
  State<LessonVideoPlayer> createState() => _LessonVideoPlayerState();
}

class _LessonVideoPlayerState extends State<LessonVideoPlayer> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;
  final _storage = const FlutterSecureStorage();
  bool _isInitialized = false;
  Duration? _savedPosition;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  Future<void> _initializePlayer() async {
    try {
      // Load saved progress
      final savedProgress = await _storage.read(key: 'lesson_progress_${widget.lessonId}');
      if (savedProgress != null) {
        _savedPosition = Duration(seconds: int.parse(savedProgress));
      }

      // Initialize video player
      _videoPlayerController = VideoPlayerController.networkUrl(
        Uri.parse(widget.videoUrl),
      );

      await _videoPlayerController.initialize();

      // Seek to saved position
      if (_savedPosition != null) {
        await _videoPlayerController.seekTo(_savedPosition!);
      }

      // Initialize Chewie
      _chewieController = ChewieController(
        videoPlayerController: _videoPlayerController,
        autoPlay: false,
        looping: false,
        allowFullScreen: true,
        allowMuting: true,
        showControls: true,
        placeholder: Container(
          color: Colors.black,
          child: const Center(
            child: CircularProgressIndicator(color: Colors.white),
          ),
        ),
        errorBuilder: (context, errorMessage) {
          return Center(
            child: Text(
              'Error: $errorMessage',
              style: const TextStyle(color: Colors.white),
            ),
          );
        },
      );

      // Listen to position changes
      _videoPlayerController.addListener(_onVideoProgress);

      setState(() {
        _isInitialized = true;
      });
    } catch (e) {
      debugPrint('Error initializing video player: $e');
    }
  }

  void _onVideoProgress() {
    final position = _videoPlayerController.value.position;
    final duration = _videoPlayerController.value.duration;

    // Save progress every 5 seconds
    if (position.inSeconds % 5 == 0) {
      _saveProgress(position);
      widget.onProgressUpdate?.call(position);
    }

    // Check if video completed
    if (position >= duration && duration.inSeconds > 0) {
      widget.onCompleted?.call();
    }
  }

  Future<void> _saveProgress(Duration position) async {
    await _storage.write(
      key: 'lesson_progress_${widget.lessonId}',
      value: position.inSeconds.toString(),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.removeListener(_onVideoProgress);
    _videoPlayerController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isInitialized || _chewieController == null) {
      return Container(
        width: double.infinity,
        height: 240,
        color: Colors.black,
        child: const Center(
          child: CircularProgressIndicator(color: Colors.white),
        ),
      );
    }

    return AspectRatio(
      aspectRatio: _videoPlayerController.value.aspectRatio,
      child: Chewie(controller: _chewieController!),
    );
  }
}
