import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/safety_repository.dart';
import 'safety_event.dart';
import 'safety_state.dart';

class SafetyBloc extends Bloc<SafetyEvent, SafetyState> {
  final SafetyRepository repository;

  SafetyBloc({required this.repository}) : super(const SafetyState.initial()) {
    on<SafetyEvent>((event, emit) async {
      await event.when(
        fetchEmergencyContacts: () async {
          emit(const SafetyState.loading());
          try {
            final contacts = await repository.getEmergencyContacts();
            emit(SafetyState.contactsLoaded(contacts));
          } catch (e) {
            emit(SafetyState.error(e.toString()));
          }
        },
        addEmergencyContact: (name, phoneNumber, relation) async {
          emit(const SafetyState.loading());
          try {
            await repository.addEmergencyContact({
              'name': name,
              'phone_number': phoneNumber,
              'relation': relation,
            });
            emit(const SafetyState.success('Contact added successfully'));
            add(const SafetyEvent.fetchEmergencyContacts());
          } catch (e) {
            emit(SafetyState.error(e.toString()));
          }
        },
        removeEmergencyContact: (contactId) async {
          emit(const SafetyState.loading());
          try {
            await repository.removeEmergencyContact(contactId);
            emit(const SafetyState.success('Contact removed successfully'));
            add(const SafetyEvent.fetchEmergencyContacts());
          } catch (e) {
            emit(SafetyState.error(e.toString()));
          }
        },
        triggerSOS: (lat, lng, address, batteryLevel) async {
          emit(const SafetyState.loading());
          try {
            final alert = await repository.triggerSOS(
              lat: lat,
              lng: lng,
              address: address,
              batteryLevel: batteryLevel,
            );
            emit(SafetyState.sosTriggered(alert));
          } catch (e) {
            emit(SafetyState.error(e.toString()));
          }
        },
        cancelSOS: (alertId) async {
          emit(const SafetyState.loading());
          try {
            await repository.cancelSOS(alertId);
            emit(const SafetyState.sosCancelled());
          } catch (e) {
            emit(SafetyState.error(e.toString()));
          }
        },
        alertReceived: (alert) async {
          emit(SafetyState.alertActive(alert));
        },
        dismissAlert: () async {
          emit(const SafetyState.initial());
        },
      );
    });
  }
}
