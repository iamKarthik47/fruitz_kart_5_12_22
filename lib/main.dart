import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:karthik_experiment/Homepage/HomePage.dart';
import 'package:karthik_experiment/screens/Splash_screen.dart';
import 'screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fruitz_Kart',
      home: SplashScreeen1(),
      theme: ThemeData(
        textTheme:
            GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/splash-screen',
      routes: {
    '/splash-screen':(context) => SplashScreeen1(),
        'login': (context) => LoginScreen(),
        'ForgotPassword': (context) => ForgotPassword(),
        'CreateNewAccount': (context) => CreateNewAccount(),
        'homepage1': (context) => MainScreen(),
      },
    );
  }
}
