import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class getdata extends StatefulWidget {
 String? accesstoken,user,password;
 getdata([this.accesstoken,this.user,this.password]);

  @override
  State<getdata> createState() => _getdataState();
}

class _getdataState extends State<getdata> {
  get()
  async {
    var url = Uri.https('mother.powerpbox.org', 'mother_odoo14/get_track_trace_events_gh/CBR96545');

    String basicAuth = 'Basic ' + base64Encode(utf8.encode('powerpbox:powerpbox@0612'));
    Map<String,String> map={
      "Tnt-Access-Token": "5abe0a662f2d29ad778a221d99b9f2c4d3439iuy",
      "username":"test",
      "passwd":"test",
      "db":"freightbox_mother",
      // 'authorization': basicAuth
    };
    var response = await http.get(
        url,
        headers: map);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    get();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
