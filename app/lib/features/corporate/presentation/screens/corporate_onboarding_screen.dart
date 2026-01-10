import 'package:flutter/material.dart';
import '../../data/corporate_repository.dart';
import '../../data/corporate_models.dart';

class CorporateOnboardingScreen extends StatefulWidget {
  const CorporateOnboardingScreen({super.key});

  @override
  State<CorporateOnboardingScreen> createState() => _CorporateOnboardingScreenState();
}

class _CorporateOnboardingScreenState extends State<CorporateOnboardingScreen> {
  final _formKey = GlobalKey<FormState>();
  final _companyController = TextEditingController();
  final _contactPersonController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  bool _isLoading = false;
  final CorporateRepository _repository = CorporateRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Partner Registration')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Join our B2B Network',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'Get access to premium talent pools and volume discounts.',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 32),
              
              TextFormField(
                controller: _companyController,
                decoration: const InputDecoration(labelText: 'Company/Agency Name', border: OutlineInputBorder()),
                validator: (v) => v!.isEmpty ? 'Required' : null,
              ),
              const SizedBox(height: 16),
              
              TextFormField(
                controller: _contactPersonController,
                decoration: const InputDecoration(labelText: 'Contact Person Name', border: OutlineInputBorder()),
                validator: (v) => v!.isEmpty ? 'Required' : null,
              ),
              const SizedBox(height: 16),
              
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Official Email', border: OutlineInputBorder()),
                keyboardType: TextInputType.emailAddress,
                validator: (v) => v!.isEmpty || !v.contains('@') ? 'Valid Email Required' : null,
              ),
              const SizedBox(height: 16),
              
              TextFormField(
                controller: _phoneController,
                decoration: const InputDecoration(labelText: 'Contact Phone', border: OutlineInputBorder()),
                keyboardType: TextInputType.phone,
                validator: (v) => v!.isEmpty ? 'Required' : null,
              ),
              const SizedBox(height: 32),
              
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: _isLoading ? null : _submit,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade900, foregroundColor: Colors.white),
                  child: _isLoading 
                    ? const SizedBox(width: 24, height: 24, child: CircularProgressIndicator(color: Colors.white))
                    : const Text('Register Partner Profile'),
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
        final client = CorporateClient(
          companyName: _companyController.text,
          contactPerson: _contactPersonController.text,
          email: _emailController.text,
          phone: _phoneController.text,
        );
        
        await _repository.onboardClient(client);
        
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Registration Successful! Our team will contact you shortly.')),
          );
          Navigator.pop(context);
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
