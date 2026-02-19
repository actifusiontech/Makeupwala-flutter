import 'package:freezed_annotation/freezed_annotation.dart';

part 'artist_services_event.freezed.dart';

@freezed
class ArtistServicesEvent with _$ArtistServicesEvent {
  const factory ArtistServicesEvent.loadServices(String artistId) = _LoadServices;
  const factory ArtistServicesEvent.addService(Map<String, dynamic> serviceData) = _AddService;
  const factory ArtistServicesEvent.updateService(String serviceId, Map<String, dynamic> serviceData) = _UpdateService;
  const factory ArtistServicesEvent.deleteService(String serviceId) = _DeleteService;
}
