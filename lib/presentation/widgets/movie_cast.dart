import "package:flutter/material.dart";
class MovieCastWidget extends StatefulWidget {
  const MovieCastWidget({Key? key}) : super(key: key);

  @override
  State<MovieCastWidget> createState() => _MovieCastWidgetState();
}

class _MovieCastWidgetState extends State<MovieCastWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Movie Cast",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),

            ],
          ),
        ),
        SizedBox(height: 15,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for(int i = 1; i<7;i++)
                Padding(padding: EdgeInsets.only(left: 10, bottom: 20),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/actors/$i.jpeg",
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      )
                  ),
                )
            ],
          ),
        )
      ],
    );
  }
}
