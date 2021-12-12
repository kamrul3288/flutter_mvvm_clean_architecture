import 'package:flutter/material.dart';
import 'package:flutter_mvvm/res/app_string.dart';

class Routes {
  static const String homeScreenRoute = "/";
  static const String postDetailsRoute = "/postDetailsRoute";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.homeScreenRoute:
        return unDefinedRoute();

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.unDefinedRoute),
        ),
        body: Container(),
      );
    });
  }
}
