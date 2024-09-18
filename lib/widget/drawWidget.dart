import 'package:flutter/material.dart';

class Drawwidget extends StatefulWidget {
  const Drawwidget({super.key});

  @override
  State<Drawwidget> createState() => _DrawwidgetState();
}

class _DrawwidgetState extends State<Drawwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: Container(
                    
                    child: Row(
                      children: [
                        SizedBox(width: 20.0,),
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                            ("https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg"),
                            
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Dhanushka Basnayaka'),
                            Text("2020CSC006")
                          ],
                        )
                      ],
                    ),
                  )),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
              ),
              ListTile(
                leading: Icon(Icons.download),
                title: Text("Download"),
              ),
              ListTile(
                leading: Icon(Icons.upload),
                title: Text("Upload"),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Setting"),
              ),
              Divider(
                height: 100.0,
              ),
              ListTile(
                leading: Icon(Icons.share),
                title: Text("Share"),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        actions: [Icon(Icons.logout)],
        title: Text("DrawBar"),
      ),
    );
  }
}
