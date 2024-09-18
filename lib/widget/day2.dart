import 'package:flutter/material.dart';

List<dynamic> buttnValues = [
  "C",
  "%",
  "+",
  "/",
  7,
  8,
  9,
  "*",
  4,
  5,
  6,
  "-",
  1,
  2,
  3,
  "+",
  "<",
  0,
  ".",
  "=",
];
List<dynamic> stackInput = [];

class rowscols extends StatefulWidget {
  const rowscols({super.key});

  @override
  State<rowscols> createState() => _rowscolsState();
}

class _rowscolsState extends State<rowscols> {
  dynamic input = 0.0;
  dynamic output = 0.0;

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    void setState1(input) {
      setState(() {
        stackInput.add(input);
      });
    }

    void checking() {
      print('inside checking');
      print(stackInput.length);
      if (input == 0) {
        setState1(() {
          output = 0;
        });
      }
      print(stackInput);
      if (stackInput.length >= 3) {
        print('pass 1st');
        for (int i = 0; i < stackInput.length; i++) {
          if (stackInput[i].runtimeType != int) {
            print('pass 2nd');

            output =output+ stackInput[i - 1] + stackInput[i + 1];
            stackInput.removeRange(0,3);
          }
        }
      }
    }

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Rows and Column"),
      ),
      body: Column(
        children: [
          Text(
            "${output}",
            style: TextStyle(fontSize: 25.0),
          ),
          SizedBox(
            height: 120.0,
          ),
          Container(
            height: 60.0,
            width: w,
            child: Text(
              "${input}",
              style: TextStyle(fontSize: 30.0),
              textAlign: TextAlign.end,
            ),
            decoration:
                BoxDecoration(color: const Color.fromARGB(255, 159, 71, 71)),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: w,
            height: 500,
            color: const Color.fromARGB(255, 0, 0, 0),
            child: Center(
              child: Container(
                  width: 400.0,
                  height: 600.0,
                  color: const Color.fromARGB(255, 0, 0, 0),
                  alignment: AlignmentDirectional.topEnd,
                  child: GridView.count(
                    crossAxisCount: 4,
                    children: List.generate(20, (index) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                input = buttnValues[index];
                                //  print(stackInput);
                              });
                              setState1(input);
                              checking();
                            },
                            child: Container(
                              width: 70.0,
                              height: 70.0,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 57, 56, 57),
                                  borderRadius: BorderRadius.circular(100.0)),
                              child: Center(
                                child: Text(
                                  "${buttnValues[index]}", // Correct string interpolation
                                  style: TextStyle(fontSize: 32.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
