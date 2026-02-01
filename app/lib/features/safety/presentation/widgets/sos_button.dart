import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:app/features/safety/data/safety_repository.dart';

class SOSButton extends StatefulWidget {
  const SOSButton({Key? key}) : super(key: key);

  @override
  State<SOSButton> createState() => _SOSButtonState();
}

class _SOSButtonState extends State<SOSButton> {
  final SafetyRepository _repository = SafetyRepository(Dio());
  bool _isLoading = false;

  Future<void> _handleSOS() async {
    setState(() => _isLoading = true);
    try {
      // Need dummy location or fetch it
      await _repository.triggerSOS(lat: 0, lng: 0); 
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('SOS Alert Sent! Help is on the way.'),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 5),
        ),
      );
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to send SOS: $e')),
      );
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: _isLoading ? null : _handleSOS,
      backgroundColor: Colors.red,
      child: _isLoading
          ? const CircularProgressIndicator(color: Colors.white)
          : const Icon(Icons.sos, color: Colors.white, size: 30),
      tooltip: 'EMERGENCY SOS',
    );
  }
}
