import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/network/api_client.dart';
import '../../data/planner_repository.dart';
import '../../../../shared/widgets/custom_button.dart';
import '../../../../shared/widgets/custom_text_field.dart';
import '../../../../shared/theme/app_spacing.dart';

class CreateDestinationBookingScreen extends StatefulWidget {
  const CreateDestinationBookingScreen({super.key});

  @override
  State<CreateDestinationBookingScreen> createState() => _CreateDestinationBookingScreenState();
}

class _CreateDestinationBookingScreenState extends State<CreateDestinationBookingScreen> {
  final _formKey = GlobalKey<FormState>();
  final _countryController = TextEditingController();
  final _cityController = TextEditingController();
  final _guestsController = TextEditingController();
  final _notesController = TextEditingController();
  DateTime? _startDate;
  DateTime? _endDate;

  late PlannerRepository _repository;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _repository = PlannerRepository(ApiClient());
  }

  @override
  void dispose() {
    _countryController.dispose();
    _cityController.dispose();
    _guestsController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;
    if (_startDate == null || _endDate == null) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Select Dates")));
      return;
    }

    setState(() => _isLoading = true);

    try {
      await _repository.createDestinationBooking({
        'destination_country': _countryController.text,
        'destination_city': _cityController.text,
        'event_start_date': _startDate!.toIso8601String(),
        'event_end_date': _endDate!.toIso8601String(),
        'number_of_guests': int.tryParse(_guestsController.text) ?? 0,
        'event_type': 'WEDDING',
        'client_notes': _notesController.text,
        // Mock BookingID linking (In real app, select a core Booking/Lead first)
        'booking_id': '00000000-0000-0000-0000-000000000000', 
      });

      if (mounted) {
        context.pop(); // Go back to Home
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Logistics Created!")));
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Failed: $e')));
      }
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Logistics')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.screenPadding),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              CustomTextField(controller: _countryController, label: 'Destination Country'),
              const SizedBox(height: AppSpacing.md),
              CustomTextField(controller: _cityController, label: 'City'),
              const SizedBox(height: AppSpacing.md),
              CustomTextField(controller: _guestsController, label: 'Guests', keyboardType: TextInputType.number),
              const SizedBox(height: AppSpacing.md),
              CustomTextField(controller: _notesController, label: 'Notes', maxLines: 3),
              const SizedBox(height: AppSpacing.md),
              
              ListTile(
                title: Text(_startDate == null ? 'Select Start Date' : _startDate.toString().split(' ')[0]),
                trailing: const Icon(Icons.calendar_today),
                onTap: () async {
                  final d = await showDatePicker(context: context, firstDate: DateTime.now(), lastDate: DateTime(2030), initialDate: DateTime.now());
                  if (d != null) setState(() => _startDate = d);
                },
              ),
              ListTile(
                title: Text(_endDate == null ? 'Select End Date' : _endDate.toString().split(' ')[0]),
                trailing: const Icon(Icons.calendar_today),
                onTap: () async {
                  final d = await showDatePicker(context: context, firstDate: DateTime.now(), lastDate: DateTime(2030), initialDate: DateTime.now());
                  if (d != null) setState(() => _endDate = d);
                },
              ),

              const SizedBox(height: AppSpacing.xl),
              CustomButton(text: 'Save Logistics', isLoading: _isLoading, onPressed: _submit),
            ],
          ),
        ),
      ),
    );
  }
}
