import 'package:flutter/material.dart';

List<String> countries = [
  'Canada',
  'Japan',
  'Germany',
  'Brazil',
  'India',
  'Australia',
  'South Africa',
  'United Kingdom',
  'Mexico',
  'Egypt'
];
Map country_details = {
  'name': [
    'Canada',
    'Japan',
    'Germany',
    'Brazil',
    'India',
    'Australia',
    'South Africa',
    'United Kingdom',
    'Mexico',
    'Egypt'
  ],
  "countires": [
    'Prime Minister Justin Trudeau',
    'Prime Minister Fumio Kishida',
    'Chancellor Olaf Scholz',
    'President Luiz Inácio Lula da Silva',
    'Prime Minister Narendra Modi',
    'Prime Minister Anthony Albanese',
    'President Cyril Ramaphosa',
    'Prime Minister Rishi Sunak',
    'President Andrés Manuel López Obrador',
    'President Abdel Fattah el-Sisi'
  ]
};

class listViewday_3 extends StatefulWidget {
  listViewday_3({super.key});

  @override
  State<listViewday_3> createState() => _listViewday_3State();
}

class _listViewday_3State extends State<listViewday_3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // child: ListView.builder(itemCount:countries.length,itemBuilder: (contex,index){
      //   return Card(
      //     child: ListTile(
      //       title: Text("${country_details['name'][index]}"),
      //       subtitle: Text("${country_details['countires'][index]}"),
      //     ),
      //   );
      // })
      child: GridView.builder(
        itemCount: countries.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context,index){
            return Card(
               
          child: ListTile(
            title: Text("${country_details['name'][index]}"),
            subtitle: Text("${country_details['countires'][index]}"),
           
          ),
        );
      }),
    );
  }
}
