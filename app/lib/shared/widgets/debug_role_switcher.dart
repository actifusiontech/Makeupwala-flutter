import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/features/auth/bloc/auth_bloc.dart';
import 'package:app/core/models/user.dart';

class DebugRoleSwitcher extends StatelessWidget {
  const DebugRoleSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 100,
      right: 0,
      child: Material(
        color: Colors.transparent,
        child: ExpansionTile(
          title: const Icon(Icons.bug_report, color: Colors.red),
          backgroundColor: Colors.white,
          collapsedBackgroundColor: Colors.white.withOpacity(0.5),
          children: [
            _roleButton(context, 'customer', 'Customer'),
            _roleButton(context, 'artist', 'Artist'),
            _roleButton(context, 'brand', 'Brand'),
            _roleButton(context, 'academy', 'Academy'),
          ],
        ),
      ),
    );
  }

  Widget _roleButton(BuildContext context, String role, String label) {
    return ListTile(
      title: Text(role.toUpperCase()),
      onTap: () {
        // Create a mock user with the selected role
        final mockUser = User(
          id: 'debug_$role',
          fullName: 'Debug $label',
          email: 'debug_$role@example.com',
          phone: '1234567890',
          role: role,
        );
        
        // This is a hack for testing - in production, this would be a real login
        // But for development, it allows us to switch personas quickly
        // We'll need a way to force-inject this into the AuthBloc if possible
        // or just use it to navigate and see how the UI looks.
        
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Switching to $label role (UI only)')),
        );
      },
    );
  }
}
