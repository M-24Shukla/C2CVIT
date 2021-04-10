import 'package:flutter/material.dart';
import 'reusable_card.dart';

class StatsPage extends StatelessWidget {
  static String id = "stats_page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            stops: [0.1, 5],
            colors: [Color(0xff4297E7), Color(0xff1A2FA2)]
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 95,top: 300),
              child: Stack(
                children: <Widget>[
                  Container(
                    transform: Matrix4.rotationZ(3.14 + 3.14/3),
                    height: 150,
                    width: 150,
                    child: CircularProgressIndicator(
                      value: 0.45,
  //                  backgroundColor: Color(0xff1A2FA),
                      strokeWidth: 13,
  //                  valueColor: Animation<Color> (Color(), Color()),
                      valueColor: AlwaysStoppedAnimation(Color(0xff1A2FA2)),
                    ),
                  ),
                  Text(
                    "Productivity\n\n 12 Hrs",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ]
              ),
            ),

            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height/2-50,
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
              ),
              child: Column(
                children: [
                  Text(
                    'Vulnerable apps',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  SizedBox(height: 30,),
                  AspectRatio(
                    aspectRatio: 1.79,
                    child: ListView(

                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        ReusableCard(
                          colour: Color(0xffED657B),
                          appName: "Instagram",
                        ),
                        ReusableCard(
                          colour: Color(0xffF6C067),
                          appName: "Snapchat",
                        ),
                        ReusableCard(
                          colour: Color(0xff6CC886),
                          appName: "WhatsApp",
                        ),
                        ReusableCard(
                          colour: Color(0xff1A2FA2),
                          appName: "Messenger",
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.highlight_outlined, size: 50, color: Colors.grey),
          Icon(Icons.home_outlined, size: 50, color: Colors.grey),
          Icon(Icons.edit_outlined, size: 50, color: Colors.grey),
        ],
      ),
    );
  }
}
