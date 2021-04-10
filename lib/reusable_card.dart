import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  ReusableCard({@required this.colour, this.cardChild, this.onPress, this.appName});

  final Color colour;
  final Widget cardChild;
  final Function onPress;
  final String appName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onPress,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircularProgressIndicator(
              backgroundColor: Colors.grey,
              strokeWidth: 3,
              value: 0.3,
              valueColor: AlwaysStoppedAnimation(Colors.white70),
            ),
            SizedBox(height: 20,),
            Text(
              "$appName  ",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(height: 8,),
            Text(
              "2.5 hrs",
              style: TextStyle(color: Colors.white70),
            ),
            SizedBox(height: 20,),
            SizedBox(
              child: Container(
                height: 2,
                width: 50,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 15,),
            Text(
              "Avg usage\n1.5 hrs",
              style: TextStyle(color: Colors.white70),
            ),
          ],
        ),
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
      ),
    );
  }
}