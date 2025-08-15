import 'package:flutter/material.dart';
import 'package:newapp/views/homeScreen.dart';
import 'package:newapp/views/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/splashscreen': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
      },
      initialRoute: '/splashscreen',
      home: const SplashScreen(),
    );
  }
}
