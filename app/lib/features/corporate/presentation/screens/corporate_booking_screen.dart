import 'package:flutter/material.dart';
import '../../data/corporate_repository.dart';
import '../../data/corporate_models.dart';

class CorporateBookingScreen extends StatefulWidget {
  const CorporateBookingScreen({super.key});

  @override
  State<CorporateBookingScreen> createState() => _CorporateBookingScreenState();
}

class _CorporateBookingScreenState extends State<CorporateBookingScreen> {
  final _formKey = GlobalKey<FormState>();
  final _corpIdController = TextEditingController(); // In real app, this might come from auth/selection
  final _locationController = TextEditingController();
  final _paxController = TextEditingController();
  
  String _eventType = 'Wedding';
  DateTime _eventDate = DateTime.now().add(const Duration(days: 7));
  bool _isLoading = false;
  final CorporateRepository _repository = CorporateRepository();

  final List<String> _eventTypes = ['Wedding', 'Fashion Show', 'Corporate Shoot', 'TV/Film Production', 'Other'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Event Booking Request')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               // For now, we simulate Client ID manually or hardcode for demo. 
               // In production, this would be auto-filled if logged in, or part of the "Guest Inquiry" flow.
               // We'll keep it as a text field for "Client ID (Reference)" for now.
               TextFormField(
                controller: _corpIdController,
                decoration: const InputDecoration(labelText: 'Corporate Client ID (If registered)', border: OutlineInputBorder(), hintText: 'Enter UUID or "GUEST-INQUIRY"'),
                validator: (v) => v!.isEmpty ? 'Required (Use GUEST-INQUIRY if new)' : null,
              ),
              const SizedBox(height: 16),
              
              DropdownButtonFormField<String>(
                value: _eventType,
                decoration: const InputDecoration(labelText: 'Event Type', border: OutlineInputBorder()),
                items: _eventTypes.map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
                onChanged: (v) => setState(() => _eventType = v!),
              ),
              const SizedBox(height: 16),
              
              InkWell(
                onTap: () async {
                  final picked = await showDatePicker(
                    context: context,
                    initialDate: _eventDate,
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now().add(const Duration(days: 365)),
                  );
                  if (picked != null) setState(() => _eventDate = picked);
                },
                child: InputDecorator(
                  decoration: const InputDecoration(labelText: 'Event Date', border: OutlineInputBorder(), suffixIcon: Icon(Icons.calendar_today)),
                  child: Text('${_eventDate.day}/${_eventDate.month}/${_eventDate.year}'),
                ),
              ),
              const SizedBox(height: 16),
              
              TextFormField(
                controller: _locationController,
                decoration: const InputDecoration(labelText: 'Event Location/Venue', border: OutlineInputBorder()),
                validator: (v) => v!.isEmpty ? 'Required' : null,
              ),
              const SizedBox(height: 16),
              
              TextFormField(
                controller: _paxController,
                decoration: const InputDecoration(labelText: 'Approx. Number of Artistes Required', border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
                validator: (v) => v!.isEmpty ? 'Required' : null,
              ),
              const SizedBox(height: 32),
              
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: _isLoading ? null : _submit,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple, foregroundColor: Colors.white),
                  child: _isLoading 
                    ? const SizedBox(width: 24, height: 24, child: CircularProgressIndicator(color: Colors.white))
                    : const Text('Submit Request'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _submit() async {
    if (_formKey.currentState!.validate()) {
      setState(() => _isLoading = true);
      try {
        final booking = BulkBooking(
          corporateId: _corpIdController.text,
          eventType: _eventType,
          eventDate: _eventDate,
          location: _locationController.text,
          paxCount: int.tryParse(_paxController.text) ?? 1,
        );
        
        await _repository.requestBooking(booking);
        
        if (mounted) {
          showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: const Text('Request Received'),
              content: const Text('We have received your booking inquiry. Our events team will evaluate availability and send a quote to your registered email.'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context); // Close dialog
                    Navigator.pop(context); // Close screen
                  },
                  child: const Text('OK'),
                )
              ],
            ),
          );
        }
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error: $e')));
        }
      } finally {
        if (mounted) setState(() => _isLoading = false);
      }
    }
  }
}
