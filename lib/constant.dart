import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/foundation.dart';

class Constant {
  static String get dotFile => kReleaseMode ? ".env.prod" : ".env.dev";
  static final String endPoint = dotenv.env['HOST']!;
}
