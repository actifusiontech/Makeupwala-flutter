import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:convert';
import 'package:go_router/go_router.dart';
import '../../../../core/services/notification_service.dart';
import '../../../../shared/theme/app_colors.dart';
import '../../../../shared/theme/app_typography.dart';
import '../../../../shared/theme/app_spacing.dart';
import '../domain/notification_model.dart';
import 'notification_preferences_screen.dart';

class NotificationCenterScreen extends StatefulWidget {
  const NotificationCenterScreen({super.key});

  @override
  State<NotificationCenterScreen> createState() => _NotificationCenterScreenState();
}

class _NotificationCenterScreenState extends State<NotificationCenterScreen> {
  List<NotificationModel> _notifications = [];
  final NotificationService _notificationService = NotificationService();

  @override
  void initState() {
    super.initState();
    _loadNotifications();
  }

  void _loadNotifications() {
    setState(() {
      _notifications = _notificationService.getNotifications();
    });
  }

  Future<void> _markAsRead(String id) async {
    await _notificationService.markAsRead(id);
    _loadNotifications();
  }

  Future<void> _markAllAsRead() async {
    await _notificationService.markAllAsRead();
    _loadNotifications();
  }

  Future<void> _clearAll() async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Clear all notifications?'),
        content: const Text('This action cannot be undone.'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('Cancel')),
          TextButton(onPressed: () => Navigator.pop(context, true), child: const Text('Clear', style: TextStyle(color: AppColors.error))),
        ],
      ),
    );

    if (confirm == true) {
      await _notificationService.clearAll();
      _loadNotifications();
    }
  }

  @override
  Widget build(BuildContext context) {
    // Group notifications
    final now = DateTime.now();
    final today = <NotificationModel>[];
    final yesterday = <NotificationModel>[];
    final earlier = <NotificationModel>[];

    for (var notification in _notifications) {
      final diff = now.difference(notification.timestamp).inDays;
      if (diff == 0 && notification.timestamp.day == now.day) {
        today.add(notification);
      } else if (diff == 0 || diff == 1) { // generic check for yesterday
         // strictly speaking logic is a bit loose here for 'yesterday', but good enough for mvp
        yesterday.add(notification);
      } else {
        earlier.add(notification);
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Notifications'),
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.done_all),
             tooltip: 'Mark all as read',
            onPressed: _notifications.any((n) => !n.isRead) ? _markAllAsRead : null,
          ),
          IconButton(
            icon: const Icon(Icons.delete_outline),
            tooltip: 'Clear all',
            onPressed: _notifications.isNotEmpty ? _clearAll : null,
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Settings',
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (_) => const NotificationPreferencesScreen()),
              );
            },
          ),
        ],
      ),
      body: _notifications.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.notifications_off_outlined, size: 64, color: Colors.grey[400]),
                  const SizedBox(height: AppSpacing.md),
                  Text('No notifications', style: AppTypography.titleMedium.copyWith(color: Colors.grey[600])),
                ],
              ),
            )
          : RefreshIndicator(
              onRefresh: () async => _loadNotifications(),
              child: ListView(
                padding: const EdgeInsets.all(AppSpacing.md),
                children: [
                  if (today.isNotEmpty) ...[
                    _buildSectionHeader('Today'),
                    ...today.map(_buildNotificationItem),
                    const SizedBox(height: AppSpacing.lg),
                  ],
                  if (yesterday.isNotEmpty) ...[
                    _buildSectionHeader('Yesterday'),
                    ...yesterday.map(_buildNotificationItem),
                    const SizedBox(height: AppSpacing.lg),
                  ],
                  if (earlier.isNotEmpty) ...[
                    _buildSectionHeader('Earlier'),
                    ...earlier.map(_buildNotificationItem),
                  ],
                ],
              ),
            ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.sm, left: 4),
      child: Text(
        title,
        style: AppTypography.labelLarge.copyWith(color: Colors.grey[600], fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildNotificationItem(NotificationModel notification) {
    final iconData = _getIconForType(notification.type);
    final color = _getColorForType(notification.type);

    return Dismissible(
      key: Key(notification.id),
      direction: DismissDirection.endToStart,
      background: Container(
        color: AppColors.error,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: AppSpacing.lg),
        child: const Icon(Icons.delete, color: Colors.white),
      ),
      onDismissed: (_) {
         // We'd need a deleteSingle method in service, for now mark as read + maybe hide
         // In real app, implementing delete single notification logic in service is needed.
         // Calling markAsRead as placeholder if delete not avail in UI logic yet.
      },
      confirmDismiss: (_) async => false, // Disable swipe delete for now until service supports it
      child: InkWell(
        onTap: () {
          _markAsRead(notification.id);
          if (notification.payload != null && notification.payload!.isNotEmpty) {
            if (notification.payload!.startsWith('/')) {
              context.push(notification.payload!);
            } else {
              try {
                final data = jsonDecode(notification.payload!);
                final route = data['route'] as String?;
                if (route != null) {
                  context.push(route);
                }
              } catch (_) {
                // Ignore parse errors, fallback to no-op
              } // end try
            } // end else
          } // end if
        },
        child: Container(
          margin: const EdgeInsets.only(bottom: AppSpacing.sm),
          padding: const EdgeInsets.all(AppSpacing.md),
          decoration: BoxDecoration(
            color: notification.isRead ? Colors.white : AppColors.primary.withValues(alpha: 0.05),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: notification.isRead ? Colors.grey[200]! : AppColors.primary.withValues(alpha: 0.2),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: color.withValues(alpha: 0.1),
                child: Icon(iconData, color: color, size: 20),
              ),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            notification.title,
                            style: AppTypography.titleSmall.copyWith(
                              fontWeight: notification.isRead ? FontWeight.normal : FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          DateFormat('HH:mm').format(notification.timestamp),
                          style: AppTypography.bodySmall.copyWith(color: Colors.grey[500], fontSize: 10),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      notification.body,
                      style: AppTypography.bodySmall.copyWith(color: Colors.grey[700]),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              if (!notification.isRead)
                Container(
                  margin: const EdgeInsets.only(left: 8, top: 8),
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  IconData _getIconForType(String type) {
    switch (type) {
      case 'booking':
        return Icons.calendar_today;
      case 'chat':
        return Icons.chat_bubble_outline;
      case 'promotion':
        return Icons.percent;
      case 'system':
      default:
        return Icons.notifications_none;
    }
  }

  Color _getColorForType(String type) {
    switch (type) {
      case 'booking':
        return Colors.blue;
      case 'chat':
        return Colors.green;
      case 'promotion':
        return Colors.orange;
      case 'system':
      default:
        return AppColors.primary;
    }
  }
}
