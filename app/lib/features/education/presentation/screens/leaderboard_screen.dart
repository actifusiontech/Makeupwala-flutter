import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'package:app/features/education/data/education_repository.dart';
import 'package:app/features/education/domain/education_models.dart';

class LeaderboardScreen extends StatefulWidget {
  const LeaderboardScreen({super.key});

  @override
  State<LeaderboardScreen> createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen> {
  late Future<List<TopStudent>> _leaderboardFuture;

  @override
  void initState() {
    super.initState();
    _leaderboardFuture = context.read<EducationRepository>().getLeaderboard();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Top Learners'),
        backgroundColor: AppColors.background,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: AppTypography.headlineMedium.copyWith(color: AppColors.textPrimary),
        iconTheme: const IconThemeData(color: AppColors.textPrimary),
      ),
      body: FutureBuilder<List<TopStudent>>(
        future: _leaderboardFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No leaderboard data available.'));
          }

          final students = snapshot.data!;
          // Top 3 Visuals
          final top3 = students.take(3).toList();
          final rest = students.skip(3).toList();

          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(AppSpacing.screenPadding),
                  child: Column(
                    children: [
                       if (top3.isNotEmpty) _buildPodium(top3),
                       const SizedBox(height: AppSpacing.xl),
                    ],
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final student = rest[index];
                    final rank = index + 4;
                    return _buildRankItem(student, rank);
                  },
                  childCount: rest.length,
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildPodium(List<TopStudent> topStudents) {
    // 2nd, 1st, 3rd logic
    TopStudent? first = topStudents.isNotEmpty ? topStudents[0] : null;
    TopStudent? second = topStudents.length > 1 ? topStudents[1] : null;
    TopStudent? third = topStudents.length > 2 ? topStudents[2] : null;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (second != null) _buildPodiumStep(second, 2, 120, Colors.grey),
        const SizedBox(width: 8),
        if (first != null) _buildPodiumStep(first, 1, 150, const Color(0xFFFFD700), isFirst: true),
        const SizedBox(width: 8),
        if (third != null) _buildPodiumStep(third, 3, 100, const Color(0xFFCD7F32)),
      ],
    );
  }

  Widget _buildPodiumStep(TopStudent student, int rank, double height, Color color, {bool isFirst = false}) {
    return Column(
      children: [
        CircleAvatar(
          radius: isFirst ? 35 : 25,
          backgroundColor: color.withOpacity(0.2),
          child: Text(
            student.studentName.characters.take(1).toString().toUpperCase(),
            style: TextStyle(fontSize: isFirst ? 24 : 18, color: AppColors.textPrimary, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 8),
        Text(student.studentName.split(' ').first, style: AppTypography.labelMedium),
        const SizedBox(height: 4),
        Container(
          width: isFirst ? 100 : 80,
          height: height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 4,
                offset: const Offset(0, 2),
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '#$rank',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                '${student.completedCourses}',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const Text(
                'Courses',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildRankItem(TopStudent student, int rank) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppSpacing.screenPadding, vertical: 4),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 30,
            child: Text(
              '$rank',
              style: AppTypography.titleMedium.copyWith(color: AppColors.textSecondary),
            ),
          ),
          CircleAvatar(
            backgroundColor: AppColors.secondary,
            child: Text(student.studentName.characters.take(1).toString()),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              student.studentName,
              style: AppTypography.titleSmall,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '${student.completedCourses}',
                style: AppTypography.titleMedium.copyWith(color: AppColors.primary),
              ),
              Text(
                'Courses',
                style: AppTypography.labelSmall.copyWith(color: AppColors.textSecondary),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
