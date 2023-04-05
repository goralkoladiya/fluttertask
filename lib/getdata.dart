import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
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
  List list=[];
  List<event> eventlist=[];
  bool data=false;
  get() async {
    var url = Uri.https('mother.powerpbox.org',
        'mother_odoo14/get_track_trace_events_gh/CBR96545');

    Map<String, String> map = {
      "Tnt-Access-Token": "${widget.accesstoken}",
      "username": "${widget.user}",
      "passwd": "${widget.password}",
      "db": "freightbox_mother",
    };
    // Map<String, String> map = {
    //   "Tnt-Access-Token": "9b4996a397d283b5b232931ecf7314c1f0dbdfc8",
    //   "username": "krupali@gmail.com",
    //   "passwd": "123456",
    //   "db": "freightbox_mother",
    // };
    var response = await http.get(
        url,
        headers: map);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    Map m=jsonDecode(response.body);
    if(m['message']=="Data Not Found")
      {
        setState(() {
          data=false;
        });
      }
    else{
      list=m['Datas'];
      // Map map=list[0]['eq'];
      list[0]['eq'].forEach((element) {
        eventlist.add(event.fromJson(element));
      });
      setState(() {
        data=true;
      });
    }

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
      appBar: AppBar(title: Text("Details"),),
      body: data?ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return details(eventlist[index]);
            },));
          },
          title: Text("${eventlist[index].eventType}"),
          subtitle: Text("${eventlist[index].eventDescription}"),
          trailing: Text("${eventlist[index].country}"),
        );
      },itemCount: eventlist.length,
      ):ListView(
        children: [
          ListTile(title: Text("User: ${widget.user}"),),
          ListTile(title: Text("Password: ${widget.password}"),),
          ListTile(title: Text("AccessToken: ${widget.accesstoken}"),),
          ListTile(title: Text("${widget.Response}"),),
        ],
      )
    );
  }
}

