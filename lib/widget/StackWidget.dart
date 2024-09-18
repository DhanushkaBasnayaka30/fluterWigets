import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Widget"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200.0,
              decoration: BoxDecoration(
                color: Colors.yellow,
              ),
            ),
            Positioned(
              left: 10.0,
              right: 10.0,
              top: 150.0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 400.0,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://img1.hotstarext.com/image/upload/f_auto,t_web_m_1x/sources/r1/cms/prod/7778/1710554557778-h",
                    ),
                    fit: BoxFit
                        .cover, // Ensures the image covers the entire container
                  ),
                ),
              ),
            ),
            Positioned(
                bottom: 200.0,
                right: 20.0,
                child: Container(
                  width: 100.0,
                  height: 50.0,
                  child: Center(
                    child: Text(
                      'WATCH',
                      style: TextStyle(color: Colors.yellow, fontSize: 20.0,),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.green, ),
                ))
          ],
        ),
      ),
    );
  }
}
