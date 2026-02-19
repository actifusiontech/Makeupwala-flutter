import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import '../../bloc/safety_bloc.dart';
import '../../bloc/safety_event.dart';
import '../../bloc/safety_state.dart';

class CommunityGuardianOverlay extends StatelessWidget {
  const CommunityGuardianOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SafetyBloc, SafetyState>(
      builder: (context, state) {
        return state.maybeWhen(
          alertActive: (alert) => _buildAlert(context, alert),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget _buildAlert(BuildContext context, dynamic alert) {
    return Positioned(
      top: 50,
      left: 20,
      right: 20,
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(16),
        color: Colors.red.shade900,
        child: Container(
          padding: const EdgeInsets.all(AppSpacing.md),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  const Icon(Icons.warning_amber_rounded, color: Colors.white, size: 40),
                  const SizedBox(width: AppSpacing.md),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'COMMUNITY SOS ALERT',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          'Someone nearby needs help!',
                          style: TextStyle(color: Colors.white.withOpacity(0.9)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.md),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () => context.read<SafetyBloc>().add(const SafetyEvent.dismissAlert()),
                    child: const Text('DISMISS', style: TextStyle(color: Colors.white70)),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Navigate to map or show directions
                      context.read<SafetyBloc>().add(const SafetyEvent.dismissAlert());
                    },
                    icon: const Icon(Icons.directions, color: Colors.red),
                    label: const Text('RESPOND NOW', style: TextStyle(color: Colors.red)),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
