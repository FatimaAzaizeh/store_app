import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store_app/screens/home_screen.dart';
import 'package:store_app/constants.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Electrical Store',
        theme: ThemeData(
            textTheme: GoogleFonts.almaraiTextTheme(
              Theme.of(context).textTheme,
            ),
            colorScheme: const ColorScheme.light(
              primary: kPrimaryColor,
            )),
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale("ar"), // Arabic
          const Locale("en"), // English (fallback)
        ],
        locale: const Locale('ar'), // Set Arabic as the default locale
        // Set text direction to RTL
        builder: (context, child) {
          return Directionality(
            textDirection: TextDirection.rtl,
            child: child!,
          );
        },
        home: HomeScreen());
  }
}
