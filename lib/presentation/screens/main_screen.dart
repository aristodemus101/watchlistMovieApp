import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:watchlistrial/model/movies_bloc.dart';
import 'package:watchlistrial/presentation/widgets/cupertino_bottom_bar.dart';
import 'package:watchlistrial/presentation/screens/login_page.dart';
import 'package:watchlistrial/presentation/widgets/main_screen_widget.dart';
import 'package:watchlistrial/presentation/widgets/new_movies_widget.dart';
import 'package:watchlistrial/presentation/widgets/upcoming_widgets.dart';
import '../widgets/custom_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator());
          }
          else if(snapshot.hasError){
            return Center(child: Text("Something went wrong"),);
          }
          else if(snapshot.hasData){
            return  MainScreenWidget();

          }
          else
            {
              return LoginPage();
            }
        }
      ),
    ) ;
  }
}
