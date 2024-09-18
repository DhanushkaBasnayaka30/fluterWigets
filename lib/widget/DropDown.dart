import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String? _selectedItem; // Selected item

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drop Down Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              height: 70,
              color: Colors.red,
              width: MediaQuery.of(context).size.width,
              child: DropdownButton<String>(
                isExpanded: true, // Ensure the dropdown covers the full width of the container
                value: _selectedItem,
                hint: Text('Select a fruit'),
                items: <String>[
                  'Orange',
                  'Apple',
                  'Banana',
                  'Mango',
                  'Grapes',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedItem = newValue;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

