import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:battery_plus/battery_plus.dart';
import '../bloc/safety_bloc.dart';
import '../bloc/safety_event.dart';
import '../bloc/safety_state.dart';

class SOSButton extends StatefulWidget {
  const SOSButton({Key? key}) : super(key: key);

  @override
  State<SOSButton> createState() => _SOSButtonState();
}

class _SOSButtonState extends State<SOSButton> {
  final _battery = Battery();

  Future<void> _handleSOS() async {
    try {
      // 1. Check Permissions
      var status = await Permission.location.status;
      if (!status.isGranted) {
        status = await Permission.location.request();
        if (!status.isGranted) {
          throw Exception('Location permission is required for SOS.');
        }
      }

      // 2. Get Location
      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
        timeLimit: const Duration(seconds: 10),
      );

      // 3. Get Battery Level
      final batteryLevel = await _battery.batteryLevel;

      // 4. Trigger SOS via BLoC
      if (mounted) {
        context.read<SafetyBloc>().add(SafetyEvent.triggerSOS(
          lat: position.latitude,
          lng: position.longitude,
          batteryLevel: batteryLevel,
        ));
      }
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to prepare SOS: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SafetyBloc, SafetyState>(
      listener: (context, state) {
        state.maybeWhen(
          sosTriggered: (alert) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('SOS Alert Sent! Emergency contacts notified.'),
                backgroundColor: Colors.red,
                duration: Duration(seconds: 5),
              ),
            );
          },
          error: (msg) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(msg)),
            );
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        final isLoading = state.maybeWhen(loading: () => true, orElse: () => false);

        return FloatingActionButton(
          onPressed: isLoading ? null : _handleSOS,
          backgroundColor: Colors.red,
          child: isLoading
              ? const CircularProgressIndicator(color: Colors.white)
              : const Icon(Icons.sos, color: Colors.white, size: 30),
          tooltip: 'EMERGENCY SOS',
        );
      },
    );
  }
}
