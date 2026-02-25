import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:app/features/auth/bloc/auth_bloc.dart';
import 'package:app/shared/theme/app_colors.dart';

class GlobalPersonaSwitcher extends StatelessWidget {
  const GlobalPersonaSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return state.maybeWhen(
          authenticated: (user) {
            final role = user.role.toLowerCase();
            
            // For now, allow switching between 'studio' and 'academy'
            // In a production app, we would verify the user has the actual business IDs associated with these roles.
            if (role != 'studio' && role != 'academy') {
              return const SizedBox.shrink();
            }

            return PopupMenuButton<String>(
              icon: const Icon(Icons.swap_horiz, color: Colors.white),
              tooltip: 'Switch Business Persona',
              onSelected: (value) {
                if (value != role) {
                  // 1. Dispatch role switch event
                  context.read<AuthBloc>().add(AuthEvent.switchPersona(value));
                  
                  // 2. Navigate to the appropriate dashboard
                  if (value == 'studio') {
                    context.go('/studio/home');
                  } else if (value == 'academy') {
                    context.go('/academy/home');
                  }
                }
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                PopupMenuItem<String>(
                  value: 'studio',
                  child: Row(
                    children: [
                      Icon(Icons.chair, color: role == 'studio' ? Colors.pink : Colors.grey),
                      const SizedBox(width: 8),
                      Text('Beauty Parlor (Studio)', style: TextStyle(
                        fontWeight: role == 'studio' ? FontWeight.bold : FontWeight.normal,
                        color: role == 'studio' ? Colors.pink : AppColors.textPrimary,
                      )),
                    ],
                  ),
                ),
                PopupMenuItem<String>(
                  value: 'academy',
                  child: Row(
                    children: [
                      Icon(Icons.school, color: role == 'academy' ? Colors.teal : Colors.grey),
                      const SizedBox(width: 8),
                      Text('Makeup Academy', style: TextStyle(
                        fontWeight: role == 'academy' ? FontWeight.bold : FontWeight.normal,
                        color: role == 'academy' ? Colors.teal : AppColors.textPrimary,
                      )),
                    ],
                  ),
                ),
              ],
            );
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
