import 'package:flutter/material.dart';
import 'package:wisata_candi_putrifathonah/data/candi_data.dart';
import 'package:wisata_candi_putrifathonah/screens/home_screen.dart';
import 'package:wisata_candi_putrifathonah/screens/profile_screen.dart';
import 'package:wisata_candi_putrifathonah/screens/signIn_screen.dart';
import 'package:wisata_candi_putrifathonah/screens/detail_screen.dart';
import 'package:wisata_candi_putrifathonah/widgets/ProfileInfoItem.dart';
import 'package:wisata_candi_putrifathonah/screens/signUp_Screen.dart';
import 'package:wisata_candi_putrifathonah/screens/search_screen.dart';
import 'package:wisata_candi_putrifathonah/widgets/item_card.dart';
import 'package:wisata_candi_putrifathonah/screens/favorite_screen.dart';

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
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ).copyWith(primary: Colors.deepPurple, surface: Colors.deepPurple[50]),
        useMaterial3: true,
      ),
      //ini menampilkan emulator yang mau ditampilkan
      // home: ProfileScreen(),
      // home: Signinscreen(),
      // home: Signupscreen(),
      // home: Searchscreen(),
      // home: HomeScreen(),
      // home: DetailScreen(candi : candiList[0]),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // Todo: 1. Deklaraasi Variabel

  int _currentIndex = 0;
  final List <Widget>_children = [
    HomeScreen(),
    Searchscreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Todo: 2. Buat properti body berupa widget yang ditampilkan
      body: _children[_currentIndex],
      // Todo: 3. Buat properti bottorNavigationBar dengan nilai There
      bottomNavigationBar: Theme(
        // Todo: 4, Buat data dan child dari These
          data: Theme.of(context).copyWith(
          canvasColor: Colors.deepPurple[50],
          ),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index){
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.deepPurple,),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Colors.deepPurple,),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite, color: Colors.deepPurple,),
                label: 'Favorite',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.deepPurple,),
                label: 'Profile',
              ),
            ],
            selectedItemColor: Colors.deepPurple,
            unselectedItemColor: Colors.deepPurple[100],
            showUnselectedLabels: true,
          ),
      ),
    );
  }
}

