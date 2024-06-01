import 'package:flutter/material.dart';
import 'package:servis_apps/screen/splashscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: SharedPreferences.getInstance(),
      builder: (BuildContext context, AsyncSnapshot<SharedPreferences> prefs) {
        return const MaterialApp(home: SplashScreenPage());
      },
    );
  }
}
