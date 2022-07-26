import 'package:animal_app/view/animal_page_view.dart';
import 'package:animal_app/view/main_page_view.dart';
import 'package:animal_app/view/profile_page_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: AnimalPage(),
    );
  }
}
