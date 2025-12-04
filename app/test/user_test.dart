import 'package:flutter_test/flutter_test.dart';
import 'package:app/core/models/user.dart';

void main() {
  test('User model can be created', () {
    final user = User(
      id: '1',
      fullName: 'Test User',
      email: 'test@example.com',
      role: 'customer',
    );

    expect(user.id, '1');
    expect(user.fullName, 'Test User');
    expect(user.email, 'test@example.com');
    expect(user.role, 'customer');
    expect(user.isVerified, false);
  });

  test('User toJson/fromJson works', () {
    final user = User(
      id: '1',
      fullName: 'Test User',
      email: 'test@example.com',
      phone: '+1234567890',
      role: 'artist',
      isVerified: true,
    );

    final json = user.toJson();
    final userFromJson = User.fromJson(json);

    expect(userFromJson.id, user.id);
    expect(userFromJson.fullName, user.fullName);
    expect(userFromJson.email, user.email);
    expect(userFromJson.phone, user.phone);
    expect(userFromJson.role, user.role);
    expect(userFromJson.isVerified, user.isVerified);
  });
}
