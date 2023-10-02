import 'package:bhookmandu/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bhookmandu',
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(206, 33, 48, 1),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(206, 33, 48, 1),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        textTheme: TextTheme(
          titleMedium: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          titleSmall: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          bodyLarge: GoogleFonts.poppins(
            fontSize: 20,
          ),
          labelSmall: GoogleFonts.poppins(
            color: Colors.green,
            fontSize: 12,
          ),
          bodyMedium: GoogleFonts.poppins(
            fontSize: 14,
          ),
          bodySmall: GoogleFonts.poppins(
            color: Colors.white,
          ),
        ),
        drawerTheme: const DrawerThemeData(
          backgroundColor: Color.fromRGBO(206, 33, 48, 1),
        ),
        scaffoldBackgroundColor: Colors.grey.shade300,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
