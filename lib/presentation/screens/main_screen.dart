import 'package:flutter/material.dart';
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Row(
                children: [
                  Text("Home",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16
                  ),
                  ),],
              ),),
              // SizedBox(height: 5),
              UpcomingWidget(),
              SizedBox(height: 10,),
              NewMoviesWidget(),
            ],

          ),
        ),
      ),
      bottomNavigationBar: CustomNavBar(),
    ) ;
  }
}
