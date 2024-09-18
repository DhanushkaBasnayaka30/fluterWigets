import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:fluttercourse/widget/BotoomSheetWdiget.dart';
import 'package:fluttercourse/widget/Dismissible.dart';
import 'package:fluttercourse/widget/drawWidget.dart';
import 'package:fluttercourse/widget/snakbar.dart';

class CurvedNavigation extends StatefulWidget {
  const CurvedNavigation({super.key});

  @override
  _CurvedNavigationState createState() => _CurvedNavigationState();
}

class _CurvedNavigationState extends State<CurvedNavigation> {
  
  final PageController _pageController = PageController(initialPage: 0);
  int _currentIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: [
          DismissibleExample(),
          Drawwidget(),
          snakbar(),
          BottomSheetWidget(),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.purple,
        color: Colors.purple.shade300,
        index: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          _pageController.animateToPage(index,
              duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
        },
        items: const [
          Icon(Icons.chat, color: Colors.black),
          Icon(Icons.update_sharp, color: Colors.black),
          Icon(Icons.groups_2, color: Colors.black),
          Icon(Icons.call, color: Colors.black),
        ],
      ),
    );
  }
}
