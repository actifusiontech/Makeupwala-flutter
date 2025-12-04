import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/chat_repository.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ChatRepository _repository;
  Timer? _pollingTimer;

  ChatBloc({ChatRepository? repository})
      : _repository = repository ?? ChatRepository(),
        super(const ChatState.initial()) {
    on<ChatEvent>((event, emit) async {
      await event.when(
        fetchRooms: () => _onFetchRooms(emit),
        fetchMessages: (roomId) => _onFetchMessages(roomId, emit),
        sendMessage: (roomId, text) => _onSendMessage(roomId, text, emit),
        startPolling: (roomId) => _onStartPolling(roomId, emit),
        stopPolling: () => _onStopPolling(emit),
      );
    });
  }

  @override
  Future<void> close() {
    _pollingTimer?.cancel();
    return super.close();
  }

  Future<void> _onFetchRooms(Emitter<ChatState> emit) async {
    emit(const ChatState.loading());
    try {
      final rooms = await _repository.getMyRooms();
      emit(ChatState.roomsLoaded(rooms: rooms));
    } catch (e) {
      emit(ChatState.error(message: e.toString()));
    }
  }

  Future<void> _onFetchMessages(String roomId, Emitter<ChatState> emit) async {
    // Don't emit loading if we already have messages (polling)
    if (state is! _MessagesLoaded) {
      emit(const ChatState.loading());
    }
    try {
      final messages = await _repository.getMessages(roomId);
      emit(ChatState.messagesLoaded(messages: messages));
    } catch (e) {
      // Don't emit error on polling failure to avoid UI flicker
      if (state is! _MessagesLoaded) {
        emit(ChatState.error(message: e.toString()));
      }
    }
  }

  Future<void> _onSendMessage(String roomId, String text, Emitter<ChatState> emit) async {
    try {
      await _repository.sendMessage(roomId, text);
      // Refresh messages immediately
      add(ChatEvent.fetchMessages(roomId: roomId));
    } catch (e) {
      emit(ChatState.error(message: 'Failed to send message: $e'));
    }
  }

  Future<void> _onStartPolling(String roomId, Emitter<ChatState> emit) async {
    _pollingTimer?.cancel();
    _pollingTimer = Timer.periodic(const Duration(seconds: 3), (_) {
      add(ChatEvent.fetchMessages(roomId: roomId));
    });
  }

  Future<void> _onStopPolling(Emitter<ChatState> emit) async {
    _pollingTimer?.cancel();
  }
}
