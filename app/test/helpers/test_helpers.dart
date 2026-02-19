import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../mocks/mock_repositories.dart';

/// Helper to pump a widget with all necessary providers
Widget createTestApp({
  required Widget child,
  MockAuthRepository? authRepository,
  MockBookingRepository? bookingRepository,
  MockWalletRepository? walletRepository,
}) {
  return MaterialApp(
    home: MultiBlocProvider(
      providers: [
        // Add BLoC providers as needed for testing
        // Example:
        // BlocProvider<AuthBloc>(
        //   create: (_) => AuthBloc(repository: authRepository ?? MockAuthRepository()),
        // ),
      ],
      child: child,
    ),
  );
}

/// Helper to find widgets by type
extension WidgetTesterX on WidgetTester {
  /// Find a widget by its type
  Finder findByType<T>() => find.byType(T);

  /// Find a widget by its key
  Finder findByTestKey(String key) => find.byKey(Key(key));

  /// Pump and settle with a custom duration
  Future<void> pumpAndSettleWithDuration([Duration duration = const Duration(seconds: 5)]) async {
    await pumpAndSettle(duration);
  }
}

/// Test data builders
class TestDataBuilders {
  /// Create a test user
  static Map<String, dynamic> createUser({
    String id = 'test-user-id',
    String name = 'Test User',
    String email = 'test@example.com',
    String phone = '+919876543210',
    String role = 'customer',
  }) {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'role': role,
    };
  }

  /// Create a test booking
  static Map<String, dynamic> createBooking({
    String id = 'test-booking-id',
    String userId = 'test-user-id',
    String artistId = 'test-artist-id',
    String serviceId = 'test-service-id',
    double amount = 1000.0,
    String status = 'pending',
  }) {
    return {
      'id': id,
      'user_id': userId,
      'artist_id': artistId,
      'service_id': serviceId,
      'amount': amount,
      'status': status,
      'created_at': DateTime.now().toIso8601String(),
    };
  }

  /// Create a test artist
  static Map<String, dynamic> createArtist({
    String id = 'test-artist-id',
    String name = 'Test Artist',
    double rating = 4.5,
    int reviewCount = 100,
  }) {
    return {
      'id': id,
      'name': name,
      'rating': rating,
      'review_count': reviewCount,
    };
  }
}

/// Custom matchers
Matcher isLoading() => isA<CircularProgressIndicator>();

Matcher hasText(String text) => findsOneWidget;
