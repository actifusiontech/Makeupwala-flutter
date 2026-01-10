import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:dio/dio.dart';
import '../../shared/theme/app_colors.dart';
import '../../shared/theme/app_typography.dart';
import '../../shared/theme/app_spacing.dart';
import '../artist/data/availability_model.dart';
import '../artist/data/availability_repository.dart';

class AvailabilityScreen extends StatefulWidget {
  const AvailabilityScreen({Key? key}) : super(key: key);

  @override
  State<AvailabilityScreen> createState() => _AvailabilityScreenState();
}

class _AvailabilityScreenState extends State<AvailabilityScreen> {
  late AvailabilityRepository _repository;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  Map<DateTime, List<Availability>> _availabilityMap = {};
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    final dio = Dio(BaseOptions(
      baseUrl: 'https://api.makeupwallah.com/api/v1/makeupwala',
    ));
    _repository = AvailabilityRepository(dio);
    _loadAvailability();
  }

  Future<void> _loadAvailability() async {
    setState(() => _loading = true);
    try {
      final startDate = DateTime(_focusedDay.year, _focusedDay.month, 1);
      final endDate = DateTime(_focusedDay.year, _focusedDay.month + 1, 0);

      final availabilities = await _repository.getAvailability(
        startDate: startDate.toIso8601String().split('T')[0],
        endDate: endDate.toIso8601String().split('T')[0],
      );

      // Group by date
      _availabilityMap.clear();
      for (var availability in availabilities) {
        final dateKey = DateTime(
          availability.date.year,
          availability.date.month,
          availability.date.day,
        );
        _availabilityMap.putIfAbsent(dateKey, () => []).add(availability);
      }

      setState(() {});
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to load availability: $e')),
      );
    } finally {
      setState(() => _loading = false);
    }
  }

  List<Availability> _getAvailabilityForDay(DateTime day) {
    final dateKey = DateTime(day.year, day.month, day.day);
    return _availabilityMap[dateKey] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Availability'),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                // Calendar
                TableCalendar(
                  firstDay: DateTime.now(),
                  lastDay: DateTime.now().add(const Duration(days: 365)),
                  focusedDay: _focusedDay,
                  selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
                  onDaySelected: (selectedDay, focusedDay) {
                    setState(() {
                      _selectedDay = selectedDay;
                      _focusedDay = focusedDay;
                    });
                  },
                  onPageChanged: (focusedDay) {
                    _focusedDay = focusedDay;
                    _loadAvailability();
                  },
                  calendarStyle: CalendarStyle(
                    todayDecoration: BoxDecoration(
                      color: AppColors.primary.withOpacity(0.5),
                      shape: BoxShape.circle,
                    ),
                    selectedDecoration: const BoxDecoration(
                      color: AppColors.primary,
                      shape: BoxShape.circle,
                    ),
                    markerDecoration: const BoxDecoration(
                      color: AppColors.error,
                      shape: BoxShape.circle,
                    ),
                  ),
                  calendarBuilders: CalendarBuilders(
                    markerBuilder: (context, day, events) {
                      final availabilities = _getAvailabilityForDay(day);
                      if (availabilities.isEmpty) return null;

                      final hasBlocked = availabilities.any((a) => !a.isAvailable);
                      return Positioned(
                        bottom: 1,
                        child: Container(
                          width: 6,
                          height: 6,
                          decoration: BoxDecoration(
                            color: hasBlocked ? AppColors.error : AppColors.success,
                            shape: BoxShape.circle,
                          ),
                        ),
                      );
                    },
                  ),
                ),

                const Divider(),

                // Selected day availability
                if (_selectedDay != null) ...[
                  Padding(
                    padding: const EdgeInsets.all(AppSpacing.md),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Availability for ${_selectedDay!.day}/${_selectedDay!.month}/${_selectedDay!.year}',
                          style: AppTypography.titleMedium,
                        ),
                        IconButton(
                          icon: const Icon(Icons.add_circle, color: AppColors.primary),
                          onPressed: () => _showAddAvailabilityDialog(),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: _buildAvailabilityList(),
                  ),
                ] else
                  const Expanded(
                    child: Center(
                      child: Text('Select a date to manage availability'),
                    ),
                  ),
              ],
            ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _showBlockDateDialog(),
        backgroundColor: AppColors.error,
        icon: const Icon(Icons.block),
        label: const Text('Block Date'),
      ),
    );
  }

  Widget _buildAvailabilityList() {
    final availabilities = _getAvailabilityForDay(_selectedDay!);

    if (availabilities.isEmpty) {
      return const Center(
        child: Text('No availability set for this date'),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(AppSpacing.md),
      itemCount: availabilities.length,
      itemBuilder: (context, index) {
        final availability = availabilities[index];
        return Card(
          child: ListTile(
            leading: Icon(
              availability.isAvailable ? Icons.check_circle : Icons.block,
              color: availability.isAvailable ? AppColors.success : AppColors.error,
            ),
            title: Text(
              '${availability.startTime.substring(0, 5)} - ${availability.endTime.substring(0, 5)}',
              style: AppTypography.titleSmall,
            ),
            subtitle: Text(
              availability.isAvailable ? 'Available' : 'Blocked',
              style: TextStyle(
                color: availability.isAvailable ? AppColors.success : AppColors.error,
              ),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.delete, color: AppColors.error),
              onPressed: () => _deleteAvailability(availability.id),
            ),
          ),
        );
      },
    );
  }

  void _showAddAvailabilityDialog() {
    String startTime = '09:00';
    String endTime = '17:00';
    bool isAvailable = true;

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Add Availability'),
        content: StatefulBuilder(
          builder: (context, setState) => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SwitchListTile(
                title: const Text('Available'),
                value: isAvailable,
                onChanged: (value) => setState(() => isAvailable = value),
              ),
              const SizedBox(height: AppSpacing.md),
              Text('Start Time: $startTime'),
              Text('End Time: $endTime'),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.pop(context);
              await _addAvailability(startTime, endTime, isAvailable);
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  void _showBlockDateDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Block Date'),
        content: const Text('Block the entire selected date?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.error),
            onPressed: () async {
              Navigator.pop(context);
              if (_selectedDay != null) {
                await _addAvailability('00:00', '23:59', false);
              }
            },
            child: const Text('Block'),
          ),
        ],
      ),
    );
  }

  Future<void> _addAvailability(String startTime, String endTime, bool isAvailable) async {
    if (_selectedDay == null) return;

    try {
      final request = AvailabilityRequest(
        date: _selectedDay!.toIso8601String().split('T')[0],
        startTime: startTime,
        endTime: endTime,
        isAvailable: isAvailable,
      );

      await _repository.setAvailability(request);
      await _loadAvailability();

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Availability updated successfully')),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to update availability: $e')),
        );
      }
    }
  }

  Future<void> _deleteAvailability(String id) async {
    try {
      await _repository.deleteAvailability(id);
      await _loadAvailability();

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Availability deleted successfully')),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to delete availability: $e')),
        );
      }
    }
  }
}
