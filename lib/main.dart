import 'package:flutter/material.dart';
import 'package:flutter_mvvm/core/my_app.dart';
import 'package:flutter_mvvm/core/app_dependency.dart' as dependencies;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  dependencies.setDependencies();
  runApp(const MyApp());
}
