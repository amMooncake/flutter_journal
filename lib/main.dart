import 'package:flutter/material.dart';
import 'package:flutter_journal/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    const dark = Color.fromARGB(255, 21, 20, 24);
    const primary = Color(0xff93cc60);
    const secondary = Color(0xfff85588);
    const white = Color.fromARGB(255, 241, 245, 241);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          bodySmall: TextStyle(fontSize: 12, color: white),
          bodyMedium: TextStyle(fontSize: 20, color: white),
          bodyLarge: TextStyle(fontSize: 30, color: white),
        ),
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: primary,
          primary: primary,
          secondary: secondary,
          surface: dark,
          surfaceDim: Color(0xff0c0b0e),
          onSurface: white,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
