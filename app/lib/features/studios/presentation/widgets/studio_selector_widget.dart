import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/features/studios/bloc/context/studio_context_bloc.dart';
import 'package:app/features/studios/data/models/studio_model.dart';

class StudioSelectorWidget extends StatelessWidget {
  const StudioSelectorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StudioContextBloc, StudioContextState>(
      builder: (context, state) {
        if (state.studios.isEmpty) return const SizedBox.shrink();

        final activeStudio = state.activeStudio;
        
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: BoxDecoration(
            color: AppColors.primary.withOpacity(0.05),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.primary.withOpacity(0.1)),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<StudioModel>(
              value: activeStudio,
              isExpanded: true,
              icon: const Icon(Icons.business_outlined, color: AppColors.primary),
              items: state.studios.map((studio) {
                return DropdownMenuItem<StudioModel>(
                  value: studio,
                  child: Row(
                    children: [
                      const Icon(Icons.location_on_outlined, size: 16, color: AppColors.grey500),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          studio.name,
                          style: AppTypography.bodyMedium.copyWith(
                            fontWeight: FontWeight.bold,
                            color: AppColors.textPrimary,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      if (activeStudio?.id == studio.id)
                        const Icon(Icons.check_circle, size: 16, color: AppColors.success),
                    ],
                  ),
                );
              }).toList(),
              onChanged: (StudioModel? newValue) {
                if (newValue != null) {
                  context.read<StudioContextBloc>().add(SwitchStudio(newValue));
                }
              },
            ),
          ),
        );
      },
    );
  }
}
