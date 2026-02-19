import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'bloc/review_bloc.dart';
import 'data/review_repository.dart';
import 'domain/review_model.dart';
import '../../core/network/api_client.dart';
import 'presentation/widgets/star_rating_widget.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class WriteReviewScreen extends StatefulWidget {
  final String bookingId;
  final Map<String, dynamic>? extra; // To pass artist details

  const WriteReviewScreen({super.key, required this.bookingId, this.extra});

  @override
  State<WriteReviewScreen> createState() => _WriteReviewScreenState();
}

class _WriteReviewScreenState extends State<WriteReviewScreen> {
  double _rating = 0;
  final TextEditingController _commentController = TextEditingController();
  final List<File> _selectedImages = [];
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _selectedImages.add(File(image.path));
      });
    }
  }

  void _submitReview() {
    if (_rating == 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select a star rating')),
      );
      return;
    }

    final artistId = widget.extra?['artistId'] ?? 'unknown_artist';
    
    // Get current user from AuthBloc
    final authState = context.read<AuthBloc>().state;
    final user = authState.maybeWhen(
      authenticated: (u) => u,
      orElse: () => null,
    );

    if (user == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('You must be logged in to submit a review')),
      );
      return;
    }

    final review = ReviewModel(
         id: '',
         bookingId: widget.bookingId,
         artistId: artistId,
         userId: user.id, 
         userName: user.fullName,
         userAvatar: user.profileImage,
         rating: _rating,
         comment: _commentController.text,
         timestamp: DateTime.now(),
         images: [], // Images are handled by the Bloc upload logic
    );

    context.read<ReviewBloc>().add(ReviewEvent.submitReview(review, _selectedImages));
    }

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReviewBloc(repository: ReviewRepository(ApiClient())),
      child: BlocConsumer<ReviewBloc, ReviewState>(
        listener: (context, state) {
          state.maybeWhen(
            success: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Review submitted successfully!'), backgroundColor: AppColors.success),
              );
              context.pop();
            },
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message), backgroundColor: AppColors.error),
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.white,
            appBar: AppBar(
              title: const Text('Write a Review'),
              backgroundColor: AppColors.primary,
              foregroundColor: AppColors.white,
            ),
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(AppSpacing.screenPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (widget.extra != null && widget.extra!.containsKey('artistName')) ...[
                     Row(
                      children: [
                         if (widget.extra!['artistImage'] != null)
                           CircleAvatar(
                            backgroundImage: NetworkImage(widget.extra!['artistImage']),
                            radius: 30,
                          ),
                          if (widget.extra!['artistImage'] != null)
                            const SizedBox(width: AppSpacing.md),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Rate your experience with', style: AppTypography.bodySmall),
                              Text(widget.extra!['artistName'], style: AppTypography.titleMedium),
                            ],
                          ),
                      ],
                    ),
                    const SizedBox(height: AppSpacing.xl),
                  ],

                  Center(
                    child: StarRatingWidget(
                      rating: _rating,
                      size: 40,
                      isInteractive: true,
                      onRatingChanged: (rating) => setState(() => _rating = rating),
                    ),
                  ),
                  const Center(child: Text('Tap to Rate', style: TextStyle(color: Colors.grey))),
                  const SizedBox(height: AppSpacing.xl),
                  
                  Text('Write a comment', style: AppTypography.titleMedium),
                  const SizedBox(height: AppSpacing.sm),
                  TextField(
                    controller: _commentController,
                    maxLines: 4,
                    decoration: const InputDecoration(
                      hintText: 'Share your experience...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  
                  const SizedBox(height: AppSpacing.lg),

                  // Image Picker
                  Text('Add Photos', style: AppTypography.titleSmall),
                  const SizedBox(height: AppSpacing.sm),
                  SizedBox(
                    height: 80,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _selectedImages.length + 1,
                      itemBuilder: (context, index) {
                        if (index == _selectedImages.length) {
                          return GestureDetector(
                            onTap: _pickImage,
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(Icons.add_a_photo, color: Colors.grey),
                            ),
                          );
                        }
                        return Container(
                          margin: const EdgeInsets.only(right: 8),
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: FileImage(_selectedImages[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: AppSpacing.xxl),
                  
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: state.maybeWhen(
                        submitting: () => null,
                        orElse: () => _submitReview,
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      child: state.maybeWhen(
                        submitting: () => const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2),
                        ),
                        orElse: () => const Text('Submit Review'),
                      ),
                    ),
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
