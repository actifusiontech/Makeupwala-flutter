import '../../data/corporate_repository.dart';
import '../../data/corporate_models.dart';
import '../../../../shared/theme/app_colors.dart';
import '../../../../shared/theme/app_spacing.dart';
import '../../../../shared/theme/app_typography.dart';

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Partner Registration'),
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColors.primary, AppColors.primaryDark],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        foregroundColor: AppColors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(
                'Join our B2B Network',
                'Get access to premium talent pools and volume discounts.',
              ),
              const SizedBox(height: AppSpacing.xl),
              
              _buildTextField(_companyController, 'Company/Agency Name', 'Enter legal name', Icons.business_rounded),
              const SizedBox(height: AppSpacing.md),
              
              _buildTextField(_contactPersonController, 'Contact Person Name', 'Enter full name', Icons.person_outline),
              const SizedBox(height: AppSpacing.md),
              
              _buildTextField(_emailController, 'Official Email', 'Enter business email', Icons.email_outlined, keyboardType: TextInputType.emailAddress),
              const SizedBox(height: AppSpacing.md),
              
              _buildTextField(_phoneController, 'Contact Phone', 'Enter phone number', Icons.phone_outlined, keyboardType: TextInputType.phone),
              const SizedBox(height: 32),
              
              SizedBox(
                width: double.infinity,
                height: 54,
                child: ElevatedButton(
                  onPressed: _isLoading ? null : _submit,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    elevation: 4,
                  ),
                  child: _isLoading 
                    ? const SizedBox(width: 24, height: 24, child: CircularProgressIndicator(color: Colors.white))
                    : const Text('Register Partner Profile', style: TextStyle(fontWeight: FontWeight.bold)),
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
  Widget _buildHeader(String title, String subtitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppTypography.headlineSmall.copyWith(color: AppColors.primary, fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        Text(subtitle, style: AppTypography.bodyMedium.copyWith(color: AppColors.grey500)),
        const Divider(height: 32),
      ],
    );
  }

  Widget _buildTextField(
    TextEditingController controller, 
    String label, 
    String hint, 
    IconData icon, 
    {TextInputType? keyboardType}
  ) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        prefixIcon: Icon(icon, color: AppColors.primary, size: 20),
        filled: true,
        fillColor: AppColors.grey50,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.grey200),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.grey200),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColors.primary, width: 2),
        ),
        labelStyle: const TextStyle(color: AppColors.grey600),
      ),
      validator: (val) {
        if (val == null || val.isEmpty) return 'Required';
        if (keyboardType == TextInputType.emailAddress && !val.contains('@')) return 'Invalid Email';
        return null;
      },
    );
  }
}
