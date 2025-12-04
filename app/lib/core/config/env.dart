import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  static String get apiBaseUrl => dotenv.env['API_BASE_URL'] ?? 'https://api.fiyonlab.com/api/v1/makeupwala';
  static String get environment => dotenv.env['ENV'] ?? 'development';
}
