import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/studio_repository.dart';

part 'product_usage_event.dart';
part 'product_usage_state.dart';
part 'product_usage_bloc.freezed.dart';

class ProductUsageBloc extends Bloc<ProductUsageEvent, ProductUsageState> {
  final StudioRepository repository;

  ProductUsageBloc({required this.repository}) : super(const ProductUsageState.initial()) {
    on<ProductUsageEvent>((event, emit) async {
      await event.map(
        fetchInventory: (e) async {
          emit(const ProductUsageState.loading());
          try {
            final products = await repository.getArtistInventory();
            emit(ProductUsageState.inventoryLoaded(products));
          } catch (error) {
            emit(ProductUsageState.error(error.toString()));
          }
        },
        logUsage: (e) async {
          emit(const ProductUsageState.loading());
          try {
            await repository.logVisitProductUsage(
              e.studioId,
              e.visitId,
              e.productId,
              e.units,
            );
            emit(const ProductUsageState.success('Product usage logged successfully!'));
            // Refresh inventory levels
            add(const ProductUsageEvent.fetchInventory());
          } catch (error) {
            emit(ProductUsageState.error(error.toString()));
          }
        },
      );
    });
  }
}
