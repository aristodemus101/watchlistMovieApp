import 'package:flutter/material.dart';
import 'package:watchlistrial/presentation/widgets/custom_nav_bar.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),

                  ],
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              child: Column(
                children: [
                  Center(
                    child: CircleAvatar(
                radius: 80.0, // Set the radius of the circle avatar
                backgroundImage: AssetImage('assets/2.jpg'),),
                  ),
                  SizedBox(height: 10,),
                  Text("aristodemusPanda",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 30
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text("Divyaansh Mehta",
                    style: TextStyle(
                        color: Colors.white54,
                        fontWeight: FontWeight.w500,
                        fontSize: 16
                    ),
                  ),

                  //TODO add a change password and change dp option and add fields like email and password
                ],
              ),)
            ],
          ),
        ),
      ) ,
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
