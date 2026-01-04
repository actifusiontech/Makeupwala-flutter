
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import '../../data/safety_repository.dart';

class SOSWidget extends StatefulWidget {
  final SafetyRepository repository;

  const SOSWidget({Key? key, required this.repository}) : super(key: key);

  @override
  State<SOSWidget> createState() => _SOSWidgetState();
}

class _SOSWidgetState extends State<SOSWidget> with SingleTickerProviderStateMixin {
  bool _isLongPressing = false;
  late AnimationController _controller;
  
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _triggerSOS();
        _controller.reset();
      }
    });
  }

  Future<void> _triggerSOS() async {
    try {
      final pos = await Geolocator.getCurrentPosition();
      await widget.repository.triggerSOS(
        lat: pos.latitude,
        lng: pos.longitude,
        // In real app, get address from geocoding and battery from battery_plus
        batteryLevel: 85, 
      );
      
      if (mounted) {
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: const Text('SOS ALERT SENT', style: TextStyle(color: Colors.red)),
            content: const Text('Emergency contacts and Makeupwala Safety Team have been notified.'),
            actions: [
              TextButton(onPressed: () => Navigator.pop(context), child: const Text('OK'))
            ],
          ),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Failed to send SOS: $e')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        setState(() => _isLongPressing = true);
        _controller.forward();
      },
      onLongPressUp: () {
        setState(() => _isLongPressing = false);
        _controller.reset();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: _isLongPressing ? 80 : 60,
        height: _isLongPressing ? 80 : 60,
        decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.red.withOpacity(0.4),
              blurRadius: 10,
              spreadRadius: 2,
            )
          ],
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            if (_isLongPressing)
              CircularProgressIndicator(
                value: _controller.value,
                valueColor: const AlwaysStoppedAnimation(Colors.white),
                strokeWidth: 4,
              ),
            const Icon(Icons.sos, color: Colors.white, size: 30),
          ],
        ),
      ),
    );
  }
}
