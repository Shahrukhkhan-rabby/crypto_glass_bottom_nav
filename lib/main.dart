import 'package:crypto_glass_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Newaz NFT',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.limeAccent,
            background: const Color(0xFFFBFBFB),
            primary: const Color(0xFFF3AC9A),
            secondary: const Color(0xFFF3AC9A)),
        useMaterial3: true,
        textTheme: GoogleFonts.quicksandTextTheme(),
      ),
      home: HomePage(),
    );
  }
}
