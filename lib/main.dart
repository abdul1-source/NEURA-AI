import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:semester_project/pages/home.dart';
import 'package:semester_project/theme/colors.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NEURA',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.submitButton),
        textTheme: GoogleFonts.interTextTheme(
          ThemeData.dark().textTheme.copyWith(
                bodyMedium: const TextStyle(
                  fontSize: 15,
                  color: AppColors.whiteColor,
                ),
              ),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const Homepage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add your logo or app icon here
            Icon(Icons.smart_toy, size: 80, color: AppColors.submitButton),
            const SizedBox(height: 20),
            Text(
              'NEURA',
              style: GoogleFonts.inter(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: AppColors.whiteColor,
              ),
            ),
            const SizedBox(height: 30),
            const CircularProgressIndicator(
              color: AppColors.submitButton,
            ),
          ],
        ),
      ),
    );
  }
}

