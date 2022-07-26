import 'package:animal_app/const/color_const.dart';
import 'package:animal_app/const/text_const.dart';
import 'package:animal_app/widget/edit_profile.dart';
import 'package:animal_app/widget/home_button.dart';
import 'package:animal_app/widget/save_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AnimalPage extends StatefulWidget {
  const AnimalPage({Key? key}) : super(key: key);

  @override
  State<AnimalPage> createState() => _AnimalPageState();
}

class _AnimalPageState extends State<AnimalPage> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    final double screenHeight = screenSize.height;
    final double screenWidth = screenSize.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.indigo.shade200,
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: MediaQuery.of(context).size.width,
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: IntrinsicHeight(
            child: Column(
              mainAxisSize: MainAxisSize.max,
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
                            image: AssetImage('assets/images/dog.png'),
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
                            border: Border.all(
                                color: ColorConst.homeButtonBackground),
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
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        margin: EdgeInsets.only(top: screenHeight / 30),
                        height: screenHeight / 20,
                        decoration: BoxDecoration(
                            color: ColorConst.homeButtonBackground,
                            border: Border.all(
                                color: ColorConst.homeButtonBackground),
                            borderRadius: BorderRadius.circular(12)),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 1.0),
                          child: TextField(
                            //controller: _controller,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: TextConst.animalSpec,
                              prefixIcon: Icon(
                                Icons.sort_by_alpha,
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
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        margin: EdgeInsets.only(top: screenHeight / 30),
                        height: screenHeight / 20,
                        decoration: BoxDecoration(
                            color: ColorConst.homeButtonBackground,
                            border: Border.all(
                                color: ColorConst.homeButtonBackground),
                            borderRadius: BorderRadius.circular(12)),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 1.0),
                          child: TextField(
                            //controller: _controller,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: TextConst.animalGender,
                              prefixIcon: Icon(
                                Icons.male,
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
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        margin: EdgeInsets.only(top: screenHeight / 30),
                        height: screenHeight / 20,
                        decoration: BoxDecoration(
                            color: ColorConst.homeButtonBackground,
                            border: Border.all(
                                color: ColorConst.homeButtonBackground),
                            borderRadius: BorderRadius.circular(12)),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 1.0),
                          child: TextField(
                            //controller: _controller,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: TextConst.animalAge,
                              prefixIcon: Icon(
                                Icons.calendar_month,
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
                SizedBox(
                  height: screenHeight / 60,
                ),
                Container(
                  margin: EdgeInsets.only(left: screenWidth / 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        TextConst.profileAddress,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: ColorConst.homeButtonBackground,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.settings,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight / 60,
                ),
                Container(
                  margin: EdgeInsets.only(left: screenWidth / 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        TextConst.profileEdit,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: ColorConst.homeButtonBackground,
                          shape: BoxShape.circle,
                        ),
                        // ignore: prefer_const_constructors
                        child: Icon(
                          Icons.settings,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
