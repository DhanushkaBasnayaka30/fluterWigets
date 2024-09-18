import 'package:flutter/material.dart';

class section1 extends StatelessWidget {
  const section1({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height * 0.15;
    var w = MediaQuery.of(context).size.width;
    return Container(
      
      width: w,
      height: h,
      child: Row(
        children: [
          Container(
            width: w * 0.4,
            height: h,
            child: Padding(
              padding: const EdgeInsets.only(left:20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    child: ClipOval(
                      child: Image.network(
                        "https://img.freepik.com/free-photo/portrait-optimistic-businessman-formalwear_1262-3600.jpg?size=626&ext=jpg&ga=GA1.1.2008272138.1723161600&semt=ais_hybrid",
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Icon(Icons
                              .error); // Displays an error icon if the image fails to load
                        },
                      ),
                    ),
                  ),
                  Text(
                    "wanda.s",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Photograper/New York",
                    style: TextStyle(
                        color: Color.fromARGB(183, 0, 0, 0),
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: w * 0.6,
            height: h,
            child: Column(
              children: [
                Container(
                  width: w * 0.6,
                  height: h * 0.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          height: h * 0.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "150",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "Phots",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.red),
                              )
                            ],
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          height: h * 0.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "5K",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "Followers",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.red),
                              )
                            ],
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          height: h * 0.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "100",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "Following",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.red),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    width: w * 0.6,
                    height: h * 0.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: w * 0.3,
                          height: h * 0.25,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 32, 118, 199),
                              borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(20),
                                  right: Radius.circular(20))),
                          child: Center(
                            child: Text(
                              "Follow",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  color: Color.fromARGB(255, 32, 118, 199),
                                  strokeAlign: 1,
                                  width: 2)),
                          child: Icon(Icons.arrow_drop_down_sharp),
                        )
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
