import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:dio/dio.dart';

// Generate mocks with: dart run build_runner build
@GenerateMocks([Dio])
class _Mocks {}

/// Mock Auth Repository
class MockAuthRepository extends Mock {
  Future<Map<String, dynamic>> login({
    required String phone,
    required String password,
  }) async {
    return super.noSuchMethod(
      Invocation.method(#login, [], {#phone: phone, #password: password}),
      returnValue: Future.value({'token': 'mock-token'}),
    );
  }

  Future<Map<String, dynamic>> verifyOtp({
    required String phone,
    required String otp,
  }) async {
    return super.noSuchMethod(
      Invocation.method(#verifyOtp, [], {#phone: phone, #otp: otp}),
      returnValue: Future.value({'token': 'mock-token'}),
    );
  }

  Future<Map<String, dynamic>> register({
    required String name,
    required String email,
    required String phone,
    required String password,
  }) async {
    return super.noSuchMethod(
      Invocation.method(#register, [], {
        #name: name,
        #email: email,
        #phone: phone,
        #password: password,
      }),
      returnValue: Future.value({'user_id': 'mock-user-id'}),
    );
  }

  Future<void> logout() async {
    return super.noSuchMethod(
      Invocation.method(#logout, []),
      returnValue: Future.value(),
    );
  }
}

/// Mock Booking Repository
class MockBookingRepository extends Mock {
  Future<List<Map<String, dynamic>>> getBookings() async {
    return super.noSuchMethod(
      Invocation.method(#getBookings, []),
      returnValue: Future.value([]),
    );
  }

  Future<Map<String, dynamic>> createBooking({
    required String artistId,
    required String serviceId,
    required DateTime dateTime,
    required double amount,
  }) async {
    return super.noSuchMethod(
      Invocation.method(#createBooking, [], {
        #artistId: artistId,
        #serviceId: serviceId,
        #dateTime: dateTime,
        #amount: amount,
      }),
      returnValue: Future.value({'booking_id': 'mock-booking-id'}),
    );
  }

  Future<void> cancelBooking(String bookingId) async {
    return super.noSuchMethod(
      Invocation.method(#cancelBooking, [bookingId]),
      returnValue: Future.value(),
    );
  }
}

/// Mock Wallet Repository
class MockWalletRepository extends Mock {
  Future<Map<String, dynamic>> getBalance() async {
    return super.noSuchMethod(
      Invocation.method(#getBalance, []),
      returnValue: Future.value({'balance': 1000.0}),
    );
  }

  Future<Map<String, dynamic>> topUp({
    required double amount,
    required String paymentMethod,
  }) async {
    return super.noSuchMethod(
      Invocation.method(#topUp, [], {#amount: amount, #paymentMethod: paymentMethod}),
      returnValue: Future.value({'transaction_id': 'mock-txn-id'}),
    );
  }

  Future<List<Map<String, dynamic>>> getTransactions() async {
    return super.noSuchMethod(
      Invocation.method(#getTransactions, []),
      returnValue: Future.value([]),
    );
  }
}
