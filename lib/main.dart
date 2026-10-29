import 'package:flutter/material.dart';

import 'daftar_makanan.dart';

void main() {
  runApp(const FoodApp());
}

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foodie',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFFFF9F5),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFE85D32)),
        fontFamily: 'Roboto',
      ),
      home: const DaftarMakananPage(),
    );
  }
}
