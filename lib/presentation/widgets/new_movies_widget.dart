import 'package:flutter/material.dart';
class NewMoviesWidget extends StatefulWidget {
  const NewMoviesWidget({Key? key}) : super(key: key);

  @override
  State<NewMoviesWidget> createState() => _NewMoviesWidgetState();
}

class _NewMoviesWidgetState extends State<NewMoviesWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Trending Movies",style:
            TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
            ),
            Text("See All",style:
            TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
            ),
          ],
        ),),
        SizedBox(height: 10,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for(int j = 15;j>0;j--)
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, "MoviePage");
                },
                child: Container(
                  width: 190,
                  height: 320,
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    color: Color(0xFF292B37),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF292B37).withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       ClipRRect(
                         borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
                         topRight: Radius.circular(10)
                         ),
                         child: Image.asset("assets/$j.jpg",height: 200,
                         width: 200,
                         fit: BoxFit.cover,
                         ),
                       ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text("Thor - Love and Thunder",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            fontWeight: FontWeight.w500,
                          ),),
                          SizedBox(height: 10,),
                          Text("Action/Adventure",
                            style: TextStyle(
                              color: Colors.white54,

                              fontWeight: FontWeight.w500,
                            ),),
                          SizedBox(height: 8,),
                          Row(
                            children: [
                              Icon(Icons.star,
                              color: Colors.amber,),
                              SizedBox(width: 5,),
                              Text("8.5",
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),),
                            ],
                          )
                        ],
                      ),)

                    ],
                  ),
                ),
              )
            ],
          ),
        ),

      ],
    );
  }
}
