import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/brand_repository.dart';
import 'brand_product_event.dart';
import 'brand_product_state.dart';

class BrandProductBloc extends Bloc<BrandProductEvent, BrandProductState> {
  final BrandRepository repository;

  BrandProductBloc({required this.repository}) : super(const BrandProductState.initial()) {
    on<BrandProductEvent>((event, emit) async {
      await event.when(
        submitProduct: (name, description, category, sku, wholesalePrice, retailPrice, stockQuantity, isSustainable, images) async {
          emit(const BrandProductState.submitting());
          try {
            // 1. Upload Images
            List<String> imageUrls = [];
            for (var image in images) {
              final url = await repository.uploadProductImage(image);
              imageUrls.add(url);
            }

            // 2. Create Product Data
            final productData = {
              'name': name,
              'description': description,
              'category': category,
              'sku': sku,
              'wholesalePrice': wholesalePrice,
              'retailPrice': retailPrice,
              'stockQuantity': stockQuantity,
              'isSustainable': isSustainable,
              'imageUrls': imageUrls,
            };

            // 3. Submit Product
            await repository.createProduct(productData);
            emit(const BrandProductState.success());
          } catch (e) {
            emit(BrandProductState.error(e.toString()));
          }
        },
      );
    });
  }
}
