import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../const/color_const.dart';
import '../const/text_const.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;
    return Container(
      alignment: Alignment.center,
      height: screenHeight / 12,
      width: screenWidth / 2.7,
      margin: EdgeInsets.only(
          top: screenWidth / 11,
          left: screenWidth / 15,
          bottom: screenWidth / 14.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: ColorConst.homeButtonBackground,
      ),
      child: Column(
        children: const [
          SizedBox(
            height: 8,
          ),
          DefaultTextStyle(
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
            child: Text(
              TextConst.profile,
            ),
          ),
          DefaultTextStyle(
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
            child: Text(
              TextConst.edit,
            ),
          ),
        ],
      ),
    );
  }
}
