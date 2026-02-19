import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'bloc/subscription_bloc.dart';

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
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.error != null) {
            return Center(child: Text('Error: ${state.error}'));
          }
          final history = state.history;
          if (history.isEmpty) {
            // Trigger load if not loaded
            context.read<SubscriptionBloc>().add(const SubscriptionEvent.fetchHistory());
            return const Center(child: CircularProgressIndicator());
          }
          return ListView.builder(
            itemCount: history.length,
            itemBuilder: (context, index) {
              final event = history[index];
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
      ),
    );
  }
}
