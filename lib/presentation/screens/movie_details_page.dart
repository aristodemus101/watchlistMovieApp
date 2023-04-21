import 'package:flutter/material.dart';
import 'package:watchlistrial/presentation/widgets/custom_nav_bar.dart';
import 'package:watchlistrial/presentation/widgets/movie_cast.dart';
import 'package:watchlistrial/presentation/widgets/movie_page_buttons.dart';
import 'package:watchlistrial/presentation/widgets/recommended_widget.dart';
class MoviePage extends StatefulWidget {
  const MoviePage({Key? key}) : super(key: key);

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: 0.4,
            child: Image.asset("assets/15.jpg",height: 250,
            width: double.infinity,
            fit: BoxFit.cover),
          ),
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios_sharp,
                        color: Colors.white,
                        size: 30,
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.favorite_border,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),


                    ],
                  ),
                  ),
                  SizedBox(height: 30,),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 16),child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow:[
                                BoxShadow(
                                  color: Colors.blue.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 8,
                                )
                              ]
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                "assets/15.jpg",
                                height: 220,
                                  width: 180,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        Container(
                          margin: EdgeInsets.only(right: 10, top: 56),
                          height: 70,
                            width: 70,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),
                            color: Colors.red,
                            boxShadow:[
                              BoxShadow(
                                color: Colors.red.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 8,
                              ),
                            ]
                          ),
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                              size: 60,
                          ),
                        )
                      ],
                    ),),
                  SizedBox(height: 30,),
                  MoviePageButtons(),
                  Padding(padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Thor Love and Thunder",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w500
                      ),
                      ),
                      SizedBox(height: 15,),
                      Text(
                        "The greatest story of love ever told in MCU history, a visual treat to remember for a lifetime."
                            "ever told in MCU history, a visual treat to remember for a lifetime"
                            "ever told in MCU history, a visual treat to remember for a lifetime.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            // fontWeight: FontWeight.w500
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                  ),
                  SizedBox(height: 10,),
                  MovieCastWidget(),

                  //TODO add a widge to display the cast details instead of the Recommended widget or maybe add recommended widget at the end.
                  RecommendedWidget()
                ],
              ),
            ),
          )
        ],
      ),

bottomNavigationBar: CustomNavBar(),
    );
  }
}
