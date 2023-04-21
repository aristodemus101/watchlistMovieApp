import 'package:flutter/material.dart';
import 'package:watchlistrial/presentation/widgets/custom_nav_bar.dart';
import 'package:watchlistrial/presentation/widgets/new_movies_widget.dart';
import 'package:watchlistrial/presentation/widgets/upcoming_widgets.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Row(
                children: [
                  Text(
                    "Home",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 5),
            UpcomingWidget(),
            SizedBox(
              height: 10,
            ),
            NewMoviesWidget(),
          ],
        ),
        bottomNavigationBar: CustomNavBar(),
      ),
    );
  }
}
