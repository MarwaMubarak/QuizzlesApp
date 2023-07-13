import 'package:flutter/material.dart';
import 'package:quizzles_app/services/dio/dio.dart';
import 'package:quizzles_app/src/app_root.dart';
import 'core/shared_reference/shared_preference.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreference.init();
  DioHelper.init();
  runApp(const AppRoot());
}
