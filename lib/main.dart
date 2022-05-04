import 'package:flutter/material.dart';
import 'package:fluttercatalog/pages/home_page.dart';
import 'package:fluttercatalog/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
        themeMode: ThemeMode.light,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.baloo().fontFamily,
        ),
      darkTheme: ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.dark,
      ),

        initialRoute: "/login",
        routes: {
          // "/": (context) => HomePage(),
          "/": (context) => LoginPage(),
          "/home": (context) => HomePage(),
          // "/login": (context) => LoginPage(),
        }

    );
  }
}
