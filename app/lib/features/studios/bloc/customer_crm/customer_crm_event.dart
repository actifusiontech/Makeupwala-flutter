part of 'customer_crm_bloc.dart';

@freezed
class CustomerCrmEvent with _$CustomerCrmEvent {
  const factory CustomerCrmEvent.createCustomer(String studioId, Map<String, dynamic> customerData) = _CreateCustomer;
  const factory CustomerCrmEvent.getCustomers(String studioId) = _GetCustomers;
  const factory CustomerCrmEvent.recordCustomerVisit(String customerId, String studioId, Map<String, dynamic> visitData) = _RecordCustomerVisit;
}
