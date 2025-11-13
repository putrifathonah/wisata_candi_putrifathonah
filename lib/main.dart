import 'package:flutter/material.dart';
import 'package:wisata_candi_putrifathonah/data/candi_data.dart';
import 'package:wisata_candi_putrifathonah/screens/ProfileScreen.dart';
import 'package:wisata_candi_putrifathonah/screens/SignInScreen.dart';
import 'package:wisata_candi_putrifathonah/screens/detail_screen.dart';
import 'package:wisata_candi_putrifathonah/widgets/ProfileInfoItem.dart';
import 'package:wisata_candi_putrifathonah/screens/SignUpScreen.dart';
import 'package:wisata_candi_putrifathonah/screens/SearchScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // menghilangkan debug
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
        colorScheme: 
        ColorScheme.fromSeed(seedColor: Colors.deepPurple). copyWith(
          primary: Colors.deepPurple,
          surface: Colors.deepPurple[50],
        ),
        useMaterial3: true,
      ),
      //ini menampilkan emulator yang mau ditampilkan
      // home: ProfileScreen(),
      // home: Signinscreen(),
      // home: Signupscreen(),
      home: Searchscreen(),
      // home: DetailScreen(candi : candiList[0]),
    );
  }
}

