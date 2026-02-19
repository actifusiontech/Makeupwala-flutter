import 'package:freezed_annotation/freezed_annotation.dart';

part 'studio_seat_manager_event.freezed.dart';

@freezed
class StudioSeatManagerEvent with _$StudioSeatManagerEvent {
  const factory StudioSeatManagerEvent.loadSeats(String studioId) = _LoadSeats;
  const factory StudioSeatManagerEvent.addSeat(String studioId, Map<String, dynamic> seatData) = _AddSeat;
  const factory StudioSeatManagerEvent.updateSeat(String studioId, String seatId, Map<String, dynamic> seatData) = _UpdateSeat;
  const factory StudioSeatManagerEvent.deleteSeat(String studioId, String seatId) = _DeleteSeat;
}
