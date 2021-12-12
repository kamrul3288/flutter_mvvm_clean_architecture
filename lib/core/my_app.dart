import 'package:flutter/material.dart';
import 'package:flutter_mvvm/res/theme_manager.dart';
import 'package:flutter_mvvm/route/routes_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getApplicationTheme(),
      initialRoute: Routes.homeScreenRoute,
      onGenerateRoute: RouteGenerator.getRoute,
    );
  }
}
