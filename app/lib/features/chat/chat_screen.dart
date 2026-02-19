import 'package:app/features/auth/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'bloc/chat_bloc.dart';
import 'data/chat_repository.dart';
import 'package:app/features/auth/bloc/auth_bloc.dart';
import 'domain/chat_message.dart';

class ChatScreen extends StatefulWidget {
  final String roomId; // This is actually otherUserId now

  const ChatScreen({super.key, required this.roomId});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _messageController = TextEditingController();
  late ChatBloc _chatBloc;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _chatBloc = ChatBloc(repository: ChatRepository())
      ..add(ChatEvent.fetchMessages(otherUserId: widget.roomId))
      ..add(ChatEvent.markAsRead(otherUserId: widget.roomId)); // Mark as read on enter
  }

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    _chatBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // 1. Get Current User ID from AuthBloc
    final authState = context.read<AuthBloc>().state;
    String? currentUserId;
    authState.whenOrNull(
      authenticated: (user) => currentUserId = user.id,
    );

    return BlocProvider.value(
      value: _chatBloc,
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          title: const Text('Chat'),
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.white,
        ),
        body: Column(
          children: [
            Expanded(
              child: BlocConsumer<ChatBloc, ChatState>(
                listener: (context, state) {
                  state.maybeWhen(
                    messagesLoaded: (_) {
                      // Scroll to bottom on new messages
                      // checking if attached to avoid errors
                      if (_scrollController.hasClients) {
                        _scrollController.animateTo(
                          0, // Reverse list, so 0 is bottom
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeOut,
                        );
                      }
                    },
                    orElse: () {},
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    loading: () => const Center(child: CircularProgressIndicator()),
                    messagesLoaded: (messages) {
                      if (messages.isEmpty) {
                        return const Center(child: Text('No messages yet.'));
                      }
                      return ListView.builder(
                        controller: _scrollController,
                        reverse: true, // Show newest at bottom
                        itemCount: messages.length,
                        itemBuilder: (context, index) {
                          final message = messages[index];
                          final isMe = currentUserId != null && message.senderId == currentUserId;
                          
                          return Align(
                            alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                              padding: const EdgeInsets.all(12),
                              constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.7),
                              decoration: BoxDecoration(
                                color: isMe ? AppColors.primary : Colors.grey[200],
                                borderRadius: BorderRadius.only(
                                  topLeft: const Radius.circular(12),
                                  topRight: const Radius.circular(12),
                                  bottomLeft: isMe ? const Radius.circular(12) : Radius.zero,
                                  bottomRight: isMe ? Radius.zero : const Radius.circular(12),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (message.imageUrl != null && message.imageUrl!.isNotEmpty)
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 8.0),
                                      child: Image.network(
                                        message.imageUrl!,
                                        loadingBuilder: (context, child, loadingProgress) {
                                          if (loadingProgress == null) return child;
                                          return const CircularProgressIndicator();
                                        },
                                      ),
                                    ),
                                  if (message.text.isNotEmpty)
                                    Text(
                                      message.text,
                                      style: TextStyle(color: isMe ? Colors.white : Colors.black),
                                    ),
                                  const SizedBox(height: 4),
                                  Text(
                                    _formatTime(message.timestamp),
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: isMe ? Colors.white70 : Colors.grey[600],
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _messageController,
                      decoration: const InputDecoration(
                        hintText: 'Type a message...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24)),
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      ),
                      onSubmitted: (_) => _sendMessage(currentUserId),
                    ),
                  ),
                  const SizedBox(width: 8),
                  // TODO: Add image picker button here
                  IconButton(
                    icon: const Icon(Icons.send, color: AppColors.primary),
                    onPressed: () => _sendMessage(currentUserId),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _sendMessage(String? currentUserId) {
    if (_messageController.text.isNotEmpty && currentUserId != null) {
      _chatBloc.add(ChatEvent.sendMessage(
        receiverId: widget.roomId, // widget.roomId is actually otherUserId
        text: _messageController.text,
      ));
      _messageController.clear();
    }
  }

  String _formatTime(DateTime time) {
    return '${time.hour}:${time.minute.toString().padLeft(2, '0')}';
  }
}
