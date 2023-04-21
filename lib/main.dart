import 'package:flutter/material.dart';
import 'package:watchlistrial/presentation/screens/category_screen.dart';
import 'package:watchlistrial/presentation/screens/api_demo and favourites_page.dart';
import 'package:watchlistrial/presentation/screens/login_page.dart';
import 'package:watchlistrial/presentation/screens/main_screen.dart';
import 'package:watchlistrial/presentation/screens/movie_details_page.dart';
import 'package:watchlistrial/presentation/screens/api_trial_demo.dart';
import 'package:watchlistrial/presentation/screens/profile_page.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF0F111D),
      ),
      routes: {
        '/' : (context) => MainScreen(),
        "LoginPage" : (context) => LoginPage(),
        "ApiTrialDemoPage" : (context) => MovieList(),
        'MoviePage': (context) => MoviePage(),
        "CategoryPage" : (context) =>  CategoryPage(),
        "ProfilePage":(context) => ProfilePage(),
        "FavouritesPage":(context) => FavouritesPage(),
      },
    );
  }
}
