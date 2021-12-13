import 'package:flutter/material.dart';
import 'package:flutter_mvvm/presentation/postlist/post_list_screen.dart';
import 'package:flutter_mvvm/presentation/postlist/post_list_view_model.dart';
import 'package:flutter_mvvm/res/app_string.dart';
import 'package:provider/provider.dart';

class Routes {
  static const String homeScreenRoute = "/";
  static const String postDetailsRoute = "/postDetailsRoute";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.homeScreenRoute:
        return MaterialPageRoute(
            builder: (_) => ChangeNotifierProvider(
                  create: (_) => PostListViewModel(),
                  child: const PostListScreen(),
                ));
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
