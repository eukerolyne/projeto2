import 'package:flutter/material.dart';
import 'color_schemes.g.dart';
import 'login/loginpage.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Meu primeiro app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      home: LoginPage(),
    ),
  );
}