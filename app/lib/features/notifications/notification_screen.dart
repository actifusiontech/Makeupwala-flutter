import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'bloc/notification_bloc.dart';
import 'data/notification_repository.dart';
import 'domain/notification_model.dart';
import 'package:app/shared/widgets/shimmer_loaders.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotificationBloc(repository: NotificationRepository())
        ..add(const NotificationEvent.fetchNotifications()),
      child: const _NotificationView(),
    );
  }
}

class _NotificationView extends StatelessWidget {
  const _NotificationView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: const Text('Notifications'),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
      ),
      body: BlocBuilder<NotificationBloc, NotificationState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            loading: () => Padding(
              padding: const EdgeInsets.all(AppSpacing.screenPadding),
              child: Column(
                children: List.generate(5, (index) => ShimmerLoaders.listTile()),
              ),
            ),
            error: (message) => Center(child: Text('Error: $message')),
            loaded: (notifications) {
              if (notifications.isEmpty) {
                return const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.notifications_off, size: 64, color: AppColors.grey300),
                      SizedBox(height: AppSpacing.md),
                      Text('No notifications yet'),
                    ],
                  ),
                );
              }
              return ListView.separated(
                padding: const EdgeInsets.all(AppSpacing.screenPadding),
                itemCount: notifications.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  final notification = notifications[index];
                  return _buildNotificationItem(context, notification);
                },
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildNotificationItem(BuildContext context, NotificationModel notification) {
    final title = notification.title;
    final body = notification.body;
    final isRead = notification.isRead;
    final id = notification.id;

    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        backgroundColor: isRead ? AppColors.grey300 : AppColors.primary,
        radius: 6,
      ),
      title: Text(
        title,
        style: AppTypography.titleMedium.copyWith(
          fontWeight: isRead ? FontWeight.normal : FontWeight.bold,
        ),
      ),
      subtitle: Text(body, style: AppTypography.bodyMedium),
      onTap: () {
        if (!isRead && id != null) {
          context.read<NotificationBloc>().add(NotificationEvent.markRead(id: id));
        }
      },
    );
  }
}
