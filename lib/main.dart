import 'package:flutter/material.dart';
import 'package:wisata_candi_putrifathonah/data/candi_data.dart';
import 'package:wisata_candi_putrifathonah/screens/home_screen.dart';
import 'package:wisata_candi_putrifathonah/screens/main_screen.dart';
import 'package:wisata_candi_putrifathonah/screens/profile_screen.dart';
import 'package:wisata_candi_putrifathonah/screens/signIn_screen.dart';
import 'package:wisata_candi_putrifathonah/screens/detail_screen.dart';
import 'package:wisata_candi_putrifathonah/widgets/ProfileInfoItem.dart';
import 'package:wisata_candi_putrifathonah/screens/signUp_Screen.dart';
import 'package:wisata_candi_putrifathonah/screens/search_screen.dart';
import 'package:wisata_candi_putrifathonah/widgets/item_card.dart';
import 'package:wisata_candi_putrifathonah/screens/favorite_screen.dart';

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
      title: 'Wisata Candi',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.deepPurple),
          titleTextStyle: TextStyle(
            color: Colors.deepPurple,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple).copyWith(
          primary: Colors.deepPurple,
          surface: Colors.deepPurple[50],
        ),
        useMaterial3: true,
      ),
      home: MainScreen(),
      initialRoute: '/',
      routes: {
        '/homescreen': (context) => const HomeScreen(),
        '/signin': (context) =>  SignInScreen(),
        '/signup': (context) =>  SignUpScreen(),
      },
    );
  }
}