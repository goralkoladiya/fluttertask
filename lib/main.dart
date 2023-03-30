import 'package:flutter/material.dart';
import 'package:fluttertask/getdata.dart';
import 'package:fluttertask/signup.dart';

import 'login.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Hello There!",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 40),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Automatic identity verification which enable you to verify your identity",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.grey[700], fontSize: 15),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height / 3,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('images/illustration.png'))),
                          ),
                          MaterialButton(
                            minWidth: double.infinity,
                            height: 60,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return LoginPage();
                              },));
                            },
                            color: Colors.indigoAccent[400],
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(40)),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.white70),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          MaterialButton(
                            minWidth: double.infinity,
                            height: 60,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return SignupPage();
                              },));
                            },
                            color: Colors.redAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)),
                            child: Text(
                              "Sign UP",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      )
                    ]))));
  }
}
