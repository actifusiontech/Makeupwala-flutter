import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../shared/theme/app_colors.dart';
import '../../../../shared/theme/app_typography.dart';
import '../bloc/subscription_bloc.dart';

class SubscriptionHistoryScreen extends StatelessWidget {
  const SubscriptionHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Subscription History'),
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
      ),
      body: BlocBuilder<SubscriptionBloc, SubscriptionState>(
        builder: (context, state) {
          return state.maybeWhen(
            historyLoaded: (history) {
              if (history.isEmpty) {
                return const Center(child: Text('No history available.'));
              }
              return ListView.builder(
                itemCount: history.length,
                itemBuilder: (context, index) {
                  final event = history[index];
                  // Parse timestamp
                  final date = DateTime.tryParse(event['timestamp'] ?? '') ?? DateTime.now();
                  
                  return ListTile(
                    leading: const CircleAvatar(
                      backgroundColor: AppColors.background,
                      child: Icon(Icons.history, color: AppColors.primary),
                    ),
                    title: Text(
                      event['action']?.toString().toUpperCase() ?? 'EVENT',
                      style: AppTypography.titleMedium,
                    ),
                    subtitle: Text(date.toString()),
                    trailing: event['reason'] != null 
                        ? Tooltip(message: event['reason'], child: const Icon(Icons.info_outline))
                        : null,
                  );
                },
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (msg) => Center(child: Text('Error: $msg')),
            orElse: () {
              // Trigger load if not loaded
              context.read<SubscriptionBloc>().add(const SubscriptionEvent.fetchHistory());
              return const Center(child: CircularProgressIndicator());
            },
          );
        },
      ),
    );
  }
}
