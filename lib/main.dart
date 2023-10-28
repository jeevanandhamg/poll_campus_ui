import 'package:flutter/material.dart';
import 'package:poll_campus_ui/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Shopping app',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(254,206,1,1),
            primary: const Color.fromRGBO(254,206,1,1)
            ),
            appBarTheme: const AppBarTheme(
              titleTextStyle: TextStyle(
                fontSize: 20,
                color: Colors.black
              )
            ),
          fontFamily: 'Lato',
          inputDecorationTheme: const InputDecorationTheme(
            hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),
            prefixIconColor: Color.fromRGBO(119, 119, 119, 1)
          ),
          textTheme: const TextTheme(
            titleLarge: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            titleMedium: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
            bodySmall: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),
          )
    
        ),
        home: LoginPage(),
        
      );
  }
}
