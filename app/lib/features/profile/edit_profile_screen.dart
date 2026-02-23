import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../../core/models/user.dart';
import '../../../shared/theme/app_colors.dart';
import '../../../shared/theme/app_typography.dart';
import '../../../shared/theme/app_spacing.dart';
import '../bloc/profile_bloc.dart';
import '../../auth/bloc/auth_bloc.dart';

class EditProfileScreen extends StatefulWidget {
  final User user;
  final bool isArtist;

  const EditProfileScreen({
    super.key,
    required this.user,
    required this.isArtist,
  });

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _phoneController;
  late TextEditingController _address1Controller;
  late TextEditingController _address2Controller;
  late TextEditingController _cityController;
  late TextEditingController _stateController;
  late TextEditingController _pincodeController;
  
  String? _gender;
  DateTime? _dob;
  bool _isPhoneVerified = false;
  bool _phoneChanged = false;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.user.fullName);
    _phoneController = TextEditingController(text: widget.user.phone);
    _address1Controller = TextEditingController(text: widget.user.addressLine1);
    _address2Controller = TextEditingController(text: widget.user.addressLine2);
    _cityController = TextEditingController(text: widget.user.city);
    _stateController = TextEditingController(text: widget.user.state);
    _pincodeController = TextEditingController(text: widget.user.pincode);
    
    _gender = widget.user.gender;
    if (widget.user.dob != null && widget.user.dob!.isNotEmpty) {
      try {
        _dob = DateFormat('yyyy-MM-dd').parse(widget.user.dob!);
      } catch (_) {}
    }
    
    _isPhoneVerified = widget.user.phone != null && widget.user.phone!.isNotEmpty;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _address1Controller.dispose();
    _address2Controller.dispose();
    _cityController.dispose();
    _stateController.dispose();
    _pincodeController.dispose();
    super.dispose();
  }

  void _onPhoneChanged(String value) {
    setState(() {
      _phoneChanged = value != widget.user.phone;
      if (_phoneChanged) {
        _isPhoneVerified = false;
      } else {
        _isPhoneVerified = widget.user.phone != null && widget.user.phone!.isNotEmpty;
      }
    });
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _dob ?? DateTime(2000),
      firstDate: DateTime(1960),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: AppColors.primary,
              onPrimary: Colors.white,
              onSurface: AppColors.textPrimary,
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null && picked != _dob) {
      setState(() {
        _dob = picked;
      });
    }
  }

  void _saveProfile() {
    if (!_formKey.currentState!.validate()) return;
    
    if (_phoneChanged && !_isPhoneVerified) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please verify your mobile number first')),
      );
      return;
    }

    final data = {
      'full_name': _nameController.text,
      'mobile_number': _phoneController.text,
      'gender': _gender,
      'dob': _dob != null ? DateFormat('yyyy-MM-dd').format(_dob!) : null,
      'address_line1': _address1Controller.text,
      'address_line2': _address2Controller.text,
      'city': _cityController.text,
      'state': _stateController.text,
      'pincode': _pincodeController.text,
    };

    context.read<ProfileBloc>().add(
      ProfileEvent.updateProfile(
        isArtist: widget.isArtist,
        data: data,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          otpSent: (phone) {
            context.push('/otp', extra: {
              'contact': phone,
              'isProfileUpdate': true,
            });
          },
          phoneVerified: (phone) {
            setState(() {
              _isPhoneVerified = true;
              _phoneChanged = false; // It's verified now
            });
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Phone number verified successfully!')),
            );
          },
          error: (message) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message)),
            );
          },
          orElse: () {},
        );
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Edit Profile'),
          backgroundColor: AppColors.white,
          foregroundColor: AppColors.textPrimary,
          elevation: 0,
          actions: [
            TextButton(
              onPressed: _saveProfile,
              child: Text(
                'SAVE',
                style: AppTypography.titleMedium.copyWith(color: AppColors.primary),
              ),
            ),
          ],
        ),
        body: BlocConsumer<ProfileBloc, ProfileState>(
          listener: (context, state) {
            state.maybeWhen(
              loaded: (_, __) {
                 ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Profile updated successfully!')),
                );
                context.pop();
              },
              error: (msg) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(msg)),
                );
              },
              orElse: () {},
            );
          },
          builder: (context, state) {
            return Stack(
              children: [
                SingleChildScrollView(
                  padding: const EdgeInsets.all(AppSpacing.screenPadding),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildSectionTitle('Personal Information'),
                        _buildTextField(
                          controller: _nameController,
                          label: 'Full Name',
                          icon: Icons.person_outline,
                        ),
                        const SizedBox(height: AppSpacing.md),
                        _buildPhoneField(),
                        const SizedBox(height: AppSpacing.md),
                        _buildGenderDropdown(),
                        const SizedBox(height: AppSpacing.md),
                        _buildDatePicker(),
                        
                        const SizedBox(height: AppSpacing.xl),
                        _buildSectionTitle('Address Details'),
                        _buildTextField(
                          controller: _address1Controller,
                          label: 'Address Line 1',
                          icon: Icons.home_outlined,
                        ),
                        const SizedBox(height: AppSpacing.md),
                        _buildTextField(
                          controller: _address2Controller,
                          label: 'Address Line 2 (Optional)',
                          icon: Icons.location_on_outlined,
                        ),
                        const SizedBox(height: AppSpacing.md),
                        Row(
                          children: [
                            Expanded(
                              child: _buildTextField(
                                controller: _cityController,
                                label: 'City',
                              ),
                            ),
                            const SizedBox(width: AppSpacing.md),
                            Expanded(
                              child: _buildTextField(
                                controller: _pincodeController,
                                label: 'Pincode',
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: AppSpacing.md),
                        _buildTextField(
                          controller: _stateController,
                          label: 'State',
                          icon: Icons.map_outlined,
                        ),
                        const SizedBox(height: AppSpacing.xxxl),
                      ],
                    ),
                  ),
                ),
                if (state.maybeWhen(loading: () => true, orElse: () => false))
                  Container(
                    color: Colors.white.withOpacity(0.5),
                    child: const Center(child: CircularProgressIndicator()),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.md),
      child: Text(
        title.toUpperCase(),
        style: AppTypography.bodySmall.copyWith(
          color: AppColors.textSecondary,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    IconData? icon,
    TextInputType? keyboardType,
  }) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: icon != null ? Icon(icon, color: AppColors.primary) : null,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.primary, width: 2),
        ),
      ),
      validator: (value) => value == null || value.isEmpty ? 'Required' : null,
    );
  }

  Widget _buildPhoneField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: TextFormField(
                controller: _phoneController,
                onChanged: _onPhoneChanged,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Mobile Number',
                  prefixIcon: const Icon(Icons.phone_outlined, color: AppColors.primary),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  suffixIcon: _isPhoneVerified 
                    ? const Icon(Icons.check_circle, color: AppColors.success)
                    : null,
                ),
              ),
            ),
            if (_phoneChanged && !_isPhoneVerified)
              Padding(
                padding: const EdgeInsets.only(left: 8, top: 4),
                child: ElevatedButton(
                  onPressed: () {
                    context.read<AuthBloc>().add(
                      AuthEvent.requestPhoneOtp(_phoneController.text),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  child: const Text('VERIFY'),
                ),
              ),
          ],
        ),
        if (_phoneChanged && !_isPhoneVerified)
          Padding(
            padding: const EdgeInsets.only(top: 4, left: 12),
            child: Text(
              'Verification required before saving',
              style: AppTypography.bodySmall.copyWith(color: AppColors.error),
            ),
          ),
      ],
    );
  }

  Widget _buildGenderDropdown() {
    return DropdownButtonFormField<String>(
      value: _gender,
      decoration: InputDecoration(
        labelText: 'Gender',
        prefixIcon: const Icon(Icons.wc_outlined, color: AppColors.primary),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
      items: ['male', 'female', 'other'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value[0].toUpperCase() + value.substring(1)),
        );
      }).toList(),
      onChanged: (value) {
        setState(() {
          _gender = value;
        });
      },
    );
  }

  Widget _buildDatePicker() {
    return InkWell(
      onTap: () => _selectDate(context),
      child: InputDecorator(
        decoration: InputDecoration(
          labelText: 'Date of Birth',
          prefixIcon: const Icon(Icons.calendar_today_outlined, color: AppColors.primary),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
        child: Text(
          _dob == null ? 'Select Date' : DateFormat('dd MMM yyyy').format(_dob!),
          style: AppTypography.bodyLarge,
        ),
      ),
    );
  }
}
