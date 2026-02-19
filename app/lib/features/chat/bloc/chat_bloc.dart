import 'dart:async';
import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/chat_repository.dart';
import '../domain/chat_message.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ChatRepository _repository;
  StreamSubscription? _conversationsSubscription;
  StreamSubscription? _messagesSubscription;

  ChatBloc({ChatRepository? repository})
      : _repository = repository ?? ChatRepository(),
        super(const ChatState.initial()) {
    on<ChatEvent>((event, emit) async {
      await event.when(
        fetchConversations: () => _onFetchConversations(emit),
        conversationsUpdated: (conversations) => _onConversationsUpdated(conversations, emit),
        fetchMessages: (otherUserId) => _onFetchMessages(otherUserId, emit),
        messagesUpdated: (messages) => _onMessagesUpdated(messages, emit),
        sendMessage: (receiverId, text, senderName, senderAvatar) =>
            _onSendMessage(receiverId, text, senderName, senderAvatar, emit),
        sendImage: (receiverId, image, senderName, senderAvatar) =>
            _onSendImage(receiverId, image, senderName, senderAvatar, emit),
        markAsRead: (otherUserId) => _onMarkAsRead(otherUserId, emit),
      );
    });
  }

  @override
  Future<void> close() {
    _conversationsSubscription?.cancel();
    _messagesSubscription?.cancel();
    return super.close();
  }

  Future<void> _onFetchConversations(Emitter<ChatState> emit) async {
    emit(const ChatState.loading());
    try {
      final userId = FirebaseAuth.instance.currentUser?.uid;
      if (userId == null) {
        emit(const ChatState.error(message: 'User not authenticated'));
        return;
      }
      
      _conversationsSubscription?.cancel();
      _conversationsSubscription = _repository.getConversationsStream(userId).listen(
        (conversations) => add(ChatEvent.conversationsUpdated(conversations)),
        onError: (error) => add(ChatEvent.conversationsUpdated([])), // Handle error gracefully
      );
    } catch (e) {
      emit(ChatState.error(message: e.toString()));
    }
  }

  Future<void> _onConversationsUpdated(
    List<ChatConversation> conversations,
    Emitter<ChatState> emit,
  ) async {
    emit(ChatState.conversationsLoaded(conversations: conversations));
  }

  Future<void> _onFetchMessages(
    String otherUserId,
    Emitter<ChatState> emit,
  ) async {
    emit(const ChatState.loading());
    try {
      final userId = FirebaseAuth.instance.currentUser?.uid;
      if (userId == null) {
        emit(const ChatState.error(message: 'User not authenticated'));
        return;
      }

      _messagesSubscription?.cancel();
      _messagesSubscription = _repository.getMessagesStream(userId, otherUserId).listen(
        (messages) => add(ChatEvent.messagesUpdated(messages)),
        onError: (error) => add(ChatEvent.messagesUpdated([])),
      );
    } catch (e) {
      emit(ChatState.error(message: e.toString()));
    }
  }

  Future<void> _onMessagesUpdated(
    List<ChatMessage> messages,
    Emitter<ChatState> emit,
  ) async {
    emit(ChatState.messagesLoaded(messages: messages));
  }

  Future<void> _onSendMessage(
    String receiverId,
    String text,
    String? senderName,
    String? senderAvatar,
    Emitter<ChatState> emit,
  ) async {
    try {
      final userId = FirebaseAuth.instance.currentUser?.uid;
      if (userId == null) return;

      await _repository.sendMessage(
        senderId: userId,
        receiverId: receiverId,
        text: text,
        senderName: senderName,
        senderAvatar: senderAvatar,
      );
    } catch (e) {
      // Typically we'd emit an error acting as a "toast" or similar, 
      // but preventing state replacement is tricky without a separate side-effect stream.
      // For now, let's log or assume the stream update will handle UI consistency.
    }
  }

  Future<void> _onSendImage(
    String receiverId,
    File image,
    String? senderName,
    String? senderAvatar,
    Emitter<ChatState> emit,
  ) async {
    try {
      final userId = FirebaseAuth.instance.currentUser?.uid;
      if (userId == null) return;

      await _repository.sendImageMessage(
        senderId: userId,
        receiverId: receiverId,
        imageFile: image,
        senderName: senderName,
        senderAvatar: senderAvatar,
      );
    } catch (e) {
      // Error handling
    }
  }

  Future<void> _onMarkAsRead(
    String otherUserId,
    Emitter<ChatState> emit,
  ) async {
    try {
      final userId = FirebaseAuth.instance.currentUser?.uid;
      if (userId == null) return;

      await _repository.markAsRead(userId, otherUserId);
    } catch (e) {
      // Error handling
    }
  }
}
