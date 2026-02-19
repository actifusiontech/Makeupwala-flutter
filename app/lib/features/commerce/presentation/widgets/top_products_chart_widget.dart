import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'package:app/shared/theme/app_typography.dart';
import '../../domain/brand_models.dart';

class TopProductsChartWidget extends StatelessWidget {
  final List<DashboardProduct> products;

  const TopProductsChartWidget({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    if (products.isEmpty) {
      return const Center(
        child: Padding(
          padding: EdgeInsets.all(AppSpacing.lg),
          child: Text('No product data available'),
        ),
      );
    }

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Top Products', style: AppTypography.titleMedium),
            const SizedBox(height: AppSpacing.md),
            SizedBox(
              height: 250,
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceAround,
                  maxY: _getMaxY(),
                  barTouchData: BarTouchData(
                    enabled: true,
                    touchTooltipData: BarTouchTooltipData(
                      getTooltipItem: (group, groupIndex, rod, rodIndex) {
                        return BarTooltipItem(
                          '${products[group.x.toInt()].name}\n',
                          AppTypography.labelMedium.copyWith(color: Colors.white),
                          children: <TextSpan>[
                            TextSpan(
                              text: '${rod.toY.toInt()} sales',
                              style: AppTypography.labelSmall.copyWith(color: Colors.white70),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  titlesData: FlTitlesData(
                    show: true,
                    rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 40,
                        getTitlesWidget: (double value, TitleMeta meta) {
                          if (value.toInt() >= 0 && value.toInt() < products.length) {
                            final name = products[value.toInt()].name;
                            return Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                name.length > 8 ? '${name.substring(0, 8)}...' : name,
                                style: AppTypography.labelSmall,
                                textAlign: TextAlign.center,
                              ),
                            );
                          }
                          return const Text('');
                        },
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 40,
                        interval: _calculateInterval(),
                        getTitlesWidget: (double value, TitleMeta meta) {
                          return Text(
                            value.toInt().toString(),
                            style: AppTypography.labelSmall,
                          );
                        },
                      ),
                    ),
                  ),
                  borderData: FlBorderData(
                    show: true,
                    border: Border.all(color: AppColors.border.withOpacity(0.2)),
                  ),
                  barGroups: products.asMap().entries.map((entry) {
                    return BarChartGroupData(
                      x: entry.key,
                      barRods: [
                        BarChartRodData(
                          toY: entry.value.sales.toDouble(),
                          gradient: LinearGradient(
                            colors: [
                              AppColors.primary,
                              AppColors.primary.withOpacity(0.7),
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                          width: 20,
                          borderRadius: const BorderRadius.vertical(top: Radius.circular(4)),
                        ),
                      ],
                    );
                  }).toList(),
                  gridData: FlGridData(
                    show: true,
                    drawVerticalLine: false,
                    horizontalInterval: _calculateInterval(),
                    getDrawingHorizontalLine: (value) {
                      return FlLine(
                        color: AppColors.border.withOpacity(0.2),
                        strokeWidth: 1,
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  double _getMaxY() {
    if (products.isEmpty) return 100;
    final maxSales = products.map((e) => e.sales).reduce((a, b) => a > b ? a : b);
    return (maxSales * 1.2).ceilToDouble();
  }

  double _calculateInterval() {
    final maxY = _getMaxY();
    if (maxY <= 50) return 10;
    if (maxY <= 200) return 50;
    if (maxY <= 1000) return 200;
    return 500;
  }
}
