import 'package:freezed_annotation/freezed_annotation.dart';
import '../domain/commerce_models.dart';

part 'commerce_state.freezed.dart';

@freezed
class CommerceState with _$CommerceState {
  const factory CommerceState.initial() = _Initial;
  const factory CommerceState.loading() = _Loading;
  const factory CommerceState.loaded({
    @Default([]) List<Product> products,
    @Default([]) List<ArtistStoreItem> shopItems,
    @Default([]) List<Order> orders,
    @Default([]) List<Order> sales,
    @Default([]) List<Commission> commissions,
  }) = _Loaded;
  const factory CommerceState.error(String message) = _Error;
  const factory CommerceState.orderSuccess(Order order) = _OrderSuccess;
  const factory CommerceState.actionSuccess(String message) = _ActionSuccess;
}
