import 'package:e_comerce/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Store App',
      routes: {
        HomeScreen.id:(context) => const HomeScreen(),
      },
      initialRoute: HomeScreen.id,
    );
  }
}