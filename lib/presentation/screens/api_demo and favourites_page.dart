import 'package:flutter/material.dart';
import 'package:watchlistrial/presentation/widgets/custom_nav_bar.dart';
class FavouritesPage extends StatefulWidget {
  const FavouritesPage({Key? key}) : super(key: key);

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
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
                  SizedBox(height: 30,),
                  Container(

                    width: double.infinity, // Set the width to occupy entire width
                    alignment: Alignment.center, // Align the button at the center
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "ApiTrialDemoPage");
                      },
                      child: Text("See the API trial",
                      style: TextStyle(
                        color: Colors.black,
                      ),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white54, // Set the background color to transparent
                         // Set the text color to black
                        padding: EdgeInsets.all(30.0), // Set the height of the button
                      ),
                    ),
                  ),


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
