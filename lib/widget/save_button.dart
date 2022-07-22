import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../const/color_const.dart';
import '../const/text_const.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: ColorConst.homeButtonBackground,
          shape: const StadiumBorder(),
        ),
        child: const Text(
          TextConst.profileKaydet,
          style: TextStyle(color: ColorConst.homeButtonColor, fontSize: 17),
        ));
  }
}
