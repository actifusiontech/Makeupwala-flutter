import 'dart:async';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';
import '../domain/chat_message.dart';
import '../../../core/services/logging_service.dart';

class ChatRepository {
  final FirebaseDatabase _database = FirebaseDatabase.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;
  final LoggingService _logger = LoggingService();

  /// Send a text message
  Future<void> sendMessage({
    required String senderId,
    required String receiverId,
    required String text,
    String? senderName,
    String? senderAvatar,
  }) async {
    try {
      final chatId = _getChatId(senderId, receiverId);
      final messageRef = _database.ref('chats/$chatId/messages').push();
      
      final message = ChatMessage(
        id: messageRef.key!,
        senderId: senderId,
        receiverId: receiverId,
        text: text,
        timestamp: DateTime.now(),
        senderName: senderName,
        senderAvatar: senderAvatar,
      );

      await messageRef.set(message.toJson());
      
      // Update last message in conversation
      await _updateConversation(chatId, senderId, receiverId, text);
      
      _logger.info('Message sent: $chatId');
    } catch (e, stackTrace) {
      _logger.error('Failed to send message', e, stackTrace);
      rethrow;
    }
  }

  /// Send an image message
  Future<void> sendImageMessage({
    required String senderId,
    required String receiverId,
    required File imageFile,
    String? senderName,
    String? senderAvatar,
  }) async {
    try {
      // Upload image to Firebase Storage
      final imageUrl = await uploadImage(imageFile, senderId);
      
      final chatId = _getChatId(senderId, receiverId);
      final messageRef = _database.ref('chats/$chatId/messages').push();
      
      final message = ChatMessage(
        id: messageRef.key!,
        senderId: senderId,
        receiverId: receiverId,
        text: '',
        imageUrl: imageUrl,
        timestamp: DateTime.now(),
        type: 'image',
        senderName: senderName,
        senderAvatar: senderAvatar,
      );

      await messageRef.set(message.toJson());
      await _updateConversation(chatId, senderId, receiverId, '📷 Image');
      
      _logger.info('Image message sent: $chatId');
    } catch (e, stackTrace) {
      _logger.error('Failed to send image message', e, stackTrace);
      rethrow;
    }
  }

  /// Get messages stream for a conversation
  Stream<List<ChatMessage>> getMessagesStream(String userId, String otherUserId) {
    final chatId = _getChatId(userId, otherUserId);
    
    return _database
        .ref('chats/$chatId/messages')
        .orderByChild('timestamp')
        .onValue
        .map((event) {
      if (event.snapshot.value == null) return <ChatMessage>[];
      
      final messagesMap = event.snapshot.value as Map<dynamic, dynamic>;
      final messages = messagesMap.entries.map((entry) {
        final data = Map<String, dynamic>.from(entry.value as Map);
        data['id'] = entry.key;
        // Convert timestamp if it's a number (Firebase stores dates as strings mostly, but good to handle)
        if (data['timestamp'] is int) {
          data['timestamp'] = DateTime.fromMillisecondsSinceEpoch(data['timestamp']).toIso8601String();
        }
        return ChatMessage.fromJson(data);
      }).toList();
      
      // Sort by timestamp descending (newest first)
      messages.sort((a, b) => b.timestamp.compareTo(a.timestamp));
      
      return messages;
    });
  }

  /// Mark messages as read
  Future<void> markAsRead(String userId, String otherUserId) async {
    try {
      final chatId = _getChatId(userId, otherUserId);
      final messagesRef = _database.ref('chats/$chatId/messages');
      
      final snapshot = await messagesRef
          .orderByChild('receiverId')
          .equalTo(userId)
          .once();
      
      if (snapshot.snapshot.value != null) {
        final updates = <String, dynamic>{};
        final messagesMap = snapshot.snapshot.value as Map<dynamic, dynamic>;
        
        messagesMap.forEach((key, value) {
          final message = Map<String, dynamic>.from(value as Map);
          if (message['isRead'] != true) {
            updates['$key/isRead'] = true;
          }
        });
        
        if (updates.isNotEmpty) {
          await messagesRef.update(updates);
        }
      }
      
      // Also reset unread count
      await resetUnreadCount(userId, otherUserId);
      
      _logger.debug('Messages marked as read: $chatId');
    } catch (e, stackTrace) {
      _logger.error('Failed to mark messages as read', e, stackTrace);
    }
  }

  /// Get conversations stream
  Stream<List<ChatConversation>> getConversationsStream(String userId) {
    return _database
        .ref('conversations/$userId')
        .onValue
        .map((event) {
      if (event.snapshot.value == null) return <ChatConversation>[];
      
      final conversationsMap = event.snapshot.value as Map<dynamic, dynamic>;
      final conversations = conversationsMap.entries.map((entry) {
        final data = Map<String, dynamic>.from(entry.value as Map);
        data['id'] = entry.key;
        if (data['lastMessageTime'] is int) {
          data['lastMessageTime'] = DateTime.fromMillisecondsSinceEpoch(data['lastMessageTime']).toIso8601String();
        }
        return ChatConversation.fromJson(data);
      }).toList();
      
      // Sort by last message time descending
      conversations.sort((a, b) {
        if (a.lastMessageTime == null) return 1;
        if (b.lastMessageTime == null) return -1;
        return b.lastMessageTime!.compareTo(a.lastMessageTime!);
      });
      
      return conversations;
    });
  }

  /// Upload image to Firebase Storage
  Future<String> uploadImage(File imageFile, String userId) async {
    try {
      final timestamp = DateTime.now().millisecondsSinceEpoch;
      final ref = _storage.ref('chat_images/$userId/$timestamp.jpg');
      
      await ref.putFile(imageFile);
      final downloadUrl = await ref.getDownloadURL();
      
      _logger.info('Image uploaded: $downloadUrl');
      return downloadUrl;
    } catch (e, stackTrace) {
      _logger.error('Failed to upload image', e, stackTrace);
      rethrow;
    }
  }

  /// Generate consistent chat ID for two users
  String _getChatId(String userId1, String userId2) {
    final ids = [userId1, userId2]..sort();
    return '${ids[0]}_${ids[1]}';
  }

  /// Update conversation metadata
  Future<void> _updateConversation(
    String chatId,
    String senderId,
    String receiverId,
    String lastMessage,
  ) async {
    try {
      final timestamp = DateTime.now().millisecondsSinceEpoch;
      
      // Update sender's conversation list
      await _database.ref('conversations/$senderId/$receiverId').set({
        'userId': receiverId,
        'lastMessage': lastMessage,
        'lastMessageTime': timestamp,
        'unreadCount': 0, // Sender has no unread from themselves
      });
      
      // Update receiver's conversation list and increment unread
      final receiverConvRef = _database.ref('conversations/$receiverId/$senderId');
      final snapshot = await receiverConvRef.once();
      final currentUnread = snapshot.snapshot.value != null
          ? ((snapshot.snapshot.value as Map)['unreadCount'] ?? 0)
          : 0;
      
      await receiverConvRef.update({
        'userId': senderId,
        'lastMessage': lastMessage,
        'lastMessageTime': timestamp,
        'unreadCount': currentUnread + 1,
      });
    } catch (e, stackTrace) {
      _logger.error('Failed to update conversation', e, stackTrace);
    }
  }

  /// Reset unread count for a conversation
  Future<void> resetUnreadCount(String userId, String otherUserId) async {
    try {
      await _database.ref('conversations/$userId/$otherUserId/unreadCount').set(0);
    } catch (e, stackTrace) {
      _logger.error('Failed to reset unread count', e, stackTrace);
    }
  }
}
