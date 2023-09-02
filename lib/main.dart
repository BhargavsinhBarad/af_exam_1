import 'package:af_exam_1/Screens/details.dart';
import 'package:af_exam_1/Screens/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Screens/home.dart';
import 'Screens/intro.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  bool isvisited = preferences.getBool("isIntroVisited") ?? false;
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      initialRoute: (isvisited) ? 'Splash' : '/',
      routes: {
        '/': (context) => intro_page(),
        'Splash': (ctx) => Splash(),
        'home': (ctx) => home(),
        'details': (ctx) => details()
      },
    ),
  );
}
