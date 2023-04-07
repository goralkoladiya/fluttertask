import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fluttertask/task2/Timeline.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../details.dart';
import '../event.dart';
import '../transport.dart';
class trackData extends StatefulWidget {
  const trackData({Key? key}) : super(key: key);

  @override
  State<trackData> createState() => _trackDataState();
}

class _trackDataState extends State<trackData> {
  List list=[];
  List<transport> transportlist=[];
  bool data=false;
  get() async {
    var url = Uri.https('mother.powerpbox.org',
        'mother_odoo14/get_track_trace_events_gh/CBR96545');

    Map<String, String> map = {
      "Tnt-Access-Token": "6be3b027750e2a2ef61e770ffe126f1672167012",
      "username": "test_user",
      "passwd": "test_user",
      "db": "freightbox_mother",
    };
    var response = await http.get(
        url,
        headers: map);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    Map m=jsonDecode(response.body);
    log("Response=$m");
    if(m['message']=="Data Not Found")
    {
      setState(() {
        data=false;
      });
    }
    if(m['message']=="Track Trace Events"){
      list=m['Datas'];
      log(JsonEncoder().convert(list[0]['transport']));
      // Map map=list[0]['eq'];
      list[0]['transport'].forEach((element) {
        transportlist.add(transport.fromJson(element));
        // log(JsonEncoder().convert(element));
        // log("hello==${transport.fromJson(element)}");
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
      appBar: AppBar(title: Text("Track Data")),
      body: data?TimeLine(
        children: transportlist.map((e) =>
            ListTile(tileColor: e.eventClassifierCode=="PLN"?Colors.grey:
                                e.eventClassifierCode=="EST"?Colors.yellow:
                                e.eventClassifierCode=="ACT" && e.delayReason==true ? Colors.red:Colors.green
                  ,title: Text("${e.eventCreatedDatetime}"),
                   subtitle: e.eventClassifierCode=="ACT"?Text("Item Arrived at ${e.location}"):e.eventClassifierCode=="PLN"?Text("Item will Arrive at ${e.location}"):
                   e.eventClassifierCode=="EST"?Text("Item will estimated at ${e.location}"):Text("Item will Arrive at ${e.location}"))).toList(),
        indicators: transportlist.map((e) => Icon(Icons.directions_boat)).toList(),
      ):Center(child: Text("No data Found please wait while getting record..."),)
    );
  }
}
