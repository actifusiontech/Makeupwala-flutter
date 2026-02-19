import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/travel_repository.dart';
import 'travel_event.dart';
import 'travel_state.dart';

class TravelBloc extends Bloc<TravelEvent, TravelState> {
  final TravelRepository repository;

  TravelBloc({required this.repository}) : super(const TravelState.initial()) {
    on<TravelEvent>((event, emit) async {
      await event.when(
        fetchRetreats: () async {
          emit(const TravelState.loading());
          try {
            final retreats = await repository.getRetreats();
            emit(TravelState.retreatsLoaded(retreats));
          } catch (e) {
            emit(TravelState.error(e.toString()));
          }
        },
        bookRetreat: (packageId, participantName) async {
          emit(const TravelState.loading());
          try {
            await repository.bookRetreat(
              packageId: packageId,
              participantName: participantName,
            );
            emit(const TravelState.success('Booking Successful'));
          } catch (e) {
            emit(TravelState.error(e.toString()));
          }
        },
        fetchProfile: () async {
          emit(const TravelState.loading());
          try {
            final profile = await repository.getTravelProfile();
            emit(TravelState.profileLoaded(profile));
          } catch (e) {
            emit(TravelState.error(e.toString()));
          }
        },
        updateProfile: (request) async {
          emit(const TravelState.loading());
          try {
            try {
              await repository.getTravelProfile();
              final updated = await repository.updateTravelProfile(request);
              emit(TravelState.profileLoaded(updated));
            } catch (e) {
              final created = await repository.createTravelProfile(request);
              emit(TravelState.profileLoaded(created));
            }
          } catch (e) {
            emit(TravelState.error(e.toString()));
          }
        },
        uploadVisaDocument: (filePath, country) async {
          emit(const TravelState.loading());
          try {
            final url = await repository.uploadVisaDocument(filePath, country);
            emit(TravelState.success('Visa document uploaded: $url'));
            add(const TravelEvent.fetchProfile());
          } catch (e) {
            emit(TravelState.error(e.toString()));
          }
        },
      );
    });
  }
}

