import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:app/features/booking/bloc/booking_bloc.dart';
import 'package:app/features/booking/data/booking_repository.dart';

class MockBookingRepository extends Mock implements BookingRepository {
  Future<Map<String, dynamic>> Function({
    required String artistId,
    required String serviceId,
    required DateTime date,
    required String time,
    String? notes,
    int redeemPoints,
    String paymentMethod,
    String? couponCode,
  })? createBookingMock;

  @override
  Future<Map<String, dynamic>> createBooking({
    required String artistId,
    required String serviceId,
    required DateTime date,
    required String time,
    String? notes,
    int redeemPoints = 0,
    String paymentMethod = 'online',
    String? couponCode,
  }) async {
    print('DEBUG override createBooking inside MockBookingRepository called!');
    print('DEBUG createBookingMock is null: ${createBookingMock == null}');
    if (createBookingMock != null) {
      final res = await createBookingMock!(
        artistId: artistId,
        serviceId: serviceId,
        date: date,
        time: time,
        notes: notes,
        redeemPoints: redeemPoints,
        paymentMethod: paymentMethod,
        couponCode: couponCode,
      );
      print('DEBUG createBookingMock returned res: $res');
      return res;
    }
    return <String, dynamic>{};
  }
}


void main() {
  setUpAll(() {
    registerFallbackValue(DateTime(2024, 1, 1));
  });

  group('BookingBloc', () {
    late BookingRepository bookingRepository;
    late BookingBloc bookingBloc;

    setUp(() {
      bookingRepository = MockBookingRepository();
      bookingBloc = BookingBloc(repository: bookingRepository);
    });

    tearDown(() {
      bookingBloc.close();
    });

    test('initial state is BookingState.initial', () {
      expect(bookingBloc.state, const BookingState.initial());
    });

    group('CreateBooking', () {
      final date = DateTime(2024, 1, 1);
      final time = '10:00';

      blocTest<BookingBloc, BookingState>(
        'emits [loading, success] when booking creation succeeds',
        build: () {
          (bookingRepository as MockBookingRepository).createBookingMock = ({
            required artistId,
            required serviceId,
            required date,
            required time,
            notes,
            redeemPoints = 0,
            paymentMethod = 'online',
            couponCode,
          }) async => <String, dynamic>{
            'id': 'booking123',
            'total_amount': 1500.0,
          };
          print('DEBUG repository in test: ${bookingRepository.hashCode}');
          return bookingBloc;
        },
        act: (bloc) => bloc.add(BookingEvent.createBooking(
          artistId: 'artist1',
          serviceId: 'service1',
          date: date,
          time: time,
          paymentMethod: 'cod',
        )),
        expect: () => [
          const BookingState.loading(),
          BookingState.success(message: 'Booking created successfully!', booking: const {'id': 'booking123', 'total_amount': 1500.0}),
        ],
      );

      blocTest<BookingBloc, BookingState>(
        'emits [loading, error] when booking creation fails',
        build: () {
          (bookingRepository as MockBookingRepository).createBookingMock = ({
            required artistId,
            required serviceId,
            required date,
            required time,
            notes,
            redeemPoints = 0,
            paymentMethod = 'online',
            couponCode,
          }) async => throw Exception('Booking failed');
          return bookingBloc;
        },
        act: (bloc) => bloc.add(BookingEvent.createBooking(
          artistId: 'artist1',
          serviceId: 'service1',
          date: date,
          time: time,
          paymentMethod: 'cod',
        )),
        expect: () => [
          const BookingState.loading(),
          const BookingState.error(message: 'Exception: Booking failed'),
        ],
      );
    });

    group('FetchBookings', () {
      final mockBookings = [
        {'id': '1', 'status': 'pending'},
        {'id': '2', 'status': 'confirmed'},
      ];

      blocTest<BookingBloc, BookingState>(
        'emits [loading, loaded] when fetching bookings succeeds',
        build: () {
          when(() => bookingRepository.listMyBookings(isArtist: any(named: 'isArtist')))
              .thenAnswer((_) async => mockBookings);
          return bookingBloc;
        },
        act: (bloc) => bloc.add(const BookingEvent.fetchBookings(isArtist: false)),
        expect: () => [
          const BookingState.loading(),
          BookingState.loaded(bookings: mockBookings),
        ],
      );

       blocTest<BookingBloc, BookingState>(
        'emits [loading, error] when fetching bookings fails',
        build: () {
          when(() => bookingRepository.listMyBookings(isArtist: any(named: 'isArtist')))
              .thenThrow(Exception('Network error'));
          return bookingBloc;
        },
        act: (bloc) => bloc.add(const BookingEvent.fetchBookings(isArtist: false)),
        expect: () => [
          const BookingState.loading(),
          const BookingState.error(message: 'Exception: Network error'),
        ],
      );
    });
  });
}
