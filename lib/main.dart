import "package:flutter/material.dart";
import "screens/menu_screen.dart";

void main() {
  runApp(const GoldBbqApp());
}

class GoldBbqApp extends StatelessWidget {
  const GoldBbqApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Gold BBQ",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFC8962E))
      ),
      home: const MenuScreen(),
    );
  }
}