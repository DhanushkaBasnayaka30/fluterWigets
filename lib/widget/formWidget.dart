import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Formwidget extends StatefulWidget {
  const Formwidget({super.key});

  @override
  State<Formwidget> createState() => _FormwidgetState();
}

class _FormwidgetState extends State<Formwidget> {
  final _formKey = GlobalKey<FormState>();
  final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');

  String firstName = "";
  String lastname = "";
  String email = "";
  String password = "";

  submitForm() {
    print("Form submitted");
    print("First Name: $firstName");
    print("Last Name: $lastname");
    print("Email: $email");
    print("Password: $password");
  }

  trysubmit() {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      _formKey.currentState!.save();
      submitForm();
    } else {
      print('Form is not valid');
    }
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Registration'),
      ),
      backgroundColor: const Color.fromARGB(255, 240, 240, 240),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Container(
              padding: EdgeInsets.all(deviceWidth * 0.1),
              margin: EdgeInsets.only(top: 60.0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 101, 139, 136),
                borderRadius: BorderRadius.circular(20.0),
              ),
              alignment: Alignment.center,
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextFormField(
                      autofocus: false,
                      decoration: InputDecoration(
                        label: Text("First Name"),
                        disabledBorder: InputBorder.none,
                        prefixIconColor: Colors.red,
                        labelStyle: TextStyle(color: Colors.black),
                      ),
                      key: ValueKey("FirstName"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "First name should not be empty";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        firstName = value!;
                      },
                    ),
                    SizedBox(
                      height: 35.0,
                    ),
                    TextFormField(
                      key: ValueKey("lastname"),
                      decoration: InputDecoration(
                        label: Text("Last Name"),
                        disabledBorder: InputBorder.none,
                        prefixIconColor: Colors.red,
                        labelStyle: TextStyle(color: Colors.black),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Last name should not be empty";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        lastname = value!;
                      },
                    ),
                    SizedBox(
                      height: 35.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text("Email"),
                        disabledBorder: InputBorder.none,
                        prefixIconColor: Colors.red,
                        labelStyle: TextStyle(color: Colors.black),
                        prefixStyle: TextStyle(color: Colors.black),
                      ),
                      style: TextStyle(color: Colors.black),
                      key: ValueKey("email"),
                      validator: (value) {
                        if (!emailRegex.hasMatch(value!)) {
                          return "Enter a valid email";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        email = value!;
                      },
                    ),
                    SizedBox(
                      height: 35.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text("Password"),
                        disabledBorder: InputBorder.none,
                        prefixIconColor: Colors.red,
                        labelStyle: TextStyle(color: Colors.black),
                      ),
                      obscureText: true,
                      key: ValueKey("password"),
                      validator: (value) {
                        if (value == null || value.length < 8) {
                          return "Password should contain at least 8 characters";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        password = value!;
                      },
                    ),
                    SizedBox(
                      height: 35.0,
                    ),
                    TextButton(
                      onPressed: trysubmit,
                      child: Text(
                        "Submit",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
