import 'package:flutter/material.dart';
import 'package:watchlistrial/presentation/screens/category_screen.dart';
import 'package:watchlistrial/presentation/screens/favourites_page.dart';
import 'package:watchlistrial/presentation/screens/main_screen.dart';
import 'package:watchlistrial/presentation/screens/movie_details_page.dart';
import 'package:watchlistrial/presentation/screens/profile_page.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF0F111D),
      ),
      routes: {
        '/' : (context) => MainScreen(),
        'MoviePage': (context) => MoviePage(),
        "CategoryPage" : (context) =>  CategoryPage(),
        "ProfilePage":(context) => ProfilePage(),
        "FavouritesPage":(context) => FavouritesPage(),
      },
    );
  }
}
