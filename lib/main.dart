import 'package:flutter/material.dart';

import 'package:epilexa/screens/home_page.dart';
import 'package:epilexa/screens/welcome_page.dart';
import 'screens/login_page.dart';
import 'screens/profile_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/welcome':(context) => WelcomePage(),
        '/login':(context) => LoginPage(),
        '/home':(context) => HomePage(),
        '/profile':(context) => ProfilePage(),
      },
    );
  }
}
