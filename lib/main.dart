import 'package:flutter/material.dart';
import 'package:signup_signin/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:signup_signin/src/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AAppTheme.lightTheme,
      darkTheme: AAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,

      home:  WelcomeScreen(),
    );
  }
}
