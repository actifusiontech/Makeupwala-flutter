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
        fetchSales: () async {
          emit(const CommerceState.loading());
          try {
            final sales = await repository.getSales();
            emit(CommerceState.loaded(sales: sales));
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
  }
}

