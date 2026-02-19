import 'package:app/features/travel/presentation/bloc/travel_bloc.dart';
import 'package:app/features/travel/presentation/bloc/travel_event.dart';
import 'package:app/features/travel/presentation/bloc/travel_state.dart';
import 'package:image_picker/image_picker.dart';

class TravelSettingsScreen extends StatelessWidget {
  final TravelRepository repository;

  const TravelSettingsScreen({Key? key, required this.repository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TravelBloc(repository: repository)..add(const TravelEvent.fetchProfile()),
      child: const _TravelSettingsView(),
    );
  }
}

class _TravelSettingsView extends StatefulWidget {
  const _TravelSettingsView();

  @override
  State<_TravelSettingsView> createState() => _TravelSettingsViewState();
}

class _TravelSettingsViewState extends State<_TravelSettingsView> {
  final _formKey = GlobalKey<FormState>();
  
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

  final _flightPreferenceController = TextEditingController();
  String _equipmentStatus = 'none';

  void _populateFields(TravelProfile profile) {
    _isWillingToTravel = profile.isWillingToTravel;
    _distanceController.text = profile.maxTravelDistanceKm?.toString() ?? '';
    _passportNumberController.text = profile.passportNumber ?? '';
    _passportExpiry = profile.passportExpiry;
    _passportCountryController.text = profile.passportCountry ?? '';
    _visaCountries.clear();
    _visaCountries.addAll(profile.visaCountries ?? []);
    _rateMultiplierController.text = profile.travelRateMultiplier;
    _accommodation = AccommodationPreference.fromValue(profile.accommodationPreference);
    _flightPreferenceController.text = profile.flightPreference ?? '';
    _equipmentStatus = profile.equipmentHaulingStatus;
    _dietaryController.text = profile.dietaryRestrictions ?? '';
    _emergencyNameController.text = profile.emergencyContactName ?? '';
    _emergencyPhoneController.text = profile.emergencyContactPhone ?? '';
  }

  void _saveProfile() {
    if (!_formKey.currentState!.validate()) return;

    final request = CreateTravelProfileRequest(
      isWillingToTravel: _isWillingToTravel,
      maxTravelDistanceKm: int.tryParse(_distanceController.text),
      passportNumber: _passportNumberController.text.isEmpty ? null : _passportNumberController.text,
      passportExpiry: _passportExpiry,
      passportCountry: _passportCountryController.text.isEmpty ? null : _passportCountryController.text,
      visaCountries: _visaCountries.isEmpty ? null : _visaCountries,
      travelRateMultiplier: _rateMultiplierController.text,
      accommodationPreference: _accommodation.value,
      flightPreference: _flightPreferenceController.text.isEmpty ? null : _flightPreferenceController.text,
      equipmentHaulingStatus: _equipmentStatus,
      dietaryRestrictions: _dietaryController.text.isEmpty ? null : _dietaryController.text,
      emergencyContactName: _emergencyNameController.text.isEmpty ? null : _emergencyNameController.text,
      emergencyContactPhone: _emergencyPhoneController.text.isEmpty ? null : _emergencyPhoneController.text,
    );

    context.read<TravelBloc>().add(TravelEvent.updateProfile(request));
  }

  Future<void> _pickVisaDocument() async {
    final picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null && mounted) {
      context.read<TravelBloc>().add(TravelEvent.uploadVisaDocument(image.path, 'USA')); // Default USA for now
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TravelBloc, TravelState>(
      listener: (context, state) {
        state.maybeWhen(
          profileLoaded: (profile) => _populateFields(profile),
          success: (message) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message))),
          error: (message) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error: $message'))),
          orElse: () {},
        );
      },
      builder: (context, state) {
        final profile = state.maybeWhen(profileLoaded: (p) => p, orElse: () => null);

        return Scaffold(
          appBar: AppBar(
            title: const Text('Travel Settings'),
            actions: [
              IconButton(icon: const Icon(Icons.save), onPressed: _saveProfile),
            ],
          ),
          body: state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            orElse: () => Form(
              key: _formKey,
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  SwitchListTile(
                    title: const Text('Willing to Travel'),
                    subtitle: const Text('Available for destination weddings'),
                    value: _isWillingToTravel,
                    onChanged: (value) => setState(() => _isWillingToTravel = value),
                  ),
                  const Divider(),
                  TextFormField(
                    controller: _distanceController,
                    decoration: const InputDecoration(labelText: 'Max Travel Distance (km)', prefixIcon: Icon(Icons.map)),
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _rateMultiplierController,
                    decoration: const InputDecoration(labelText: 'Travel Rate Multiplier', prefixIcon: Icon(Icons.attach_money)),
                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                  ),
                  const SizedBox(height: 16),
                  DropdownButtonFormField<AccommodationPreference>(
                    value: _accommodation,
                    decoration: const InputDecoration(labelText: 'Accommodation Preference', prefixIcon: Icon(Icons.hotel)),
                    items: AccommodationPreference.values.map((p) => DropdownMenuItem(value: p, child: Text(p.label))).toList(),
                    onChanged: (v) => setState(() => _accommodation = v!),
                  ),
                  const SizedBox(height: 24),
                  
                  Text('Artist Logistics', style: Theme.of(context).textTheme.titleMedium),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _flightPreferenceController,
                    decoration: const InputDecoration(labelText: 'Flight Preferences (e.g. Aisle seat, Business Class)', prefixIcon: Icon(Icons.flight)),
                  ),
                  const SizedBox(height: 16),
                  DropdownButtonFormField<String>(
                    value: _equipmentStatus,
                    decoration: const InputDecoration(labelText: 'Equipment Hauling', prefixIcon: Icon(Icons.luggage)),
                    items: const [
                      DropdownMenuItem(value: 'none', child: Text('No heavy equipment')),
                      DropdownMenuItem(value: 'basic', child: Text('Basic Kit (Carry-on)')),
                      DropdownMenuItem(value: 'pro', child: Text('Professional Rig (Checked)')),
                      DropdownMenuItem(value: 'heavy', child: Text('Heavy/Bulky (Freight)')),
                    ],
                    onChanged: (v) => setState(() => _equipmentStatus = v!),
                  ),
                  const SizedBox(height: 24),

                  Text('Passport Information', style: Theme.of(context).textTheme.titleMedium),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _passportNumberController,
                    decoration: const InputDecoration(labelText: 'Passport Number', prefixIcon: Icon(Icons.badge)),
                  ),
                  const SizedBox(height: 16),
                  ListTile(
                    leading: const Icon(Icons.calendar_today),
                    title: const Text('Passport Expiry'),
                    subtitle: Text(_passportExpiry != null ? DateFormat('MMM dd, yyyy').format(_passportExpiry!) : 'Not set'),
                    onTap: () async {
                      final date = await showDatePicker(
                        context: context,
                        initialDate: _passportExpiry ?? DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime.now().add(const Duration(days: 3650)),
                      );
                      if (date != null) setState(() => _passportExpiry = date);
                    },
                  ),
                  const SizedBox(height: 24),
                  
                  // Visa Documents Section
                  Text('Visa Documents', style: Theme.of(context).textTheme.titleMedium),
                  const SizedBox(height: 8),
                  if (profile?.visaDocumentUrl != null)
                    Card(
                      child: ListTile(
                        leading: const Icon(Icons.check_circle, color: Colors.green),
                        title: const Text('Visa Document Uploaded'),
                        subtitle: Text(profile!.visaDocumentUrl!),
                        trailing: const Icon(Icons.remove_red_eye),
                        onTap: () {
                          // View document
                        },
                      ),
                    ),
                  Card(
                    child: ListTile(
                      leading: const Icon(Icons.file_upload, color: Colors.teal),
                      title: Text(profile?.visaDocumentUrl != null ? 'Update Visa Copy' : 'Upload Visa Copy'),
                      subtitle: const Text('Supported: JPG, PNG, PDF'),
                      onTap: _pickVisaDocument,
                    ),
                  ),
                  const SizedBox(height: 24),

                  Text('Emergency Contact', style: Theme.of(context).textTheme.titleMedium),
                  const SizedBox(height: 8),
                  TextFormField(controller: _emergencyNameController, decoration: const InputDecoration(labelText: 'Contact Name')),
                  const SizedBox(height: 16),
                  TextFormField(controller: _emergencyPhoneController, decoration: const InputDecoration(labelText: 'Contact Phone')),
                  const SizedBox(height: 32),
                  ElevatedButton(onPressed: _saveProfile, child: const Text('Save Profile')),
                ],
              ),
            ),
          ),
        );
      },
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
