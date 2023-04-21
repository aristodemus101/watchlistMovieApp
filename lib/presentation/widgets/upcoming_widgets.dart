import 'package:flutter/material.dart';
class UpcomingWidget extends StatefulWidget {
  const UpcomingWidget({Key? key}) : super(key: key);

  @override
  State<UpcomingWidget> createState() => _UpcomingWidgetState();
}

class _UpcomingWidgetState extends State<UpcomingWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Upcoming movies",style:
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
              for(int i = 1; i<16 ;i++)
              Padding(padding: EdgeInsets.only(left: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset("assets/$i.jpg",
                height: 200,
                  width: 300,
                fit: BoxFit.cover,
                ),
              ),
              ),
            ],
          ),
        )

      ],

    );
  }
}
