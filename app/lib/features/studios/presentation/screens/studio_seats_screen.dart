import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/studio_repository.dart';
import '../../data/models/studio_model.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import '../../bloc/seat_manager/studio_seat_manager_bloc.dart';
import '../../bloc/seat_manager/studio_seat_manager_event.dart';
import '../../bloc/seat_manager/studio_seat_manager_state.dart';

class StudioSeatsScreen extends StatelessWidget {
  final String studioId;
  final StudioRepository repository;

  const StudioSeatsScreen({
    super.key,
    required this.studioId,
    required this.repository,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StudioSeatManagerBloc(repository: repository)
        ..add(StudioSeatManagerEvent.loadSeats(studioId)),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Manage Seats'),
          actions: [
            Builder(
              builder: (context) => IconButton(
                icon: const Icon(Icons.refresh),
                onPressed: () => context
                    .read<StudioSeatManagerBloc>()
                    .add(StudioSeatManagerEvent.loadSeats(studioId)),
              ),
            ),
          ],
        ),
        body: BlocConsumer<StudioSeatManagerBloc, StudioSeatManagerState>(
          listener: (context, state) {
            state.maybeWhen(
              actionSuccess: (message) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
              },
              error: (message) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message), backgroundColor: Colors.red));
              },
              orElse: () {},
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (seats) {
                if (seats.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.chair, size: 64, color: Colors.grey),
                        const SizedBox(height: 16),
                        const Text('No seats configured for this studio.'),
                        const SizedBox(height: 8),
                        ElevatedButton(
                          onPressed: () => _showSeatDialog(context),
                          child: const Text('Add Your First Seat'),
                        ),
                      ],
                    ),
                  );
                }
                return GridView.builder(
                  padding: const EdgeInsets.all(16),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.8,
                  ),
                  itemCount: seats.length,
                  itemBuilder: (context, index) {
                    final seat = seats[index];
                    return _SeatCard(
                      seat: seat,
                      studioId: studioId,
                    );
                  },
                );
              },
              error: (message) => Center(child: Text('Error: $message')),
              orElse: () => const Center(child: CircularProgressIndicator()),
            );
          },
        ),
        floatingActionButton: Builder(
          builder: (context) => FloatingActionButton(
            onPressed: () => _showSeatDialog(context),
            backgroundColor: AppColors.primary,
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }

  void _showSeatDialog(BuildContext context, {StudioSeat? seat}) {
    final isEditing = seat != null;
    final seatNumberController = TextEditingController(text: seat?.seatNumber);
    final typeController = TextEditingController(text: seat?.type);

    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(isEditing ? 'Edit Seat' : 'Add New Seat'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: seatNumberController,
              decoration: const InputDecoration(labelText: 'Seat Number (e.g. A1)'),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: typeController,
              decoration: const InputDecoration(labelText: 'Type (e.g. Standard, Premium)'),
            ),
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(dialogContext), child: const Text('Cancel')),
          ElevatedButton(
            onPressed: () {
              final data = {
                'seat_number': seatNumberController.text,
                'type': typeController.text,
              };
              if (isEditing) {
                context.read<StudioSeatManagerBloc>().add(StudioSeatManagerEvent.updateSeat(studioId, seat.id, data));
              } else {
                context.read<StudioSeatManagerBloc>().add(StudioSeatManagerEvent.addSeat(studioId, data));
              }
              Navigator.pop(dialogContext);
            },
            child: Text(isEditing ? 'Update' : 'Add'),
          ),
        ],
      ),
    );
  }
}

class _SeatCard extends StatelessWidget {
  final StudioSeat seat;
  final String studioId;

  const _SeatCard({required this.seat, required this.studioId});

  @override
  Widget build(BuildContext context) {
    final color = seat.isAvailable ? Colors.green : Colors.red;
    
    return GestureDetector(
      onTap: () => _showOptions(context),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.chair, size: 40, color: color),
                  const SizedBox(height: 8),
                  Text(
                    seat.seatNumber,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    seat.type ?? 'Standard',
                    style: TextStyle(color: Colors.grey[600], fontSize: 12),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                      color: color.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      seat.isAvailable ? 'Available' : 'Occupied',
                      style: TextStyle(color: color, fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: IconButton(
                icon: const Icon(Icons.more_vert, size: 16),
                onPressed: () => _showOptions(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (bottomSheetContext) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: const Icon(Icons.edit, color: Colors.blue),
            title: const Text('Edit Seat'),
            onTap: () {
              Navigator.pop(bottomSheetContext);
              _showSeatDialog(context, seat: seat);
            },
          ),
          ListTile(
            leading: const Icon(Icons.delete, color: Colors.red),
            title: const Text('Delete Seat'),
            onTap: () {
              Navigator.pop(bottomSheetContext);
              _confirmDelete(context);
            },
          ),
        ],
      ),
    );
  }

  void _showSeatDialog(BuildContext context, {StudioSeat? seat}) {
    // Reusing the dialog logic from parent requires context passing or callback. 
    // Since we are inside _SeatCard, we can access the bloc via context.read
    // But we need the screen's _showSeatDialog code for UI consistency.
    // For simplicity, I'll duplicate the simple dialog here or better yet, assume the user invokes it from the parent widget if I exposed it.
    // Let's reimplement locally for the card action.
    
    final seatNumberController = TextEditingController(text: seat?.seatNumber);
    final typeController = TextEditingController(text: seat?.type);

    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Edit Seat'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: seatNumberController,
              decoration: const InputDecoration(labelText: 'Seat Number'),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: typeController,
              decoration: const InputDecoration(labelText: 'Type'),
            ),
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(dialogContext), child: const Text('Cancel')),
          ElevatedButton(
            onPressed: () {
              final data = {
                'seat_number': seatNumberController.text,
                'type': typeController.text,
              };
              context.read<StudioSeatManagerBloc>().add(StudioSeatManagerEvent.updateSeat(studioId, seat!.id, data));
              Navigator.pop(dialogContext);
            },
             child: const Text('Update'),
          ),
        ],
      ),
    );
  }

  void _confirmDelete(BuildContext context) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Delete Seat?'),
        content: Text('Are you sure you want to delete ${seat.seatNumber}?'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(dialogContext), child: const Text('Cancel')),
          TextButton(
            onPressed: () {
              context.read<StudioSeatManagerBloc>().add(StudioSeatManagerEvent.deleteSeat(studioId, seat.id));
              Navigator.pop(dialogContext);
            },
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: const Text('Delete'),
          ),
        ],
      ),
    );
  }
}
