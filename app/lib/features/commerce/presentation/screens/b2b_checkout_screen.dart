import 'package:flutter/material.dart';
import '../../domain/commerce_models.dart';
import '../../data/commerce_repository.dart';
import 'package:app/shared/theme/app_colors.dart';

class B2BCheckoutScreen extends StatefulWidget {
  final List<Product> cartItems;
  final CommerceRepository commerceRepository;

  const B2BCheckoutScreen({
    Key? key,
    required this.cartItems,
    required this.commerceRepository,
  }) : super(key: key);

  @override
  State<B2BCheckoutScreen> createState() => _B2BCheckoutScreenState();
}

class _B2BCheckoutScreenState extends State<B2BCheckoutScreen> {
  final _formKey = GlobalKey<FormState>();
  final _addressController = TextEditingController();
  final _gstinController = TextEditingController();
  bool _isLoading = false;

  double get _subtotal => widget.cartItems.fold(
      0, (sum, item) => sum + (item.wholesalePrice * 1)); // Assuming qty 1 for mock
  double get _tax => _subtotal * 0.18; // 18% GST
  double get _total => _subtotal + _tax;

  Future<void> _handleCheckout() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);

    try {
      // Mock items payload - in real app would have quantities
      final itemsPayload = widget.cartItems.map((p) => {
        'product_id': p.id,
        'quantity': 1,
      }).toList();

      await widget.commerceRepository.placeOrder(
        orderType: 'wholesale',
        shippingAddress: _addressController.text,
        gstin: _gstinController.text.isNotEmpty ? _gstinController.text : null,
        items: itemsPayload,
      );

      if (mounted) {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (ctx) => AlertDialog(
            title: const Row(
              children: [
                Icon(Icons.check_circle, color: AppColors.emerald),
                SizedBox(width: 8),
                Text('Order Placed!'),
              ],
            ),
            content: const Text(
                'Your wholesale order has been received. You will receive an invoice shortly.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(ctx).pop(); // Close dialog
                  Navigator.of(context).pop(); // Close checkout
                  Navigator.of(context).pop(); // Close cart/pro-store? Depends on flow
                },
                child: const Text('OK'),
              ),
            ],
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Checkout failed: $e'), backgroundColor: Colors.red),
        );
      }
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        title: const Text(
          'WHOLESALE CHECKOUT',
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16, letterSpacing: 1),
        ),
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFF1E293B),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Order Summary Card
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.slate100,
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const Text(
                      'ORDER SUMMARY',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF94A3B8),
                        letterSpacing: 1,
                      ),
                    ),
                    const SizedBox(height: 16),
                    ...widget.cartItems.map((item) => Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              item.name,
                              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            '₹${item.wholesalePrice.toStringAsFixed(0)}',
                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                          ),
                        ],
                      ),
                    )),
                    const Divider(height: 24),
                    _buildRow('Subtotal', _subtotal),
                    const SizedBox(height: 8),
                    _buildRow('GST (18%)', _tax),
                    const Divider(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'TOTAL',
                          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
                        ),
                        Text(
                          '₹${_total.toStringAsFixed(0)}',
                          style: const TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                            color: Color(0xFF0F172A),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),
              const Text(
                'SHIPPING DETAILS',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Color(0xFF64748B)),
              ),
              const SizedBox(height: 12),
              
              TextFormField(
                controller: _addressController,
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: 'Enter full shipping address...',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                ),
                validator: (val) => val == null || val.isEmpty ? 'Address is required' : null,
              ),

              const SizedBox(height: 24),
              const Text(
                'TAX INVOICE (Optional)',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Color(0xFF64748B)),
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: _gstinController,
                decoration: InputDecoration(
                  hintText: 'Enter GSTIN for Tax Credit',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.slate100,
              blurRadius: 10,
              offset: const Offset(0, -4),
            ),
          ],
        ),
        child: SafeArea(
          child: ElevatedButton(
            onPressed: _isLoading ? null : _handleCheckout,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF0F172A),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 18),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 0,
            ),
            child: _isLoading
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2),
                  )
                : const Text(
                    'PLACE WHOLESALE ORDER',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, letterSpacing: 1),
                  ),
          ),
        ),
      ),
    );
  }

  Widget _buildRow(String label, double amount) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: const TextStyle(color: Color(0xFF64748B), fontSize: 13)),
        Text('₹${amount.toStringAsFixed(0)}', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
      ],
    );
  }
}
