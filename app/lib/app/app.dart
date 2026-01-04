import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../shared/theme/app_theme.dart';
import '../features/onboarding/onboarding_screen.dart';
import '../features/auth/premium_login_screen.dart';
import '../features/auth/otp_screen.dart';
import '../features/auth/role_selection_screen.dart';
import '../features/auth/bloc/auth_bloc.dart';
import '../features/home/admin_dashboard_screen.dart';
import '../features/home/artist_home_screen.dart';
import '../features/home/customer_home_screen.dart';
import '../features/artist/artist_profile_screen.dart';
import '../features/booking/booking_screen.dart';
import '../features/profile/profile_screen.dart';
import '../features/profile/referral_history_screen.dart';
import '../features/subscription/subscription_screen.dart';
import '../features/notifications/notification_screen.dart';
import '../features/reviews/write_review_screen.dart';
import '../features/chat/chat_list_screen.dart';
import '../features/chat/chat_screen.dart';
import '../features/complaints/complaint_list_screen.dart';
import '../features/complaints/raise_complaint_screen.dart';
import '../features/complaints/admin_complaint_list_screen.dart';
import '../features/booking/booking_history_screen.dart';
import '../features/inventory/inventory_screen.dart';
import '../features/studios/presentation/screens/studios_list_screen.dart';

class MakeUpWallahApp extends StatelessWidget {
  const MakeUpWallahApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Load environment for runtime; fallback handled in Env
    // Try to load dev env; ignore errors in release builds
    dotenv.load(fileName: 'assets/env/.env.development').catchError((_) {});
    final router = GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          name: 'onboarding',
          builder: (context, state) => const OnboardingScreen(),
        ),
        GoRoute(
          path: '/login',
          name: 'login',
          builder: (context, state) => const PremiumLoginScreen(),
        ),
        GoRoute(
          path: '/otp',
          name: 'otp',
          builder: (context, state) {
            final phone = state.extra as String? ?? '';
            return OtpScreen(phoneNumber: phone);
          },
        ),
        GoRoute(
          path: '/role-selection',
          name: 'role-selection',
          builder: (context, state) => const RoleSelectionScreen(),
        ),
        GoRoute(
          path: '/admin/dashboard',
          name: 'admin-dashboard',
          builder: (context, state) => const AdminDashboardScreen(),
        ),
        GoRoute(
          path: '/artist/home',
          name: 'artist-home',
          builder: (context, state) => const ArtistHomeScreen(),
        ),
        GoRoute(
          path: '/customer/home',
          name: 'customer-home',
          builder: (context, state) => const CustomerHomeScreen(),
        ),
        GoRoute(
          path: '/artist/:id',
          name: 'artist-profile',
          builder: (context, state) {
            final id = state.pathParameters['id']!;
            final artistData = state.extra as Map<String, dynamic>?;
            return ArtistProfileScreen(artistId: id, artistData: artistData);
          },
        ),
        GoRoute(
          path: '/booking/:artistId',
          name: 'booking',
          builder: (context, state) {
            final artistId = state.pathParameters['artistId']!;
            final extra = state.extra as Map<String, dynamic>;
            return BookingScreen(
              artistId: artistId,
              serviceId: extra['serviceId'] as String,
              serviceName: extra['serviceName'] as String,
              price: extra['price'] as String,
            );
          },
        ),
        GoRoute(
          path: '/profile',
          name: 'profile',
          builder: (context, state) => const ProfileScreen(),
        ),
        GoRoute(
          path: '/subscription',
          name: 'subscription',
          builder: (context, state) => const SubscriptionScreen(),
        ),
        GoRoute(
          path: '/notifications',
          name: 'notifications',
          builder: (context, state) => const NotificationScreen(),
        ),
        GoRoute(
          path: '/write-review/:bookingId',
          name: 'write-review',
          builder: (context, state) => WriteReviewScreen(bookingId: state.pathParameters['bookingId']!),
        ),
        GoRoute(
          path: '/chat',
          name: 'chat-list',
          builder: (context, state) => const ChatListScreen(),
        ),
        GoRoute(
          path: '/chat/:roomId',
          name: 'chat-room',
          builder: (context, state) => ChatScreen(roomId: state.pathParameters['roomId']!),
        ),
        GoRoute(
          path: '/complaints',
          name: 'complaints',
          builder: (context, state) => const ComplaintListScreen(),
        ),
        GoRoute(
          path: '/raise-complaint/:bookingId',
          name: 'raise-complaint',
          builder: (context, state) => RaiseComplaintScreen(bookingId: state.pathParameters['bookingId']!),
        ),
        GoRoute(
          path: '/admin/complaints',
          name: 'admin-complaints',
          builder: (context, state) => const AdminComplaintListScreen(),
        ),
        GoRoute(
          path: '/bookings',
          name: 'bookings',
          builder: (context, state) => const BookingHistoryScreen(),
        ),
        GoRoute(
          path: '/inventory',
          name: 'inventory',
          builder: (context, state) => const InventoryScreen(),
        ),
        GoRoute(
          path: '/studios',
          name: 'studios',
          builder: (context, state) => const StudiosListScreen(),
        ),
import '../features/travel/presentation/screens/retreats_list_screen.dart';

// ... (imports)

// Inside routes:
        GoRoute(
          path: '/travel/retreats',
          name: 'retreats',
          builder: (context, state) => const RetreatsListScreen(),
        ),
import '../features/discovery/presentation/screens/social_feed_screen.dart';

// ... (imports)

// Inside routes:
        GoRoute(
          path: '/discovery',
          name: 'discovery',
          builder: (context, state) => const SocialFeedScreen(),
        ),
      ],
    );

    return BlocProvider(
      create: (context) => AuthBloc()..add(const AuthEvent.checkAuth()),
      child: MaterialApp.router(
        title: 'MakeUpWallah',
        theme: AppTheme.lightTheme,
        routerConfig: router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
