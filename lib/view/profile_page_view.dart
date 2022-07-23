import 'package:animal_app/const/color_const.dart';
import 'package:animal_app/const/text_const.dart';
import 'package:animal_app/widget/edit_profile.dart';
import 'package:animal_app/widget/home_button.dart';
import 'package:animal_app/widget/save_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenHeight = screenSize.height;
    var screenWidth = screenSize.width;
    return Scaffold(
      backgroundColor: Colors.indigo.shade200,
      body: Column(
        children: <Widget>[
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
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(25),
                    image: const DecorationImage(
                      image: AssetImage('assets/images.jpg'),
                      fit: BoxFit.fill,
                    )),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  margin: EdgeInsets.only(top: screenHeight / 30),
                  height: screenHeight / 20,
                  decoration: BoxDecoration(
                      color: ColorConst.homeButtonBackground,
                      border:
                          Border.all(color: ColorConst.homeButtonBackground),
                      borderRadius: BorderRadius.circular(12)),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 1.0),
                    child: TextField(
                      //controller: _controller,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'İsminizi Giriniz',
                        prefixIcon: Icon(
                          Icons.account_circle_outlined,
                        ),
                        /*suffixIcon: IconButton(
                            icon: Icon(Icons.close),
                            onPressed: () => _controller.clear(),
                          )*/
                      ),
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.name,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
