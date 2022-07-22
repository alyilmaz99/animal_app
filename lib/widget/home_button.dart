import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../const/color_const.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: ColorConst.homeButtonBackground,
        shape: const CircleBorder(),
        fixedSize: Size(screenWidth / 6, screenWidth / 6),
        alignment: Alignment.center,
        padding: EdgeInsets.zero,
      ),
      onPressed: () {},
      child: Align(
        alignment: Alignment.center,
        child: Icon(
          Icons.home_outlined,
          size: screenWidth / 7,
          color: ColorConst.homeButtonColor,
        ),
      ),
    );
  }
}
