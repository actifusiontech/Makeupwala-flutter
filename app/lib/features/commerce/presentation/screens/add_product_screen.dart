import 'package:flutter/material.dart';

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
  bool _isLoading = false;

  final List<String> _categories = ['Face', 'Eyes', 'Lips', 'Skincare', 'Tools', 'Kits'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add New Product')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Product Name', border: OutlineInputBorder()),
                validator: (v) => v!.isEmpty ? 'Required' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _descController,
                decoration: const InputDecoration(labelText: 'Description', border: OutlineInputBorder()),
                maxLines: 3,
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: _selectedCategory,
                decoration: const InputDecoration(labelText: 'Category', border: OutlineInputBorder()),
                items: _categories.map((c) => DropdownMenuItem(value: c, child: Text(c))).toList(),
                onChanged: (v) => setState(() => _selectedCategory = v!),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _skuController,
                decoration: const InputDecoration(labelText: 'SKU (Stock Keeping Unit)', border: OutlineInputBorder()),
                validator: (v) => v!.isEmpty ? 'Required' : null,
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _retailPriceController,
                      decoration: const InputDecoration(labelText: 'Retail Price (MRP)', border: OutlineInputBorder(), prefixText: '₹'),
                      keyboardType: TextInputType.number,
                      validator: (v) => v!.isEmpty ? 'Required' : null,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: TextFormField(
                      controller: _wholesalePriceController,
                      decoration: const InputDecoration(labelText: 'Wholesale Price', border: OutlineInputBorder(), prefixText: '₹'),
                      keyboardType: TextInputType.number,
                      validator: (v) => v!.isEmpty ? 'Required' : null,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _stockController,
                decoration: const InputDecoration(labelText: 'Initial Stock Quantity', border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
                validator: (v) => v!.isEmpty ? 'Required' : null,
              ),
              const SizedBox(height: 16),
              SwitchListTile(
                title: const Text('Sustainable / Eco-Friendly'),
                value: _isSustainable,
                onChanged: (v) => setState(() => _isSustainable = v),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: _isLoading ? null : _submitProduct,
                  child: _isLoading ? const CircularProgressIndicator() : const Text('List Product'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submitProduct() async {
    if (_formKey.currentState!.validate()) {
      setState(() => _isLoading = true);
      
      // TODO: Call API to create product
      // For now, simulate success
      await Future.delayed(const Duration(seconds: 2));
      
      if (mounted) {
        setState(() => _isLoading = false);
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Product Listed Successfully!')));
        Navigator.pop(context); // Return to Dashboard
      }
    }
  }
}
