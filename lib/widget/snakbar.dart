import 'package:flutter/material.dart';

class snakbar extends StatelessWidget {
  const snakbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text("Snak Bar"),
      ),
      body: Container(
        child: Center(
            child: ElevatedButton(
          onPressed: () {
            final snakbar = SnackBar(
              content: Text("This is an error"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              behavior: SnackBarBehavior.floating,
              duration: const Duration(milliseconds: 5000),
              action: SnackBarAction(
                label: 'Undo',
                textColor: Colors.blue,
                onPressed: () {},
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snakbar);
          },
          child: Text(
            "Show SnakBar",
            style: TextStyle(fontSize: 22.0),
          ),
        )),
      ),
    );
  }
}
