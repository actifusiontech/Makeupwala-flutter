import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../shared/theme/app_theme.dart';
import '../features/onboarding/onboarding_screen.dart';
import '../features/auth/premium_login_screen.dart';
import '../features/auth/user_registration_screen.dart';
import '../features/auth/otp_screen.dart';
import '../features/auth/role_selection_screen.dart';
import '../features/auth/bloc/auth_bloc.dart';
import '../features/home/admin_dashboard_screen.dart';
import '../features/home/artist_home_screen.dart';
import '../features/home/customer_home_screen.dart';
import '../features/home/brand_home_screen.dart';
import '../features/studios/presentation/screens/studio_home_screen.dart';
import '../features/studios/presentation/screens/studio_onboarding_screen.dart';
import '../features/education/presentation/screens/academy_home_screen.dart';
import '../features/education/presentation/screens/academy_onboarding_screen.dart';
import '../features/planner/presentation/screens/planner_home_screen.dart';
import '../features/planner/presentation/screens/planner_onboarding_screen.dart';
import '../features/planner/presentation/screens/create_destination_booking_screen.dart';
import '../features/artist/artist_profile_screen.dart';
import '../features/artist/availability_screen.dart';
import '../features/artist/artist_onboarding_screen.dart';
import '../features/artist/manage_services_screen.dart';

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
import '../features/booking/presentation/booking_confirmation_screen.dart';
import '../features/booking/presentation/booking_details_screen.dart';
import '../features/inventory/inventory_screen.dart';
import '../features/studios/presentation/screens/studios_list_screen.dart';
import '../features/auth/kyc_deeplink_handler.dart';
import '../features/travel/presentation/screens/retreats_list_screen.dart';
import '../features/discovery/presentation/screens/social_feed_screen.dart';
import '../features/education/presentation/screens/leaderboard_screen.dart';
import '../features/education/presentation/screens/courses_list_screen.dart';
import '../features/education/presentation/screens/add_lesson_screen.dart';
import '../features/commerce/presentation/screens/brand_dashboard_screen.dart';
import '../features/commerce/presentation/screens/brand_campaign_list_screen.dart';
import '../features/commerce/presentation/screens/orders_list_screen.dart';
import '../features/commerce/bloc/commerce_bloc.dart';
import '../features/commerce/bloc/commerce_event.dart';
import '../features/commerce/data/commerce_repository.dart';
import '../features/commerce/data/brand_repository.dart';
import '../features/commerce/bloc/brand_bloc.dart';
import '../features/commerce/bloc/brand_event.dart';
import '../features/commerce/presentation/screens/campaign_explorer_screen.dart';
import '../features/commerce/presentation/screens/pro_store_screen.dart';
import '../features/wallet/presentation/screens/wallet_screen.dart';
import '../features/wallet/presentation/screens/bank_linking_screen.dart';
import '../features/wallet/bloc/wallet_bloc.dart';
import '../features/wallet/bloc/wallet_event.dart';
import '../features/wallet/data/wallet_repository.dart';
import '../features/safety/bloc/safety_bloc.dart';
import '../features/safety/bloc/safety_event.dart';
import '../features/safety/data/safety_repository.dart';
import '../features/safety/presentation/widgets/community_guardian_overlay.dart';
import '../shared/widgets/debug_role_switcher.dart';
import '../features/education/bloc/education_bloc.dart';
import '../features/education/bloc/education_event.dart';
import '../features/education/data/education_repository.dart';
import '../core/network/api_client.dart';
import '../features/favorites/data/favorites_repository.dart';
import '../features/favorites/presentation/bloc/favorites_bloc.dart';
import '../features/favorites/presentation/bloc/favorites_event.dart';
import '../features/favorites/presentation/screens/favorites_screen.dart';

class MakeUpWallahApp extends StatelessWidget {
  const MakeUpWallahApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Load environment for runtime; fallback handled in Env
    // Try to load dev env; ignore errors in release builds
    dotenv.load(fileName: 'assets/env/.env.development').catchError((_) {});
    final apiClient = ApiClient();
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
            String phone = '';
            bool isRegistration = false;
            
            if (state.extra is Map) {
              final map = state.extra as Map;
              phone = map['phone'] as String? ?? '';
              isRegistration = map['isRegistration'] as bool? ?? false;
            } else if (state.extra is String) {
              phone = state.extra as String;
            }
            
            return OtpScreen(phoneNumber: phone, isRegistration: isRegistration);
          },
        ),
        GoRoute(
          path: '/register',
          name: 'register',
          builder: (context, state) => const UserRegistrationScreen(),
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
          path: '/artist/onboarding',
          name: 'artist-onboarding',
          builder: (context, state) => const ArtistOnboardingScreen(),
        ),
        GoRoute(
          path: '/artist/manage-services',
          name: 'manage-services',
          builder: (context, state) => const ManageServicesScreen(),
        ),
        GoRoute(
          path: '/customer/home',
          name: 'customer-home',
          builder: (context, state) => const CustomerHomeScreen(),
        ),
        GoRoute(
          path: '/brand/home',
          name: 'brand-home',
          builder: (context, state) => const BrandHomeScreen(),
        ),
        GoRoute(
          path: '/studio/onboarding',
          name: 'studio-onboarding',
          builder: (context, state) => const StudioOnboardingScreen(),
        ),
        GoRoute(
          path: '/studio/home',
          name: 'studio-home',
          builder: (context, state) => const StudioHomeScreen(),
        ),
        GoRoute(
          path: '/academy/onboarding',
          name: 'academy-onboarding',
          builder: (context, state) => const AcademyOnboardingScreen(),
        ),
        GoRoute(
          path: '/academy/home',
          name: 'academy-home',
          builder: (context, state) => const AcademyHomeScreen(),
        ),
        GoRoute(
          path: '/education/courses',
          name: 'courses-list',
          builder: (context, state) => const CoursesListScreen(),
        ),
        GoRoute(
          path: '/education/courses/:courseId/add-lesson',
          name: 'add-lesson',
          builder: (context, state) => AddLessonScreen(courseId: state.pathParameters['courseId']!),
        ),
        GoRoute(
          path: '/planner/onboarding',
          name: 'planner-onboarding',
          builder: (context, state) => const PlannerOnboardingScreen(),
        ),
        GoRoute(
          path: '/planner/home',
          name: 'planner-home',
          builder: (context, state) => const PlannerHomeScreen(),
        ),
        GoRoute(
          path: '/planner/create-logistics',
          name: 'create-logistics',
          builder: (context, state) => const CreateDestinationBookingScreen(),
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
          path: '/booking/confirmation',
          name: 'booking-confirmation',
          builder: (context, state) {
            final extra = state.extra as Map<String, dynamic>;
            return BookingConfirmationScreen(
              bookingId: extra['bookingId'] as String,
              serviceName: extra['serviceName'] as String,
              artistName: extra['artistName'] as String,
              bookingDate: extra['bookingDate'] as DateTime,
              bookingTime: extra['bookingTime'] as String,
              amountPaid: (extra['amountPaid'] as num).toDouble(),
              paymentId: extra['paymentId'] as String,
              isDeposit: extra['isDeposit'] as bool? ?? false,
            );
          },
        ),
        GoRoute(
          path: '/booking/details/:id',
          name: 'booking-details',
          builder: (context, state) => BookingDetailsScreen(
            bookingId: state.pathParameters['id']!,
          ),
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
          path: '/favorites',
          builder: (context, state) => const FavoritesScreen(),
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
        GoRoute(
          path: '/kyc',
          name: 'kyc-deeplink',
          builder: (context, state) {
            final phone = state.uri.queryParameters['phone'];
            final leadId = state.uri.queryParameters['leadId'];
            return KYCDeepLinkHandler(
              phone: phone,
              leadId: leadId,
            );
          },
        ),
        GoRoute(
          path: '/availability',
          name: 'availability',
          builder: (context, state) => const AvailabilityScreen(),
        ),
        GoRoute(
          path: '/travel/retreats',
          name: 'retreats',
          builder: (context, state) => const RetreatsListScreen(),
        ),
        GoRoute(
          path: '/discovery',
          name: 'discovery',
          builder: (context, state) => const SocialFeedScreen(),
        ),
        GoRoute(
          path: '/education/leaderboard',
          name: 'leaderboard',
          builder: (context, state) => const LeaderboardScreen(),
        ),
        GoRoute(
          path: '/wallet',
          name: 'wallet',
          builder: (context, state) => BlocProvider(
            create: (context) => WalletBloc(
              repository: WalletRepository(apiClient),
            )..add(const WalletEvent.fetchWalletDetails()),
            child: const WalletScreen(),
          ),
        ),
        GoRoute(
          path: '/bank-linking',
          name: 'bank-linking',
          builder: (context, state) => BlocProvider(
            create: (context) => WalletBloc(
              repository: WalletRepository(apiClient),
            )..add(const WalletEvent.fetchWalletDetails()),
            child: const BankLinkingScreen(),
          ),
        ),
        GoRoute(
          path: '/pro-store',
          name: 'pro-store',
          builder: (context, state) => const ProStoreScreen(),
        ),
        GoRoute(
          path: '/orders',
          name: 'orders',
          builder: (context, state) => const OrdersListScreen(),
        ),
        GoRoute(
          path: '/brand-portal',
          name: 'brand-portal',
          builder: (context, state) => const BrandDashboardScreen(),
        ),
        GoRoute(
          path: '/brand-campaigns',
          name: 'brand-campaigns',
          builder: (context, state) => const BrandCampaignListScreen(),
        ),
        GoRoute(
          path: '/campaign-explorer',
          name: 'campaign-explorer',
          builder: (context, state) => const CampaignExplorerScreen(),
        ),
      ],
    );

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc()..add(const AuthEvent.checkAuth()),
        ),
        BlocProvider(
          create: (context) => CommerceBloc(
            repository: CommerceRepository(apiClient.dio),
          )..add(const CommerceEvent.fetchProducts()),
        ),
        BlocProvider(
          create: (context) => BrandBloc(
            repository: BrandRepository(apiClient.dio),
          )..add(const BrandEvent.fetchMetrics()),
        ),
        BlocProvider(
          create: (context) => FavoritesBloc(repository: FavoritesRepository())..add(const FavoritesEvent.loadFavorites()),
        ),
        BlocProvider(
          create: (context) => EducationBloc(
            repository: EducationRepository(apiClient),
          )..add(const EducationEvent.fetchDashboard()),
        ),
        BlocProvider(
          create: (context) => SafetyBloc(
            repository: SafetyRepository(apiClient.dio),
          )..add(const SafetyEvent.fetchEmergencyContacts()),
        ),
      ],
      child: MaterialApp.router(
        title: 'MakeUpWallah',
        theme: AppTheme.lightTheme,
        routerConfig: router,
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          return Stack(
            children: [
              if (child != null) child,
              const CommunityGuardianOverlay(),
              const DebugRoleSwitcher(),
            ],
          );
        },
      ),
    );
  }
}
