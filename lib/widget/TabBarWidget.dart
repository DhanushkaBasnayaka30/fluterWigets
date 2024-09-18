import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("whatsApp"),
          bottom: TabBar(
            isScrollable: false,
            tabs: [
              Tab(
                icon: Icon(Icons.chat),
                text: "Chat",
              ),
              Tab(
                icon: Icon(Icons.chat_bubble),
                text: ("Status"),
              ),
              Tab(
                icon: Icon(Icons.group),
                text: "Group",
              ),
              Tab(
                icon: Icon(Icons.call),
                text: "Call",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Center(
                    child: Column(
                  children: [
                   
                    ListTile(
                      onTap: (){},
                      focusColor: Colors.grey,
                      selectedColor: Colors.red,
                      leading: Icon(Icons.person),
                      title: Text("Dhanushka Basnayaka"),
                      subtitle: Text("message me"),
                     // trailing: Icon(Icons.volume_mute_outlined),
                    ),
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text("Channa Maduarabga"),
                      subtitle: Text("message me"),
                   //   trailing: Icon(Icons.volume_mute_outlined),
                    ),
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text("Deepath Ranaveera"), 
                      subtitle: Text("message me"),
                      trailing: Icon(Icons.volume_mute_outlined),
                    ),
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text("Akila Piyumal"),
                      subtitle: Text("message me"),
                    //  trailing: Icon(Icons.volume_mute_outlined),
                    ),
                    
                  ],
                )),
              ),
            ),
            Container(
              child: Center(child: Text("Status")),
            ),
            Container(
              child: Center(child: Text("Gruop")),
            ),
            Container(
              child: Center(child: Text("Call")),
            ),
          ],
        ),
      ),
    );
  }
}
