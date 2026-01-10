import 'package:flutter/material.dart';
import '../../data/squad_repository.dart';
import 'package:makeupwala/core/network/api_client.dart';

class SquadBuilderScreen extends StatefulWidget {
  const SquadBuilderScreen({Key? key}) : super(key: key);

  @override
  _SquadBuilderScreenState createState() => _SquadBuilderScreenState();
}

class _SquadBuilderScreenState extends State<SquadBuilderScreen> {
  final _formKey = GlobalKey<FormState>();
  final _eventNameController = TextEditingController();
  final _addressController = TextEditingController();
  DateTime? _selectedDate;
  int _artistsNeeded = 1;
  late SquadRepository _repository;

  @override
  void initState() {
    super.initState();
    // In a real app, use GetIt or Provider
    _repository = SquadRepository(ApiClient()); 
  }

  Future<void> _submit() async {
    if (_formKey.currentState!.validate() && _selectedDate != null) {
      try {
        await _repository.createSquad({
          'event_name': _eventNameController.text,
          'event_type': 'WEDDING', // Dropdown later
          'event_date': _selectedDate!.toIso8601String(),
          'venue_address': _addressController.text,
          'total_artists_needed': _artistsNeeded,
        });
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Squad Request Created!')));
        Navigator.pop(context);
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error: $e')));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Build Your Squad')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _eventNameController,
                decoration: const InputDecoration(labelText: 'Event Name (e.g., Sonia\'s Wedding)'),
                validator: (v) => v!.isEmpty ? 'Required' : null,
              ),
              const SizedBox(height: 16),
              ListTile(
                title: Text(_selectedDate == null ? 'Select Date' : 'Date: ${_selectedDate.toString().split(' ')[0]}'),
                trailing: const Icon(Icons.calendar_today),
                onTap: () async {
                  final date = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now().add(const Duration(days: 365)),
                  );
                  if (date != null) setState(() => _selectedDate = date);
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _addressController,
                decoration: const InputDecoration(labelText: 'Venue Address'),
                maxLines: 3,
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Text('Artists Needed:'),
                  const SizedBox(width: 16),
                  DropdownButton<int>(
                    value: _artistsNeeded,
                    items: [1, 2, 3, 4, 5, 10].map((e) => DropdownMenuItem(value: e, child: Text('$e Artists'))).toList(),
                    onChanged: (v) => setState(() => _artistsNeeded = v!),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: _submit,
                style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 50)),
                child: const Text('Create Squad Request'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
