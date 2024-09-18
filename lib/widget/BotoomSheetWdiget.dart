import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Added Scaffold as the parent widget
      appBar: AppBar(
        title: Text("BottomSheet"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Container(
          child: TextButton(
            child: Text("ClickMe"),
            onPressed: () {
              showModalBottomSheet(
                backgroundColor: Theme.of(context).primaryColor,
                enableDrag: true,
                isDismissible: true,
                elevation: 5,
                context: context,
                builder: (context) {
                  return Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          title: Text("Dialog"),
                          subtitle: Text("077-45127852"),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          title: Text("Mobitel"),
                          subtitle: Text("071-45127852"),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          title: Text("Hutch"),
                          subtitle: Text("078-45127852"),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
