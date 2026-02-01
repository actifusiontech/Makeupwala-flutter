import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'bloc/chat_bloc.dart';
import 'data/chat_repository.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatBloc(repository: ChatRepository())..add(const ChatEvent.fetchRooms()),
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          title: const Text('Messages'),
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.white,
        ),
        body: BlocBuilder<ChatBloc, ChatState>(
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => const Center(child: CircularProgressIndicator()),
              roomsLoaded: (rooms) {
                if (rooms.isEmpty) {
                  return const Center(child: Text('No conversations yet.'));
                }
                return ListView.builder(
                  itemCount: rooms.length,
                  itemBuilder: (context, index) {
                    final room = rooms[index];
                      final otherName = room['other_user_name'] ?? 'User';
                      final otherImage = room['other_user_avatar'];

                      return ListTile(
                        leading: CircleAvatar(
                          backgroundColor: AppColors.primary,
                          backgroundImage: otherImage != null && otherImage.isNotEmpty ? NetworkImage(otherImage) : null,
                          child: (otherImage == null || otherImage.isEmpty) 
                              ? Text(otherName.isNotEmpty ? otherName[0].toUpperCase() : '?') 
                              : null,
                        ),
                        title: Text(otherName),
                        subtitle: Text('Last updated: ${room['updated_at']}'),
                      onTap: () {
                        context.push('/chat/${room['id']}');
                      },
                    );
                  },
                );
              },
              error: (message) => Center(child: Text('Error: $message')),
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }
}
