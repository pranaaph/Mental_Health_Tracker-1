// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mental_health_app/constant.dart';
import 'package:intl/intl.dart';
import 'package:mental_health_app/screen/DoctorPage/doctor_main_page.dart';
import 'package:mental_health_app/screen/MusicPage/music_main_page.dart';
import 'package:mental_health_app/utils/containerForYou.dart';
import 'package:mental_health_app/utils/emoticon.dart';
import 'package:mental_health_app/utils/navBar.dart';
import 'package:mental_health_app/utils/sizedBoxHeight.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryLightColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(children: [
            // Greetings

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hii John !",
                      style: TextStyle(
                        color: primaryDarkColor,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(date),
                  ],
                ),
                SizedBox(
                  width: 102.0,
                ),
                CircleAvatar(
                  backgroundColor: Color(0xffE6E6E6),
                  radius: 30,
                  child: Icon(
                    Icons.person,
                    color: Color(0xffCCCCCC),
                  ),
                ),
              ],
            ),

            // Mood choosing
            SizedBox(
              height: 28,
            ),
            Row(
              children: [
                Text(
                  "How do you feel ?",
                  style: TextStyle(
                    color: primaryDarkColor,
                    fontSize: 23,
                    letterSpacing: 1.0,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBoxWithHeight(
              height: 20,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //badly
                  EmojiCon(
                    emoticonFace: "😒",
                    emojiName: 'Sad',
                  ),
                  //fine
                  EmojiCon(
                    emoticonFace: "🙂",
                    emojiName: 'Fine',
                  ),
                  //well
                  EmojiCon(
                    emoticonFace: "😊",
                    emojiName: 'Well',
                  ),
                  //excellent
                  EmojiCon(
                    emoticonFace: "😁",
                    emojiName: 'Happy',
                  ),
                ]),
            SizedBox(
              height: 20,
            ),
            Text(
              "For You",
              style: TextStyle(
                color: primaryDarkColor,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                ContainerHomePage(
                  boxName: 'Assess You',
                  imgAssert: heartImage,
                  page: MusicPage(),
                ),
                SizedBox(
                  height: 20,
                ),
                ContainerHomePage(
                  boxName: 'Todays Practice',
                  imgAssert: meditationIcon,
                  page: DoctorPage(),
                ),
              ],
            ),
          ]),
        ),
      ),
      // bottomNavigationBar: MainNavBar(),
    );
  }
}
