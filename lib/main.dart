import 'package:bhookmandu/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
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
            )),
        textTheme: TextTheme(
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
