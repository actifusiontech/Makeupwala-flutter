import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/artist_repository.dart';
import 'artist_services_event.dart';
import 'artist_services_state.dart';

class ArtistServicesBloc extends Bloc<ArtistServicesEvent, ArtistServicesState> {
  final ArtistRepository repository;
  String? _currentArtistId; // To reload services after action

  ArtistServicesBloc({required this.repository}) : super(const ArtistServicesState.initial()) {
    on<ArtistServicesEvent>((event, emit) async {
      await event.when(
        loadServices: (artistId) async {
          _currentArtistId = artistId;
          emit(const ArtistServicesState.loading());
          try {
            final services = await repository.getServices(artistId);
            emit(ArtistServicesState.loaded(services));
          } catch (e) {
            emit(ArtistServicesState.error(e.toString()));
          }
        },
        addService: (serviceData) async {
          emit(const ArtistServicesState.loading());
          try {
            await repository.addService(serviceData);
            emit(const ArtistServicesState.actionSuccess('Service added successfully!'));
            if (_currentArtistId != null) {
              add(ArtistServicesEvent.loadServices(_currentArtistId!));
            }
          } catch (e) {
            emit(ArtistServicesState.error(e.toString()));
          }
        },
        updateService: (serviceId, serviceData) async {
          emit(const ArtistServicesState.loading());
          try {
            await repository.updateService(serviceId, serviceData);
            emit(const ArtistServicesState.actionSuccess('Service updated successfully!'));
             if (_currentArtistId != null) {
              add(ArtistServicesEvent.loadServices(_currentArtistId!));
            }
          } catch (e) {
            emit(ArtistServicesState.error(e.toString()));
          }
        },
        deleteService: (serviceId) async {
          emit(const ArtistServicesState.loading());
          try {
            await repository.deleteService(serviceId);
            emit(const ArtistServicesState.actionSuccess('Service deleted successfully!'));
             if (_currentArtistId != null) {
              add(ArtistServicesEvent.loadServices(_currentArtistId!));
            }
          } catch (e) {
            emit(ArtistServicesState.error(e.toString()));
          }
        },
      );
    });
  }
}
