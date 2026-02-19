import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'bloc/chat_bloc.dart';
import 'data/chat_repository.dart';
import 'domain/chat_message.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatBloc(repository: ChatRepository())..add(const ChatEvent.fetchConversations()),
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
              conversationsLoaded: (conversations) {
                if (conversations.isEmpty) {
                  return const Center(child: Text('No conversations yet.'));
                }
                return ListView.builder(
                  itemCount: conversations.length,
                  itemBuilder: (context, index) {
                    final conversation = conversations[index];
                    final otherName = conversation.userName;
                    final otherImage = conversation.userAvatar;
                    final lastMessage = conversation.lastMessage ?? '';
                    // Format time nicely
                    // final time = ... 

                    return ListTile(
                      leading: CircleAvatar(
                        backgroundColor: AppColors.primary,
                        backgroundImage: otherImage != null && otherImage.isNotEmpty ? NetworkImage(otherImage) : null,
                        child: (otherImage == null || otherImage.isEmpty) 
                            ? Text(otherName.isNotEmpty ? otherName[0].toUpperCase() : '?') 
                            : null,
                      ),
                      title: Text(otherName, style: AppTypography.titleMedium),
                      subtitle: Text(
                        lastMessage, 
                        maxLines: 1, 
                        overflow: TextOverflow.ellipsis,
                        style: conversation.unreadCount > 0 
                            ? AppTypography.bodySmall.copyWith(fontWeight: FontWeight.bold, color: AppColors.textPrimary)
                            : AppTypography.bodySmall,
                      ),
                      trailing: conversation.unreadCount > 0 
                          ? CircleAvatar(
                              radius: 10,
                              backgroundColor: AppColors.primary,
                              child: Text(
                                '${conversation.unreadCount}', 
                                style: const TextStyle(fontSize: 10, color: Colors.white),
                              ),
                            )
                          : null,
                      onTap: () {
                        // Pass userId as roomId for now since we changed router meaning
                        context.push('/chat/${conversation.userId}');
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
