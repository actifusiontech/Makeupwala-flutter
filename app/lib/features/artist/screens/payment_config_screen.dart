import 'package:flutter/material.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'package:app/core/network/api_client.dart';
import 'package:app/shared/widgets/custom_button.dart';
import 'package:app/shared/widgets/custom_text_field.dart';

class PaymentConfigScreen extends StatefulWidget {
  const PaymentConfigScreen({Key? key}) : super(key: key);

  @override
  State<PaymentConfigScreen> createState() => _PaymentConfigScreenState();
}

class _PaymentConfigScreenState extends State<PaymentConfigScreen> {
  final _formKey = GlobalKey<FormState>();
  final _bankAccountController = TextEditingController();
  final _ifscController = TextEditingController();
  final _accountNameController = TextEditingController();
  final _upiIdController = TextEditingController();
  final _panController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _streetController = TextEditingController();
  final _cityController = TextEditingController();
  final _stateController = TextEditingController();
  final _postalCodeController = TextEditingController();

  bool _isLoading = false;
  bool _isOnboarding = false;
  bool _tncAccepted = false;
  Map<String, dynamic>? _config;

  @override
  void initState() {
    super.initState();
    _loadPaymentConfig();
  }

  @override
  void dispose() {
    _bankAccountController.dispose();
    _ifscController.dispose();
    _accountNameController.dispose();
    _upiIdController.dispose();
    _panController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _streetController.dispose();
    _cityController.dispose();
    _stateController.dispose();
    _postalCodeController.dispose();
    super.dispose();
  }

  Future<void> _loadPaymentConfig() async {
    setState(() => _isLoading = true);

    try {
      final dio = ApiClient().dio;
      // Fetch both payment config and user profile for defaults
      final configFuture = dio.get('/artists/me/payment-config');
      // assuming we can get basic user info or just let them fill it

      final responses = await Future.wait([configFuture]);

      final configResponse = responses[0];

      setState(() {
        _config = configResponse.data;
        _bankAccountController.text = _config?['bank_account_number'] ?? '';
        _ifscController.text = _config?['bank_ifsc'] ?? '';
        _accountNameController.text = _config?['bank_account_name'] ?? '';
        _upiIdController.text = _config?['upi_id'] ?? '';
        // If stored in config, populate. If not, user enters.
      });
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Error loading config: $e')));
      }
    } finally {
      setState(() => _isLoading = false);
    }
  }

  Future<void> _onboardToRazorpay() async {
    if (!_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please fill all bank details and PAN first'),
        ),
      );
      return;
    }

    // specific validation for onboarding fields
    if (_panController.text.isEmpty ||
        _emailController.text.isEmpty ||
        _phoneController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Email, Phone and PAN are required for Razorpay onboarding',
          ),
        ),
      );
      return;
    }
    if (!_tncAccepted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Accept the Razorpay terms to continue')),
      );
      return;
    }

    setState(() => _isOnboarding = true);

    try {
      final dio = ApiClient().dio;
      await dio.post(
        '/artists/me/payment-config/razorpay',
        data: {
          'email': _emailController.text.trim(),
          'phone': _phoneController.text.trim(),
          'legal_business_name': _accountNameController.text
              .trim(), // Assuming individual
          'business_type': 'individual',
          'contact_name': _accountNameController.text.trim(),
          'pan': _panController.text.trim().toUpperCase(),
          'bank_account_number': _bankAccountController.text.trim(),
          'bank_ifsc': _ifscController.text.trim().toUpperCase(),
          'bank_account_name': _accountNameController.text.trim(),
          'street': _streetController.text.trim(),
          'city': _cityController.text.trim(),
          'state': _stateController.text.trim(),
          'postal_code': _postalCodeController.text.trim(),
          'tnc_accepted': _tncAccepted,
        },
      );

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Onboarding submitted. Payouts activate after Razorpay verification.',
            ),
            backgroundColor: Colors.green,
          ),
        );
        _loadPaymentConfig(); // reload to update UI status
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Onboarding failed: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      setState(() => _isOnboarding = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Payment Configuration')),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              padding: const EdgeInsets.all(AppSpacing.lg),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Razorpay Status Banner
                    _buildRazorpayStatus(),
                    const SizedBox(height: 24),

                    _buildSectionHeader('Registered Address'),
                    const SizedBox(height: 16),
                    CustomTextField(
                      controller: _streetController,
                      label: 'Street Address',
                      hint: 'Building and street',
                      validator: (v) =>
                          v?.trim().isEmpty == true ? 'Required' : null,
                    ),
                    const SizedBox(height: 16),
                    CustomTextField(
                      controller: _cityController,
                      label: 'City',
                      hint: 'City',
                      validator: (v) =>
                          v?.trim().isEmpty == true ? 'Required' : null,
                    ),
                    const SizedBox(height: 16),
                    CustomTextField(
                      controller: _stateController,
                      label: 'State',
                      hint: 'State',
                      validator: (v) =>
                          v?.trim().isEmpty == true ? 'Required' : null,
                    ),
                    const SizedBox(height: 16),
                    CustomTextField(
                      controller: _postalCodeController,
                      label: 'Postal Code',
                      hint: '6-digit PIN code',
                      keyboardType: TextInputType.number,
                      validator: (v) =>
                          RegExp(r'^[1-9][0-9]{5}$').hasMatch(v?.trim() ?? '')
                          ? null
                          : 'Invalid PIN code',
                    ),
                    CheckboxListTile(
                      contentPadding: EdgeInsets.zero,
                      value: _tncAccepted,
                      onChanged: (value) =>
                          setState(() => _tncAccepted = value ?? false),
                      title: const Text(
                        'I accept Razorpay’s linked-account terms and authorize bank verification.',
                      ),
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                    const SizedBox(height: 24),

                    // Contact & Legal (Required for Razorpay)
                    _buildSectionHeader('Merchant Details (For Razorpay)'),
                    const SizedBox(height: 16),
                    CustomTextField(
                      controller: _emailController,
                      label: 'Business Email',
                      hint: 'email@example.com',
                      keyboardType: TextInputType.emailAddress,
                      validator: (v) => v?.isEmpty == true ? 'Required' : null,
                    ),
                    const SizedBox(height: 16),
                    CustomTextField(
                      controller: _phoneController,
                      label: 'Business Phone',
                      hint: '9876543210',
                      keyboardType: TextInputType.phone,
                      validator: (v) => v?.isEmpty == true ? 'Required' : null,
                    ),
                    const SizedBox(height: 16),
                    CustomTextField(
                      controller: _panController,
                      label: 'PAN Number',
                      hint: 'ABCDE1234F',
                      textCapitalization: TextCapitalization.characters,
                      validator: (v) {
                        if (v == null || v.isEmpty) {
                          return 'Required for Payouts';
                        }
                        if (v.length != 10) return 'Invalid PAN';
                        return null;
                      },
                    ),
                    const SizedBox(height: 24),

                    // Bank Account Section
                    _buildSectionHeader('Bank Account Details'),
                    const SizedBox(height: 16),
                    CustomTextField(
                      controller: _accountNameController,
                      label: 'Account Holder Name',
                      hint: 'Enter account holder name',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter account holder name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    CustomTextField(
                      controller: _bankAccountController,
                      label: 'Account Number',
                      hint: 'Enter bank account number',
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter account number';
                        }
                        if (value.length < 9 || value.length > 18) {
                          return 'Invalid account number';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    CustomTextField(
                      controller: _ifscController,
                      label: 'IFSC Code',
                      hint: 'Enter IFSC code',
                      textCapitalization: TextCapitalization.characters,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter IFSC code';
                        }
                        if (!RegExp(
                          r'^[A-Z]{4}0[A-Z0-9]{6}$',
                        ).hasMatch(value.toUpperCase())) {
                          return 'Invalid IFSC code';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 24),

                    // UPI Section
                    _buildSectionHeader('UPI Details (Optional)'),
                    const SizedBox(height: 16),
                    CustomTextField(
                      controller: _upiIdController,
                      label: 'UPI ID',
                      hint: 'yourname@paytm',
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value != null && value.isNotEmpty) {
                          if (!value.contains('@')) {
                            return 'Invalid UPI ID';
                          }
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 32),

                    // Action Buttons
                    if (!(_config?['razorpay_onboarded'] ?? false))
                      CustomButton(
                        text: 'Connect Razorpay & Save',
                        onPressed: _onboardToRazorpay,
                        isLoading: _isOnboarding,
                        isFullWidth: true,
                        backgroundColor: Colors.indigo,
                      ),

                    const SizedBox(height: 16),

                    // Info Card
                    _buildInfoCard(),
                  ],
                ),
              ),
            ),
    );
  }

  Widget _buildRazorpayStatus() {
    final isOnboarded = _config?['razorpay_onboarded'] ?? false;
    final status = _config?['onboarding_status'] ?? 'not_started';

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isOnboarded ? Colors.green.shade50 : Colors.orange.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: isOnboarded ? Colors.green : Colors.orange),
      ),
      child: Row(
        children: [
          Icon(
            isOnboarded ? Icons.check_circle : Icons.pending,
            color: isOnboarded ? Colors.green : Colors.orange,
            size: 32,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  isOnboarded ? 'Razorpay Activated' : 'Razorpay Onboarding',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  isOnboarded
                      ? 'You can accept online payments'
                      : 'Status: $status. Payouts remain disabled until activated.',
                  style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Text(
      title,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildInfoCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.blue),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.info_outline, color: Colors.blue),
              const SizedBox(width: 8),
              const Text(
                'Important Information',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            '• Bank credentials are sent to Razorpay and are not stored by MakeupWala\n'
            '• Razorpay may request additional KYC documents\n'
            '• Payouts remain disabled until provider activation\n'
            '• Bank changes require a new verification workflow',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[800],
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
