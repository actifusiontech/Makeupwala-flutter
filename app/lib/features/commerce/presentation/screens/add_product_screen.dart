import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:go_router/go_router.dart';
import '../../bloc/brand_product_bloc.dart';
import '../../bloc/brand_product_event.dart';
import '../../bloc/brand_product_state.dart';
import '../../data/brand_repository.dart';
import '../../../../core/network/api_client.dart';
import '../../../../shared/theme/app_colors.dart';
import '../../../../shared/theme/app_spacing.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  final _formKey = GlobalKey<FormState>();
  
  // Controllers
  final _nameController = TextEditingController();
  final _descController = TextEditingController();
  final _skuController = TextEditingController();
  final _wholesalePriceController = TextEditingController();
  final _retailPriceController = TextEditingController();
  final _stockController = TextEditingController();
  
  String _selectedCategory = 'Face';
  bool _isSustainable = false;

  final List<String> _categories = ['Face', 'Eyes', 'Lips', 'Skincare', 'Tools', 'Kits'];
  final List<File> _selectedImages = [];
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BrandProductBloc(
        repository: BrandRepository(ApiClient().dio),
      ),
      child: BlocConsumer<BrandProductBloc, BrandProductState>(
        listener: (context, state) {
          state.maybeWhen(
            success: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Product Listed Successfully!')),
              );
              context.pop(); 
            },
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Error: $message'), backgroundColor: Colors.red),
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          final isLoading = state.maybeWhen(submitting: () => true, orElse: () => false);

          return Scaffold(
            appBar: AppBar(title: const Text('Add New Product')),
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(AppSpacing.screenPadding),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image Picker Section
                    _buildImagePicker(),
                    const SizedBox(height: AppSpacing.lg),

                    TextFormField(
                      controller: _nameController,
                      decoration: const InputDecoration(labelText: 'Product Name', border: OutlineInputBorder()),
                      validator: (v) => v!.isEmpty ? 'Required' : null,
                      enabled: !isLoading,
                    ),
                    const SizedBox(height: AppSpacing.md),
                    TextFormField(
                      controller: _descController,
                      decoration: const InputDecoration(labelText: 'Description', border: OutlineInputBorder()),
                      maxLines: 3,
                      enabled: !isLoading,
                    ),
                    const SizedBox(height: AppSpacing.md),
                    DropdownButtonFormField<String>(
                      value: _selectedCategory,
                      decoration: const InputDecoration(labelText: 'Category', border: OutlineInputBorder()),
                      items: _categories.map((c) => DropdownMenuItem(value: c, child: Text(c))).toList(),
                      onChanged: isLoading ? null : (v) => setState(() => _selectedCategory = v!),
                    ),
                    const SizedBox(height: AppSpacing.md),
                    TextFormField(
                      controller: _skuController,
                      decoration: const InputDecoration(labelText: 'SKU (Stock Keeping Unit)', border: OutlineInputBorder()),
                      validator: (v) => v!.isEmpty ? 'Required' : null,
                      enabled: !isLoading,
                    ),
                    const SizedBox(height: AppSpacing.md),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: _retailPriceController,
                            decoration: const InputDecoration(labelText: 'Retail Price (MRP)', border: OutlineInputBorder(), prefixText: '₹'),
                            keyboardType: TextInputType.number,
                            validator: (v) => v!.isEmpty ? 'Required' : null,
                            enabled: !isLoading,
                          ),
                        ),
                        const SizedBox(width: AppSpacing.md),
                        Expanded(
                          child: TextFormField(
                            controller: _wholesalePriceController,
                            decoration: const InputDecoration(labelText: 'Wholesale Price', border: OutlineInputBorder(), prefixText: '₹'),
                            keyboardType: TextInputType.number,
                            validator: (v) => v!.isEmpty ? 'Required' : null,
                            enabled: !isLoading,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSpacing.md),
                    TextFormField(
                      controller: _stockController,
                      decoration: const InputDecoration(labelText: 'Initial Stock Quantity', border: OutlineInputBorder()),
                      keyboardType: TextInputType.number,
                      validator: (v) => v!.isEmpty ? 'Required' : null,
                      enabled: !isLoading,
                    ),
                    const SizedBox(height: AppSpacing.md),
                    SwitchListTile(
                      title: const Text('Sustainable / Eco-Friendly'),
                      value: _isSustainable,
                      onChanged: isLoading ? null : (v) => setState(() => _isSustainable = v),
                    ),
                    const SizedBox(height: AppSpacing.xl),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: isLoading ? null : () => _submitProduct(context),
                        child: isLoading ? const CircularProgressIndicator() : const Text('List Product'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildImagePicker() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Product Images (Max 5)', style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _selectedImages.length + (_selectedImages.length < 5 ? 1 : 0),
            itemBuilder: (context, index) {
              if (index == _selectedImages.length) {
                return GestureDetector(
                  onTap: _pickImage,
                  child: Container(
                    width: 100,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey[400]!),
                    ),
                    child: const Icon(Icons.add_a_photo, color: Colors.grey),
                  ),
                );
              }
              final image = _selectedImages[index];
              return Stack(
                children: [
                  Container(
                    width: 100,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                         image: FileImage(image),
                         fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 4,
                    right: 12,
                    child: GestureDetector(
                      onTap: () => setState(() => _selectedImages.removeAt(index)),
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: const BoxDecoration(color: Colors.black54, shape: BoxShape.circle),
                        child: const Icon(Icons.close, size: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  Future<void> _pickImage() async {
    if (_selectedImages.length >= 5) return;
    
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _selectedImages.add(File(pickedFile.path));
      });
    }
  }

  void _submitProduct(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      if (_selectedImages.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please add at least one image')),
        );
        return;
      }

      context.read<BrandProductBloc>().add(BrandProductEvent.submitProduct(
        name: _nameController.text,
        description: _descController.text,
        category: _selectedCategory,
        sku: _skuController.text,
        wholesalePrice: double.tryParse(_wholesalePriceController.text),
        retailPrice: double.tryParse(_retailPriceController.text),
        stockQuantity: int.tryParse(_stockController.text),
        isSustainable: _isSustainable,
        images: _selectedImages,
      ));
    }
  }
}
