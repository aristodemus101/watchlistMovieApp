import 'package:flutter/material.dart';
class CustomNavBar extends StatefulWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:5),
      height: 55,
      padding: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        color: Color(0xFF292B37),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, "/");
            },
            child: Icon(
              Icons.home,
              size: 32,
              color: Colors.white ,
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, "CategoryPage");
            },
            child: Icon(
              Icons.category,
              size: 32,
              color: Colors.white ,
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, "FavouritesPage");
            },
            child: Icon(
              Icons.favorite_border,
              size: 32,
              color: Colors.white ,
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, "ProfilePage");
            },
            child: Icon(
              Icons.person,
              size: 32,
              color: Colors.white ,
            ),
          ),

        ],
      ),
    );
  }
}
