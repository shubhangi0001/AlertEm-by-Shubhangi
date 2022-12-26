// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_application_alertem/form.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(20),
              // ignore: prefer_const_constructors
              child: Image(
                image: AssetImage("assets/redlogo.png"),
                fit: BoxFit.fill,
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 200,
              child: Card(
                color: Color.fromARGB(255, 255, 255, 255),
                child: Image(
                  image: AssetImage("assets/mobile.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 50),
            Container(
              decoration: BoxDecoration(),
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Phone Number',
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(15),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => form()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(17),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 190, 16, 4),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 200,
              child: Card(
                color: Color.fromARGB(255, 255, 255, 255),
                child: Image(
                  image: AssetImage("assets/Gorisco.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
