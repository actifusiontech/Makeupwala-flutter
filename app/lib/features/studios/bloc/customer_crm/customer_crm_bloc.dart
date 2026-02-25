import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/studio_repository.dart';

part 'customer_crm_event.dart';
part 'customer_crm_state.dart';
part 'customer_crm_bloc.freezed.dart';

class CustomerCrmBloc extends Bloc<CustomerCrmEvent, CustomerCrmState> {
  final StudioRepository repository;

  CustomerCrmBloc({required this.repository}) : super(const CustomerCrmState.initial()) {
    on<CustomerCrmEvent>((event, emit) async {
      await event.map(
        createCustomer: (e) async {
          emit(const CustomerCrmState.loading());
          try {
            await repository.createCustomer(e.studioId, e.customerData);
            emit(const CustomerCrmState.actionSuccess('Customer added successfully!'));
            add(CustomerCrmEvent.getCustomers(e.studioId));
          } catch (error) {
            emit(CustomerCrmState.error(error.toString()));
          }
        },
        getCustomers: (e) async {
          emit(const CustomerCrmState.loading());
          try {
            final customers = await repository.getCustomers(e.studioId);
            emit(CustomerCrmState.customersLoaded(customers));
          } catch (error) {
            emit(CustomerCrmState.error(error.toString()));
          }
        },
        recordCustomerVisit: (e) async {
          emit(const CustomerCrmState.loading());
          try {
            await repository.recordCustomerVisit(e.customerId, e.visitData);
            emit(const CustomerCrmState.actionSuccess('Visit recorded successfully!'));
            add(CustomerCrmEvent.getCustomers(e.studioId));
          } catch (error) {
            emit(CustomerCrmState.error(error.toString()));
          }
        },
      );
    });
  }
}
