
import 'package:flutter/material.dart';
import 'package:fluttercourse/widget/BotoomSheetWdiget.dart';
import 'package:fluttercourse/widget/BottemNavigation.dart';
import 'package:fluttercourse/widget/Day19UI.dart';
import 'package:fluttercourse/widget/DebitCard.dart';
import 'package:fluttercourse/widget/Dismissible.dart';
import 'package:fluttercourse/widget/DropDown.dart';
import 'package:fluttercourse/widget/TabBarWidget.dart';
import 'package:fluttercourse/widget/day2.dart';
import 'package:fluttercourse/widget/day20/day30main.dart';
import 'package:fluttercourse/widget/day3.dart';
import 'package:fluttercourse/widget/drawWidget.dart';
import 'package:fluttercourse/widget/snakbar.dart';
import 'package:fluttercourse/widget/snakbar.dart';
import 'package:fluttercourse/widget/AnimatedText.dart';
import 'package:fluttercourse/widget/BottemNavigation.dart';
import 'package:fluttercourse/widget/Formwidget.dart';
import 'package:fluttercourse/widget/StackWidget.dart';
import 'package:fluttercourse/widget/CurvedNavigationbat.dart';
import 'package:fluttercourse/widget/ImagePicker.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.purple,
      ),
      home:Drawwidget
(),
    );
  }
}
