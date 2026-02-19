import 'package:flutter/material.dart';
import '../../data/studio_repository.dart';
import '../../data/models/studio_model.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class StudioBookingScreen extends StatefulWidget {
  final StudioModel studio;

  const StudioBookingScreen({Key? key, required this.studio}) : super(key: key);

  @override
  State<StudioBookingScreen> createState() => _StudioBookingScreenState();
}

class _StudioBookingScreenState extends State<StudioBookingScreen> {
  DateTime _selectedDate = DateTime.now().add(const Duration(days: 1));
  int _durationHrs = 4;
  bool _isBooking = false;
  String? _selectedSeatId;
  late Future<List<StudioSeat>> _seatsFuture;

  @override
  void initState() {
    super.initState();
    _loadSeats();
  }

  void _loadSeats() {
    final repo = Provider.of<StudioRepository>(context, listen: false);
    _seatsFuture = repo.getAvailableSeats(widget.studio.id, _selectedDate);
  }

  @override
  Widget build(BuildContext context) {
    final totalPrice = widget.studio.hourlyRate * _durationHrs;

    return Scaffold(
      appBar: AppBar(
        title: Text('Book ${widget.studio.name}'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: ListTile(
                leading: const Icon(Icons.store, size: 40, color: Colors.purple),
                title: Text(widget.studio.name, style: const TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text('${widget.studio.city} • ₹${widget.studio.hourlyRate}/hr'),
              ),
            ),
            const SizedBox(height: 24),

            const Text('Select Date', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 8),
            InkWell(
              onTap: _pickDate,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.calendar_today, color: Colors.purple),
                    const SizedBox(width: 12),
                    Text(
                      DateFormat('EEE, MMM dd, yyyy').format(_selectedDate),
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),

            const Text('Select Seat', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 12),
            FutureBuilder<List<StudioSeat>>(
              future: _seatsFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                }
                final seats = snapshot.data ?? [];
                if (seats.isEmpty) {
                  return const Text('No seats available for this date.', style: TextStyle(color: Colors.red));
                }

                return Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: seats.map((seat) {
                    final isSelected = _selectedSeatId == seat.id;
                    return ChoiceChip(
                      label: Text(seat.seatNumber),
                      selected: isSelected,
                      onSelected: (selected) {
                        setState(() => _selectedSeatId = selected ? seat.id : null);
                      },
                      selectedColor: Colors.purple,
                      labelStyle: TextStyle(color: isSelected ? Colors.white : Colors.black),
                    );
                  }).toList(),
                );
              },
            ),
            const SizedBox(height: 24),

            const Text('Duration (Hours)', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Slider(
              value: _durationHrs.toDouble(),
              min: 4,
              max: 12,
              divisions: 8,
              label: '$_durationHrs hours',
              activeColor: Colors.purple,
              onChanged: (val) => setState(() => _durationHrs = val.toInt()),
            ),
            Center(child: Text('$_durationHrs Hours', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
            
            const SizedBox(height: 32),

            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.purple.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Total Price', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text(
                    '₹${totalPrice.toStringAsFixed(0)}',
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.purple),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: (_isBooking || _selectedSeatId == null) ? null : _confirmBooking,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                child: _isBooking
                    ? const CircularProgressIndicator(color: Colors.white)
                    : Text(_selectedSeatId == null ? 'Select a Seat' : 'Confirm Booking', 
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 90)),
    );
    if (picked != null) {
      setState(() {
        _selectedDate = picked;
        _selectedSeatId = null; // Reset seat selection when date changes
        _loadSeats();
      });
    }
  }

  Future<void> _confirmBooking() async {
    if (_selectedSeatId == null) return;
    
    setState(() => _isBooking = true);
    try {
      final repo = Provider.of<StudioRepository>(context, listen: false);
      await repo.bookSlot(widget.studio.id, _selectedDate, _durationHrs, seatId: _selectedSeatId);
      
      if (mounted) {
        showDialog(
          context: context,
          builder: (c) => AlertDialog(
            title: const Text('Booking Confirmed'),
            content: const Text('Your studio seat has been booked successfully.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(c); // Close Dialog
                  Navigator.pop(context); // Close Screen
                },
                child: const Text('OK'),
              ),
            ],
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error: $e')));
      }
    } finally {
      if (mounted) setState(() => _isBooking = false);
    }
  }
}
