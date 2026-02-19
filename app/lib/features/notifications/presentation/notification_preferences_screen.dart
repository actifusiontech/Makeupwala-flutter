import 'package:flutter/material.dart';
import '../../../../core/cache/hive_boxes.dart';
import '../../../../shared/theme/app_colors.dart';
import '../../../../shared/theme/app_typography.dart';
import '../../../../shared/theme/app_spacing.dart';

class NotificationPreferencesScreen extends StatefulWidget {
  const NotificationPreferencesScreen({super.key});

  @override
  State<NotificationPreferencesScreen> createState() => _NotificationPreferencesScreenState();
}

class _NotificationPreferencesScreenState extends State<NotificationPreferencesScreen> {
  final _settingsBox = HiveBoxes.getSettingsBox();
  
  // Default values
  bool _bookingUpdates = true;
  bool _chatMessages = true;
  bool _promotions = true;
  bool _appUpdates = true;

  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  void _loadSettings() {
    setState(() {
      _bookingUpdates = _settingsBox.get('notify_booking', defaultValue: true);
      _chatMessages = _settingsBox.get('notify_chat', defaultValue: true);
      _promotions = _settingsBox.get('notify_promo', defaultValue: true);
      _appUpdates = _settingsBox.get('notify_app', defaultValue: true);
    });
  }

  void _updateSetting(String key, bool value) {
    _settingsBox.put(key, value);
    setState(() {
      switch (key) {
        case 'notify_booking': _bookingUpdates = value; break;
        case 'notify_chat': _chatMessages = value; break;
        case 'notify_promo': _promotions = value; break;
        case 'notify_app': _appUpdates = value; break;
      }
    });
    
    // In a real app, we would also call API to update backend preferences here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Notification Settings'),
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.lg),
        children: [
          _buildsectionHeader('Activity'),
          _buildSwitchTile(
            'Booking Updates',
            'Get notified when booking status changes',
            _bookingUpdates,
            (val) => _updateSetting('notify_booking', val),
          ),
          _buildSwitchTile(
            'Chat Messages',
            'Receive notifications for new messages',
            _chatMessages,
            (val) => _updateSetting('notify_chat', val),
          ),
          
          const Divider(height: 32),
          
          _buildsectionHeader('Marketing'),
          _buildSwitchTile(
            'Promotions & Offers',
            'Receive updates on discounts and special offers',
            _promotions,
            (val) => _updateSetting('notify_promo', val),
          ),
          _buildSwitchTile(
            'App Updates',
            'Stay informed about new features and improvements',
            _appUpdates,
            (val) => _updateSetting('notify_app', val),
          ),
        ],
      ),
    );
  }

  Widget _buildsectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.md),
      child: Text(
        title,
        style: AppTypography.titleMedium.copyWith(color: AppColors.primary, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildSwitchTile(String title, String subtitle, bool value, ValueChanged<bool> onChanged) {
    return SwitchListTile(
      value: value,
      onChanged: onChanged,
      title: Text(title, style: AppTypography.bodyLarge.copyWith(fontWeight: FontWeight.w500)),
      subtitle: Text(subtitle, style: AppTypography.bodySmall.copyWith(color: Colors.grey[600])),
      activeColor: AppColors.primary,
      contentPadding: EdgeInsets.zero,
    );
  }
}
