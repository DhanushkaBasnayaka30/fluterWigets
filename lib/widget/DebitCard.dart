import 'package:flutter/material.dart';
import 'package:fluttercourse/widget/Colors.dart';
import 'package:fluttercourse/widget/Text.dart';
import 'package:google_fonts/google_fonts.dart';

class DebitCard extends StatefulWidget {
  const DebitCard({super.key});

  @override
  State<DebitCard> createState() => _DebitCardState();
}

class _DebitCardState extends State<DebitCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Center(
        child: Container(
          margin: EdgeInsets.all(15),
          height: 250,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(boxShadow: AppColors.shadow),
          child: Content(),
        ),
      ),
    );
  }
}

class Content extends StatefulWidget {
  const Content({super.key});

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
              right: -170,
              child: Container(
                height: 300,
                width: 300.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(0.1),
                ),
              )),
          Positioned(
              left: -200,
              bottom: -470,
              child: Container(
                height: 600,
                width: 600.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(0.1),
                ),
              )),
          Positioned(
              left: 5,
              top: 0,
              child: Container(
                child: Image.asset("assest/visa.png"),
                height: 110,
                width: 110.0,
                decoration: BoxDecoration(),
              )),
          Positioned(
            top: 85,
            left: 25,
            child: ModifyText(
                text: "It's where you want to be",
                color: Colors.grey.shade900,
                size: 15),
          ),
          Positioned(
            bottom: 50,
            left: 25,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "5566 4532 5698 4512",
                  style: GoogleFonts.sourceCodePro(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade700,
                  ),
                ),
                Text(
                  "Dhanushka Basnayaka",
                  style: GoogleFonts.sourceCodePro(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade700,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            child: Container(
              width: 10.0,
              height: 10.0,
              decoration: BoxDecoration(
                  // Additional decoration properties can go here
                  ),
              child: Image.asset("assets/sim.png"),
            ),
          )
        ],
      ),
    );
  }
}
