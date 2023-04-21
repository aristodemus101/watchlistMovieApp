import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:watchlistrial/presentation/screens/category_screen.dart';
import 'package:watchlistrial/presentation/screens/api_demo and favourites_page.dart';
import 'package:watchlistrial/presentation/screens/main_screen.dart';
import 'package:watchlistrial/presentation/screens/profile_page.dart';
class CupertinoBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            // hometitle: Text('Products'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            // hometitle: Text('Products'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            // title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            // title: Text('Cart'),
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: MainScreen(),
              );
            });
          case 1:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: CategoryPage(),
              );
            });
          case 2:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: FavouritesPage(),
              );
            });
          case 3:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: ProfilePage(),
              );
            });
          default: return CupertinoTabView(builder: (context) {
            return CupertinoPageScaffold(
              child: MainScreen(),
            );
          });
        }
      },
    );
  }
}