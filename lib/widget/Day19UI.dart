import 'package:flutter/material.dart';

class day19UI extends StatelessWidget {
  const day19UI({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: [
                        Positioned(
                            child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.pexels.com/photos/773471/pexels-photo-773471.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                  fit: BoxFit.cover)),
                          height: h * 0.45,
                        )),
                        Positioned(
                            bottom: 0,
                            right: 24,
                            child: Container(
                              width: 100, // Define the size of the container
                              height:
                                  100, // It should be square to make the image circular
                              child: ClipOval(
                                child: Image.network(
                                  "https://cbx-prod.b-cdn.net/COLOURBOX37333957.jpg?width=800&height=800&quality=70",
                                  fit: BoxFit
                                      .cover, // Ensures the image covers the entire container
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: 55,
                    left: 10,
                    child: Container(
                     
                      child: Icon(Icons.keyboard_backspace_rounded,size: 30,color: Colors.white,),
                    )),
                Positioned(
                    top: 55,
                    
                    right: 10,
                    child: Container(
                     
                      child: Icon(Icons.favorite_border,size: 30,color: Colors.white,),
                    )),
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Madrid City Tour for Designers",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "This is random description of the topic",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: h * 0.07,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  rowIconText("20", Icons.favorite),
                  rowIconText("34", Icons.upload),
                  rowIconText("82", Icons.message),
                  rowIconText("295", Icons.face),
                ],
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                  "s simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting"),
            )
          ],
        ),
      ),
    );
  }

  Widget rowIconText(String text, IconData icon) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300),
        ),
        SizedBox(
          width: 5,
        ),
        Icon(icon)
      ],
    );
  }
}
