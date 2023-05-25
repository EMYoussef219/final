import 'package:flutter/material.dart';
import 'package:monkez/CategoriesSetUp2.dart';
import 'package:monkez/EditProfileLogin.dart';
import 'package:monkez/Education.dart';
import 'package:monkez/Login.dart';
import 'package:monkez/MoneyRelated.dart';
import 'package:monkez/NearestBuilding.dart';
import 'package:monkez/PhotosCategories.dart';
import 'package:monkez/ServiceNeeds.dart';
import 'package:monkez/SetUpProfile1.dart';
import 'package:monkez/SetUpProfile3.dart';
import 'package:monkez/SetupProfile2.dart';
import 'package:monkez/SignUp.dart';
import 'package:monkez/SplashScreen.dart';
import 'package:monkez/UserProfile.dart';
import 'package:monkez/VaccinesCategories.dart';
import 'package:monkez/WelcomePage.dart';
import 'package:monkez/create_family.dart';
import 'package:monkez/ContactUS.dart';
import 'package:monkez/fammember.dart';
import 'package:monkez/guidance.dart';
import 'package:monkez/home.dart';
import 'package:monkez/travelScan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'IBMPlexSerif-LightItalic',
      ),
      home: SplashScreen(),
    );
  }
}
