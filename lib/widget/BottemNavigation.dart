import 'package:flutter/material.dart';
import 'package:fluttercourse/widget/Dismissible.dart';
import 'package:fluttercourse/widget/drawWidget.dart';
import 'package:fluttercourse/widget/snakbar.dart';
import 'package:fluttercourse/widget/BotoomSheetWdiget.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int selectindex = 0;

  PageController pageController = PageController();

  List<Widget> widgetList = [
    Text("Home"),
    Text("Search"),
    Text("Setting"),
    Text("Profile"),
  ];

  void onTap(int index) {
    setState(() {
      selectindex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          DismissibleExample(),
          Drawwidget(),
          snakbar(),
          BottomSheetWidget(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        currentIndex: selectindex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: onTap, // Add onTap here
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: BottomNavigationWidget(),
  ));
}
