import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:app/features/travel/domain/travel_models.dart';
import 'package:app/features/travel/data/travel_repository.dart';
import 'package:app/core/network/api_client.dart';

import 'package:app/features/travel/presentation/bloc/travel_bloc.dart';
import 'package:app/features/travel/presentation/bloc/travel_event.dart';
import 'package:app/features/travel/presentation/bloc/travel_state.dart';
import 'package:app/shared/widgets/shimmer_loaders.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'dart:ui';

class RetreatsListScreen extends StatelessWidget {
  const RetreatsListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TravelBloc(
        repository: TravelRepository(ApiClient().dio),
      )..add(const TravelEvent.fetchRetreats()),
      child: const _RetreatsListView(),
    );
  }
}

class _RetreatsListView extends StatelessWidget {
  const _RetreatsListView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Global Retreats'),
        backgroundColor: Colors.teal[800],
        foregroundColor: Colors.white,
      ),
      body: BlocConsumer<TravelBloc, TravelState>(
        listener: (context, state) {
          state.maybeWhen(
            success: (message) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message)),
            ),
            error: (message) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Error: $message')),
            ),
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => ListView.builder(
              padding: const EdgeInsets.all(AppSpacing.md),
              itemCount: 3,
              itemBuilder: (_, __) => Padding(
                padding: const EdgeInsets.only(bottom: AppSpacing.md),
                child: ShimmerLoaders.artistCard(),
              ),
            ),
            retreatsLoaded: (retreats) {
              return CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(AppSpacing.screenPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: AppSpacing.md),
                          _buildTravelHeroHeader(),
                          const SizedBox(height: AppSpacing.xl),
                          Text('Upcoming Retreats', style: AppTypography.titleLarge.copyWith(fontWeight: FontWeight.bold)),
                          const SizedBox(height: AppSpacing.sm),
                        ],
                      ),
                    ),
                  ),
                  if (retreats.isEmpty)
                    const SliverFillRemaining(
                      child: Center(child: Text('No upcoming retreats.')),
                    )
                  else
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.screenPadding),
                      sliver: SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) => _RetreatCard(retreat: retreats[index]),
                          childCount: retreats.length,
                        ),
                      ),
                    ),
                  const SliverToBoxAdapter(child: SizedBox(height: 100)),
                ],
              );
            },
            orElse: () => const Center(child: Text('Failed to load retreats')),
          );
        },
      ),
    );
  }

  Widget _buildTravelHeroHeader() {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
        image: const DecorationImage(
          image: AssetImage('assets/images/hero_customer.png'), // Using customer luxury as representative for travel
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.teal.withOpacity(0.3),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [
                  Colors.black.withOpacity(0.6),
                  Colors.transparent,
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppSpacing.xl),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.teal[400],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'GLOBAL RETREATS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ).animate().fadeIn(delay: 400.ms).scale(),
                const SizedBox(height: AppSpacing.sm),
                const Text(
                  'Explore World-Class\nExotic Destinations',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    height: 1.1,
                  ),
                ).animate().fadeIn(delay: 600.ms).slideY(begin: 0.1),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _RetreatCard extends StatelessWidget {
  final RetreatModel retreat;
  const _RetreatCard({required this.retreat});

  @override
  Widget build(BuildContext context) {
    final dateRange = '${DateFormat('MMM d').format(retreat.startDate)} - ${DateFormat('MMM d, y').format(retreat.endDate)}';

    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
                child: Container(
                  height: 240,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                  ),
                  child: retreat.imageUrl.isNotEmpty
                      ? Image.network(
                          retreat.imageUrl,
                          fit: BoxFit.cover,
                          errorBuilder: (c, e, s) => const Center(child: Icon(Icons.broken_image)),
                        )
                      : Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.teal, Colors.tealAccent],
                            ),
                          ),
                          child: const Center(child: FaIcon(FontAwesomeIcons.umbrellaBeach, size: 60, color: Colors.white24)),
                        ),
                ),
              ),
              Positioned(
                top: 16,
                right: 16,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                      color: Colors.black.withOpacity(0.3),
                      child: Text(
                        dateRange,
                        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10, letterSpacing: 0.5),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 16,
                left: 16,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const FaIcon(FontAwesomeIcons.star, color: Colors.amber, size: 10),
                      const SizedBox(width: 4),
                      Text(
                        'FEATURED',
                        style: TextStyle(color: Colors.teal[800], fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ).animate().fadeIn(delay: 400.ms).scale(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  retreat.title,
                  style: AppTypography.titleLarge.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    FaIcon(FontAwesomeIcons.locationDot, size: 12, color: Colors.teal[400]),
                    const SizedBox(width: 6),
                    Text(retreat.location, style: TextStyle(color: Colors.grey[600], fontSize: 13, fontWeight: FontWeight.w500)),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('STARTING FROM', style: TextStyle(color: Colors.grey[500], fontSize: 10, letterSpacing: 1, fontWeight: FontWeight.bold)),
                        Text(
                          '₹${retreat.price.toStringAsFixed(0)}',
                          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.teal),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () => _showBookingDialog(context, retreat),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                        elevation: 0,
                      ),
                      child: const Text('Book Now', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showBookingDialog(BuildContext context, RetreatModel retreat) {
    final nameController = TextEditingController();
    final travelBloc = context.read<TravelBloc>();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Book ${retreat.title}'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Enter participant details to confirm booking.'),
            const SizedBox(height: 16),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Participant Name',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              if (nameController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Please enter a name')),
                );
                return;
              }
              travelBloc.add(TravelEvent.bookRetreat(retreat.id, nameController.text));
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.teal, foregroundColor: Colors.white),
            child: const Text('Confirm Booking'),
          ),
        ],
      ),
    );
  }
}
