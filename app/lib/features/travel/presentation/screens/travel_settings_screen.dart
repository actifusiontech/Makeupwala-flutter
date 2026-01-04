import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../domain/travel_models.dart';
import '../data/travel_repository.dart';

class TravelSettingsScreen extends StatefulWidget {
  final TravelRepository repository;

  const TravelSettingsScreen({
    Key? key,
    required this.repository,
  }) : super(key: key);

  @override
  State<TravelSettingsScreen> createState() => _TravelSettingsScreenState();
}

class _TravelSettingsScreenState extends State<TravelSettingsScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = true;
  bool _isSaving = false;
  TravelProfile? _existingProfile;

  // Form fields
  bool _isWillingToTravel = false;
  final _distanceController = TextEditingController();
  final _passportNumberController = TextEditingController();
  DateTime? _passportExpiry;
  final _passportCountryController = TextEditingController();
  final List<String> _visaCountries = [];
  final _rateMultiplierController = TextEditingController(text: '1.5');
  AccommodationPreference _accommodation = AccommodationPreference.fourStar;
  final _dietaryController = TextEditingController();
  final _emergencyNameController = TextEditingController();
  final _emergencyPhoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadProfile();
  }

  Future<void> _loadProfile() async {
    try {
      final profile = await widget.repository.getTravelProfile();
      setState(() {
        _existingProfile = profile;
        _isWillingToTravel = profile.isWillingToTravel;
        _distanceController.text = profile.maxTravelDistanceKm?.toString() ?? '';
        _passportNumberController.text = profile.passportNumber ?? '';
        _passportExpiry = profile.passportExpiry;
        _passportCountryController.text = profile.passportCountry ?? '';
        _visaCountries.addAll(profile.visaCountries ?? []);
        _rateMultiplierController.text = profile.travelRateMultiplier;
        _accommodation = AccommodationPreference.fromValue(
            profile.accommodationPreference);
        _dietaryController.text = profile.dietaryRestrictions ?? '';
        _emergencyNameController.text = profile.emergencyContactName ?? '';
        _emergencyPhoneController.text = profile.emergencyContactPhone ?? '';
        _isLoading = false;
      });
    } catch (e) {
      // Profile doesn't exist yet
      setState(() => _isLoading = false);
    }
  }

  Future<void> _saveProfile() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isSaving = true);

    try {
      final request = CreateTravelProfileRequest(
        isWillingToTravel: _isWillingToTravel,
        maxTravelDistanceKm: int.tryParse(_distanceController.text),
        passportNumber: _passportNumberController.text.isEmpty
            ? null
            : _passportNumberController.text,
        passportExpiry: _passportExpiry,
        passportCountry: _passportCountryController.text.isEmpty
            ? null
            : _passportCountryController.text,
        visaCountries: _visaCountries.isEmpty ? null : _visaCountries,
        travelRateMultiplier: _rateMultiplierController.text,
        accommodationPreference: _accommodation.value,
        dietaryRestrictions: _dietaryController.text.isEmpty
            ? null
            : _dietaryController.text,
        emergencyContactName: _emergencyNameController.text.isEmpty
            ? null
            : _emergencyNameController.text,
        emergencyContactPhone: _emergencyPhoneController.text.isEmpty
            ? null
            : _emergencyPhoneController.text,
      );

      if (_existingProfile == null) {
        await widget.repository.createTravelProfile(request);
      } else {
        await widget.repository.updateTravelProfile(request);
      }

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Travel profile saved successfully')),
        );
        Navigator.pop(context);
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: ${e.toString()}')),
        );
      }
    } finally {
      if (mounted) setState(() => _isSaving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return Scaffold(
        appBar: AppBar(title: const Text('Travel Settings')),
        body: const Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Travel Settings'),
        actions: [
          if (_isSaving)
            const Center(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
              ),
            )
          else
            IconButton(
              icon: const Icon(Icons.save),
              onPressed: _saveProfile,
            ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // Willing to Travel
            SwitchListTile(
              title: const Text('Willing to Travel'),
              subtitle: const Text('Available for destination weddings'),
              value: _isWillingToTravel,
              onChanged: (value) => setState(() => _isWillingToTravel = value),
            ),
            const Divider(),

            // Travel Distance
            TextFormField(
              controller: _distanceController,
              decoration: const InputDecoration(
                labelText: 'Max Travel Distance (km)',
                hintText: 'e.g., 5000',
                prefixIcon: Icon(Icons.map),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),

            // Rate Multiplier
            TextFormField(
              controller: _rateMultiplierController,
              decoration: const InputDecoration(
                labelText: 'Travel Rate Multiplier',
                hintText: 'e.g., 1.5',
                prefixIcon: Icon(Icons.attach_money),
                helperText: 'Multiplier for travel bookings (minimum 1.0)',
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              validator: (value) {
                if (value == null || value.isEmpty) return null;
                final multiplier = double.tryParse(value);
                if (multiplier == null || multiplier < 1.0) {
                  return 'Must be at least 1.0';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),

            // Accommodation Preference
            DropdownButtonFormField<AccommodationPreference>(
              value: _accommodation,
              decoration: const InputDecoration(
                labelText: 'Accommodation Preference',
                prefixIcon: Icon(Icons.hotel),
              ),
              items: AccommodationPreference.values
                  .map((pref) => DropdownMenuItem(
                        value: pref,
                        child: Text(pref.label),
                      ))
                  .toList(),
              onChanged: (value) {
                if (value != null) setState(() => _accommodation = value);
              },
            ),
            const SizedBox(height: 24),

            // Passport Section
            Text(
              'Passport Information',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            TextFormField(
              controller: _passportNumberController,
              decoration: const InputDecoration(
                labelText: 'Passport Number',
                prefixIcon: Icon(Icons.badge),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _passportCountryController,
              decoration: const InputDecoration(
                labelText: 'Passport Country',
                hintText: 'e.g., IND',
                prefixIcon: Icon(Icons.flag),
              ),
            ),
            const SizedBox(height: 16),
            ListTile(
              leading: const Icon(Icons.calendar_today),
              title: const Text('Passport Expiry'),
              subtitle: Text(_passportExpiry != null
                  ? DateFormat('MMM dd, yyyy').format(_passportExpiry!)
                  : 'Not set'),
              onTap: () async {
                final date = await showDatePicker(
                  context: context,
                  initialDate: _passportExpiry ?? DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now().add(const Duration(days: 3650)),
                );
                if (date != null) {
                  setState(() => _passportExpiry = date);
                }
              },
            ),
            const SizedBox(height: 24),

            // Dietary Restrictions
            TextFormField(
              controller: _dietaryController,
              decoration: const InputDecoration(
                labelText: 'Dietary Restrictions',
                hintText: 'e.g., Vegetarian, Vegan',
                prefixIcon: Icon(Icons.restaurant),
              ),
              maxLines: 2,
            ),
            const SizedBox(height: 24),

            // Emergency Contact
            Text(
              'Emergency Contact',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            TextFormField(
              controller: _emergencyNameController,
              decoration: const InputDecoration(
                labelText: 'Contact Name',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _emergencyPhoneController,
              decoration: const InputDecoration(
                labelText: 'Contact Phone',
                hintText: '+91-9876543210',
                prefixIcon: Icon(Icons.phone),
              ),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 32),

            // Save Button
            ElevatedButton(
              onPressed: _isSaving ? null : _saveProfile,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: _isSaving
                    ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : Text(_existingProfile == null
                        ? 'Create Travel Profile'
                        : 'Update Travel Profile'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _distanceController.dispose();
    _passportNumberController.dispose();
    _passportCountryController.dispose();
    _rateMultiplierController.dispose();
    _dietaryController.dispose();
    _emergencyNameController.dispose();
    _emergencyPhoneController.dispose();
    super.dispose();
  }
}
