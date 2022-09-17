// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:mental_health_app/constant.dart';
import 'package:mental_health_app/screen/Home/home_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    //double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: primaryDarkColor,
      body:
          Column(crossAxisAlignment: CrossAxisAlignment.end, children: <Widget>[
        SizedBox(
          height: 80,
        ),
        Image.asset(
          meditationImg,
          height: height * 0.5,
        ),
        SizedBox(
          height: 30,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Mind Checker is an app that helps you to control anxiety",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                //fontWeight: FontWeight.w900,
                letterSpacing: 1,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.all(25),
              // ignore: deprecated_member_use
              child: FlatButton(
                color: primaryLightColor,
                padding: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                height: 50,
                minWidth: 150,
                child: Text(
                  "Get Start",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                onPressed: () {
                  _navigateToHomeScreen(context);
                },
              ),
            )
          ],
        ),
      ]),
    );
  }

  void _navigateToHomeScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => HomePage()));
  }
}
