import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './screens/tap_bar_screen.dart';
import 'models/constants.dart';
import 'ui/main_home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gymble',
      theme: ThemeData(
        fontFamily: GoogleFonts.openSans().fontFamily,
        brightness: Brightness.dark,
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: TextTheme(
          headline4: TextStyle(
            color: Colors.white,
          ),
          button: TextStyle(
            color: kPrimaryColor,
            fontSize: 20,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white.withOpacity(0.2),
            ),
          ),
        ),
      ),
      //home: MainHomeScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => MainHomeScreen(),
        TabsScreen.routeName: (ctx) => TabsScreen(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => MainHomeScreen(),
        );
      },
    );
  }
}
