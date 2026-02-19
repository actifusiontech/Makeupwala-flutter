import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/commerce_repository.dart';
import 'commerce_event.dart';
import 'commerce_state.dart';

class CommerceBloc extends Bloc<CommerceEvent, CommerceState> {
  final CommerceRepository repository;

  CommerceBloc({required this.repository}) : super(const CommerceState.initial()) {
    on<CommerceEvent>((event, emit) async {
      await event.when(
        fetchProducts: (category, sustainable, brandId) async {
          emit(const CommerceState.loading());
          try {
            final products = await repository.getProducts(
              category: category,
              sustainable: sustainable,
              brandId: brandId,
            );
            emit(CommerceState.loaded(products: products));
          } catch (e) {
            emit(CommerceState.error(e.toString()));
          }
        },
        fetchArtistShop: (artistId) async {
          emit(const CommerceState.loading());
          try {
            final shopItems = await repository.getArtistShop(artistId);
            emit(CommerceState.loaded(shopItems: shopItems));
          } catch (e) {
            emit(CommerceState.error(e.toString()));
          }
        },
        addToShop: (productId) async {
          emit(const CommerceState.loading());
          try {
            await repository.addToShop(productId);
            emit(const CommerceState.actionSuccess('Product added to your shop!'));
            // Refetch or let UI handle? For now, just success.
          } catch (e) {
            emit(CommerceState.error(e.toString()));
          }
        },
        removeFromShop: (artistId, productId) async {
          emit(const CommerceState.loading());
          try {
            await repository.removeFromShop(artistId, productId);
            emit(const CommerceState.actionSuccess('Product removed from your shop!'));
          } catch (e) {
            emit(CommerceState.error(e.toString()));
          }
        },
        fetchOrders: () async {
          emit(const CommerceState.loading());
          try {
            final orders = await repository.getOrders();
            emit(CommerceState.loaded(orders: orders));
          } catch (e) {
            emit(CommerceState.error(e.toString()));
          }
        },
        placeOrder: (orderType, address, gstin, referringArtistId, items) async {
          emit(const CommerceState.loading());
          try {
            final order = await repository.placeOrder(
              orderType: orderType,
              shippingAddress: address,
              gstin: gstin,
              referringArtistId: referringArtistId,
              items: items,
            );
            emit(CommerceState.orderSuccess(order));
          } catch (e) {
            emit(CommerceState.error(e.toString()));
          }
        },
        updateOrderStatus: (orderId, status, trackingNumber, trackingUrl, carrier) async {
          emit(const CommerceState.loading());
          try {
            await repository.updateOrderStatus(
              orderId,
              status,
              trackingNumber: trackingNumber,
              trackingUrl: trackingUrl,
              carrier: carrier,
            );
            emit(const CommerceState.actionSuccess('Order status updated!'));
            // Refresh orders/sales list
            add(const CommerceEvent.fetchSales());
          } catch (e) {
            emit(CommerceState.error(e.toString()));
          }
        },
        fetchCommissions: () async {
          emit(const CommerceState.loading());
          try {
            final commissions = await repository.getMyCommissions();
            emit(CommerceState.loaded(commissions: commissions));
          } catch (e) {
            emit(CommerceState.error(e.toString()));
          }
        },
      );
    });
    
    // Listen to FetchSales
    on<_FetchSales>((event, emit) async {
       // We need to preserve current state if it is loaded
       final currentState = state;
       if (currentState is _Loaded) {
         emit(currentState.copyWith(orders: currentState.orders)); // Hack to keep loading state? No.
         // Better: emit(CommerceState.loading()); ? No, we lose data.
         // Freezed copyWith on Loading? No.
         // If we want to show loading spinner we settle for simple approach:
         emit(const CommerceState.loading());
       } else {
         emit(const CommerceState.loading());
       }
       
       try {
         final sales = await repository.getSales();
         // If we were loaded, keep other data
         if (currentState is _Loaded) {
           emit(currentState.copyWith(sales: sales));
         } else {
           emit(CommerceState.loaded(sales: sales));
         }
       } catch (e) {
         emit(CommerceState.error(e.toString()));
       }
    });
  }
}
