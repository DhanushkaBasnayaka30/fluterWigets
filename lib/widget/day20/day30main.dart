import 'package:flutter/material.dart';
import 'package:fluttercourse/widget/day20/section1.dart';
import 'package:fluttercourse/widget/day20/section2.dart';

class day30 extends StatelessWidget {
  const day30({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "wanda.s",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        leading: Icon(Icons.arrow_back_ios_rounded),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              width: w,
              height: h * 0.15,
              child: section1(),
            ),
            SizedBox(height: 10),
            Container(
              width: w,
              height: h * 0.12,
              child: section2(),
            ),
            Container(
              width: w,
              height: h * 0.1,
              color: Color.fromARGB(255, 13, 89, 204),
            ),
            Container(
              width: w,
              height: h * 0.494,
              color: Color.fromARGB(255, 235, 220, 17),
            ),
          ],
        ),
      ),
    );
  }
}
