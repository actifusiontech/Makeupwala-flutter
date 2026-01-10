import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class KYCDeepLinkHandler extends StatefulWidget {
  final String? phone;
  final String? leadId;

  const KYCDeepLinkHandler({
    Key? key,
    this.phone,
    this.leadId,
  }) : super(key: key);

  @override
  State<KYCDeepLinkHandler> createState() => _KYCDeepLinkHandlerState();
}

class _KYCDeepLinkHandlerState extends State<KYCDeepLinkHandler> {
  @override
  void initState() {
    super.initState();
    _handleDeepLink();
  }

  void _handleDeepLink() {
    // Navigate to OTP screen with pre-filled phone
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.phone != null) {
        // Decode phone number (remove URL encoding)
        final decodedPhone = Uri.decodeComponent(widget.phone!);
        
        context.go('/otp', extra: {
          'phone': decodedPhone,
          'leadId': widget.leadId,
        });
      } else {
        // No phone provided, go to login
        context.go('/login');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFFF6B6B)),
            ),
            SizedBox(height: 24),
            Text(
              'Opening KYC verification...',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
            ),
            if (widget.phone != null) ...[
              SizedBox(height: 8),
              Text(
                'Phone: ${widget.phone}',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[500],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
