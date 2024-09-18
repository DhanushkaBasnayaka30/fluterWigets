import 'package:flutter/material.dart';

class section2 extends StatelessWidget {
  const section2({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> friends = [
      {
        "name": "John Doe",
        "profilePic": "https://randomuser.me/api/portraits/men/1.jpg",
      },
      {
        "name": "Jane Smith",
        "profilePic": "https://randomuser.me/api/portraits/women/1.jpg",
      },
      {
        "name": "Michael Johnson",
        "profilePic": "https://randomuser.me/api/portraits/men/2.jpg",
      },
      {
        "name": "Emily Davis",
        "profilePic": "https://randomuser.me/api/portraits/women/2.jpg",
      },
      {
        "name": "David Wilson",
        "profilePic": "https://randomuser.me/api/portraits/men/3.jpg",
      },
      {
        "name": "Sophia Brown",
        "profilePic": "https://randomuser.me/api/portraits/women/3.jpg",
      },
      {
        "name": "Daniel Taylor",
        "profilePic": "https://randomuser.me/api/portraits/men/4.jpg",
      },
      {
        "name": "Olivia Anderson",
        "profilePic": "https://randomuser.me/api/portraits/women/4.jpg",
      },
      {
        "name": "James Thomas",
        "profilePic": "https://randomuser.me/api/portraits/men/5.jpg",
      },
      {
        "name": "Isabella Moore",
        "profilePic": "https://randomuser.me/api/portraits/women/5.jpg",
      },
    ];

    return Row(
      children: [
        Flexible(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: friends.length + 1,
            itemBuilder: (context, index) {
              if (index != 0) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 70,
                      margin: EdgeInsets.all(6),
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 185, 82, 13),
                        image: DecorationImage(
                          image:
                              NetworkImage(friends[index - 1]['profilePic']!),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      friends[index - 1]['name']!,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                  ],
                );
              } else {
                return Column(
                  children: [
                    Container(
                      height: 70,
                      margin: EdgeInsets.all(6),
                      width: 70,
                      child: Center(
                        child: Text(
                          "+",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 185, 82, 13),
                      ),
                    ),
                    Text("New")
                  ],
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
