import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:app/features/auth/bloc/auth_bloc.dart';
import 'package:app/core/network/api_client.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';

class MockApiClient extends Mock implements ApiClient {}
class MockFlutterSecureStorage extends Mock implements FlutterSecureStorage {}
class MockGoogleSignIn extends Mock implements GoogleSignIn {}

void main() {
  late AuthBloc authBloc;
  late MockApiClient mockApiClient;
  late MockFlutterSecureStorage mockSecureStorage;
  late MockGoogleSignIn mockGoogleSignIn;

  setUp(() {
    mockApiClient = MockApiClient();
    mockSecureStorage = MockFlutterSecureStorage();
    mockGoogleSignIn = MockGoogleSignIn();
    authBloc = AuthBloc(
      apiClient: mockApiClient,
      secureStorage: mockSecureStorage,
      googleSignIn: mockGoogleSignIn,
    );
  });

  tearDown(() {
    authBloc.close();
  });

  group('AuthBloc', () {
    test('initial state is AuthState.initial', () {
      expect(authBloc.state, const AuthState.initial());
    });
  });
}
