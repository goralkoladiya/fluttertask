import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertask/dashboard.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import 'details.dart';
import 'event.dart';

class getdata extends StatefulWidget {
 String? Response,accesstoken,user,password;
 getdata([this.Response,this.accesstoken,this.user,this.password]);

  @override
  State<getdata> createState() => _getdataState();
}

class _getdataState extends State<getdata> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Details"),),
      body: ListView(
        children: [
          ListTile(title: Text("User: ${widget.user}"),),
          ListTile(title: Text("Password: ${widget.password}"),),
          ListTile(title: Text("AccessToken: ${widget.accesstoken}"),),
          ListTile(title: Text("${widget.Response}"),),
          ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return dashboard(widget.Response,widget.accesstoken,widget.user,widget.password);
            },));
          }, child: Text("Get all Data"))
        ],
      )
    );
  }
}

