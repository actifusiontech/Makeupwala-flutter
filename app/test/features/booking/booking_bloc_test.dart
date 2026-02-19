import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:app/features/booking/bloc/booking_bloc.dart';
import 'package:app/features/booking/data/booking_repository.dart';

class MockBookingRepository extends Mock implements BookingRepository {}


void main() {
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
          when(() => bookingRepository.createBooking(
                artistId: any(named: 'artistId'),
                serviceId: any(named: 'serviceId'),
                date: any(named: 'date'),
                time: any(named: 'time'),
                notes: any(named: 'notes'),
                redeemPoints: any(named: 'redeemPoints'),
                paymentMethod: any(named: 'paymentMethod'),
                couponCode: any(named: 'couponCode'),
              )).thenAnswer((_) async => {});
          return bookingBloc;
        },
        act: (bloc) => bloc.add(BookingEvent.createBooking(
          artistId: 'artist1',
          serviceId: 'service1',
          date: date,
          time: time,
        )),
        expect: () => [
          const BookingState.loading(),
          const BookingState.success(message: 'Booking created successfully!'),
        ],
      );

      blocTest<BookingBloc, BookingState>(
        'emits [loading, error] when booking creation fails',
        build: () {
          when(() => bookingRepository.createBooking(
                artistId: any(named: 'artistId'),
                serviceId: any(named: 'serviceId'),
                date: any(named: 'date'),
                time: any(named: 'time'),
                notes: any(named: 'notes'),
                redeemPoints: any(named: 'redeemPoints'),
                paymentMethod: any(named: 'paymentMethod'),
                couponCode: any(named: 'couponCode'),
              )).thenThrow(Exception('Booking failed'));
          return bookingBloc;
        },
        act: (bloc) => bloc.add(BookingEvent.createBooking(
          artistId: 'artist1',
          serviceId: 'service1',
          date: date,
          time: time,
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
