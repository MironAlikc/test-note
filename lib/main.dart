import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes/Pages/profile_page.dart';
import 'package:notes/Pages/utils.dart';
import 'package:notes/Theme/app.colors.dart';
import 'package:notes/Pages/calendar.dart';
import 'package:notes/Pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            //textTheme: GoogleFonts.abrilFatfaceTextTheme()),
            backgroundColor: AppColors.mainDarkBiue,
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: AppColors.mainDarkBiue,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
          ),
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.abrilFatfaceTextTheme().copyWith(
            bodyText2:
                GoogleFonts.abrilFatface(color: Colors.black, fontSize: 30.0),
          ),
          brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: HomePage(), //Calendar(),
    );
  }
}
