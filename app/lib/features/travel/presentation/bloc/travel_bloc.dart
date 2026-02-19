import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/travel_repository.dart';
import 'travel_event.dart';
import 'travel_state.dart';

class TravelBloc extends Bloc<TravelEvent, TravelState> {
  final TravelRepository repository;

  TravelBloc({required this.repository}) : super(const TravelState.initial()) {
    on<_FetchRetreats>((event, emit) async {
      emit(const TravelState.loading());
      try {
        final retreats = await repository.getRetreats();
        emit(TravelState.retreatsLoaded(retreats));
      } catch (e) {
        emit(TravelState.error(e.toString()));
      }
    });

    on<_BookRetreat>((event, emit) async {
      emit(const TravelState.loading());
      try {
        await repository.bookRetreat(
          packageId: event.packageId,
          participantName: event.participantName,
        );
        emit(const TravelState.success('Booking Successful'));
      } catch (e) {
        emit(TravelState.error(e.toString()));
      }
    });

    on<_FetchProfile>((event, emit) async {
      emit(const TravelState.loading());
      try {
        final profile = await repository.getTravelProfile();
        emit(TravelState.profileLoaded(profile));
      } catch (e) {
        emit(TravelState.error(e.toString()));
      }
    });

    on<_UpdateProfile>((event, emit) async {
      emit(const TravelState.loading());
      try {
        // Handle create vs update inside repo or here
        // The repo has both, let's try get first
        try {
          await repository.getTravelProfile();
          final updated = await repository.updateTravelProfile(event.request);
          emit(TravelState.profileLoaded(updated));
        } catch (e) {
          final created = await repository.createTravelProfile(event.request);
          emit(TravelState.profileLoaded(created));
        }
      } catch (e) {
        emit(TravelState.error(e.toString()));
      }
    });
    
    on<_UploadVisaDocument>((event, emit) async {
       emit(const TravelState.loading());
       try {
         final url = await repository.uploadVisaDocument(event.filePath, event.country);
         emit(TravelState.success('Visa document uploaded: $url'));
         // Refresh profile to get updated document URL
         add(const TravelEvent.fetchProfile());
       } catch (e) {
         emit(TravelState.error(e.toString()));
       }
    });
  }
}
