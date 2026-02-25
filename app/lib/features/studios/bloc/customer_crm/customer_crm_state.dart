part of 'customer_crm_bloc.dart';

@freezed
class CustomerCrmState with _$CustomerCrmState {
  const factory CustomerCrmState.initial() = _Initial;
  const factory CustomerCrmState.loading() = _Loading;
  const factory CustomerCrmState.customersLoaded(List<dynamic> customers) = _CustomersLoaded;
  const factory CustomerCrmState.actionSuccess(String message) = _ActionSuccess;
  const factory CustomerCrmState.error(String message) = _Error;
}
