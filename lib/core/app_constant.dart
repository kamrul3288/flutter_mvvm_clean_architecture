import 'package:flutter/foundation.dart';

class AppConstant {
  static const baseUrl = kReleaseMode
      ? "https://jsonplaceholder.typicode.com"
      : "https://jsonplaceholder.typicode.com";
}
