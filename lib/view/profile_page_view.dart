import 'package:animal_app/const/color_const.dart';
import 'package:animal_app/const/text_const.dart';
import 'package:animal_app/widget/edit_profile.dart';
import 'package:animal_app/widget/home_button.dart';
import 'package:animal_app/widget/save_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;

    return Container(
      color: Colors.indigo.shade200,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(
                    top: screenWidth / 15, left: screenWidth / 15),
                child: const HomeButton(),
              ),
              Expanded(child: Container()),
              Container(
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(right: screenWidth / 15),
                child: const SaveButton(),
              ),
            ],
          ),
          Row(
            children: [
              const EditProfile(),
              Expanded(child: Container()),
              Container(
                width: screenWidth / 2.2,
                height: screenHeight / 4.5,
                margin: EdgeInsets.only(right: screenWidth / 17),
                decoration: BoxDecoration(
                    color: ColorConst.homeButtonBackground,
                    borderRadius: BorderRadius.circular(25),
                    image: const DecorationImage(
                      image: AssetImage('assets/images.jpg'),
                      fit: BoxFit.fill,
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
