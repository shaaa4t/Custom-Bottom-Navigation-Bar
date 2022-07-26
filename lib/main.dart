import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'views/bottom_nav/bottom_nav.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.soraTextTheme(Theme.of(context).textTheme),
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          color: Colors.transparent,
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
      home: BottomNav(),
    );
  }
}
