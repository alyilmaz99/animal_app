import 'package:animal_app/const/text_const.dart';
import 'package:animal_app/widget/home_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    var screenDetail = MediaQuery.of(context);
    final double screenHeight = screenDetail.size.height;
    final double screenWidth = screenDetail.size.width;

    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(
                      top: screenWidth / 15, left: screenWidth / 15, bottom: 0),
                  child: const HomeButton(),
                ),
              ],
            ),
            SizedBox(
              width: screenWidth / 2.7,
              child: Image.asset(
                'assets/images/bitmojisemih.png',
                height: screenWidth / 3.5,
                alignment: Alignment.topLeft,
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: screenWidth / 2.7,
              height: screenWidth / 2.7,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(25)),
              child: Text(
                TextConst.myProfile,
                style: TextStyle(fontSize: screenWidth / 25),
              ),
            ),
            Spacer(),
            SizedBox(
              width: screenWidth / 2.5,
              child: Image.asset(
                'assets/images/bitmojicat.png',
                height: screenWidth / 5,
                alignment: Alignment.topRight,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: screenHeight / 5),
              child: Container(
                width: screenWidth / 2.7,
                height: screenWidth / 2.7,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: Text(
                  TextConst.myAnimals,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: screenWidth / 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
