import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/travel_models.dart';

part 'travel_event.freezed.dart';

@freezed
class TravelEvent with _$TravelEvent {
  const factory TravelEvent.fetchRetreats() = _FetchRetreats;
  const factory TravelEvent.bookRetreat(String packageId, String participantName) = _BookRetreat;
  const factory TravelEvent.fetchProfile() = _FetchProfile;
  const factory TravelEvent.updateProfile(CreateTravelProfileRequest request) = _UpdateProfile;
  const factory TravelEvent.uploadVisaDocument(String filePath, String country) = _UploadVisaDocument;
}
