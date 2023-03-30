import 'package:flutter/material.dart';
import 'package:fluttertask/event.dart';

class details extends StatefulWidget {
 event e;
 details(this.e);

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(title: Text.rich(TextSpan(style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),children: [TextSpan(text:"Equip EventType Code:"),TextSpan(style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),text: "${widget.e.equipEventTypeCode}")]),),),
            ListTile(title: Text.rich(TextSpan(style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),children: [TextSpan(text:"Equip Event Id:: "),TextSpan(style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),text: "${widget.e.equipEventId}")]),),),
            ListTile(title: Text.rich(TextSpan(style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),children: [TextSpan(text:"Event Creation Date:"),TextSpan(style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),text: "${widget.e.eventCreatedDatetime}")],),),),
            ListTile(title: Text.rich(TextSpan(style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),children: [TextSpan(text:"Event Classifier Code: "),TextSpan(style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),text: "${widget.e.eventClassifierCode}")],),),),
            ListTile(title: Text.rich(TextSpan(style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),children: [TextSpan(text:"Event DateTime: "),TextSpan(style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),text: "${widget.e.eventDatetime}")]),),),
            ListTile(title: Text.rich(TextSpan(style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),children: [TextSpan(text:"TransportCall: "),TextSpan(style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),text: "${widget.e.transportCall}")]),),),
            ListTile(title: Text.rich(TextSpan(style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),children: [TextSpan(text:"Reference Id: "),TextSpan(style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),text: "${widget.e.equipReference}")]),),),
            ListTile(title: Text.rich(TextSpan(style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),children: [TextSpan(text:"isoEquipcode: "),TextSpan(style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),text: "${widget.e.isoEquipCode}")]),),),
            ListTile(title: Text.rich(TextSpan(style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),children: [TextSpan(text:"Indicator Code: "),TextSpan(style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),text: "${widget.e.emptyIndicatorCode}")]),),),
            ListTile(title: Text.rich(TextSpan(style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),children: [TextSpan(text:"Event Type: "),TextSpan(style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),text: "${widget.e.eventType}")]),),),
            ListTile(title: Text.rich(TextSpan(style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),children: [TextSpan(text:"Event Description: "),TextSpan(style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),text: "${widget.e.eventDescription}")]),),),
            ListTile(title: Text.rich(TextSpan(style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),children: [TextSpan(text:"Location Code: "),TextSpan(style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),text: "${widget.e.locode}")]),),),
            ListTile(title: Text.rich(TextSpan(style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),children: [TextSpan(text:"Location: "),TextSpan(style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),text: "${widget.e.locationName}")]),),),
            ListTile(title: Text.rich(TextSpan(style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),children: [TextSpan(text:"Country: "),TextSpan(style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),text: "${widget.e.country}")]),),),
            ListTile(title: Text.rich(TextSpan(style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),children: [TextSpan(text:"TimeZone: "),TextSpan(style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),text: "${widget.e.timezone}")]),),),
            ListTile(title: Text.rich(TextSpan(style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),children: [TextSpan(text:"Latitude: "),TextSpan(style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),text: "${widget.e.latitude}")]),),),
            ListTile(title: Text.rich(TextSpan(style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),children: [TextSpan(text:"Longitude: "),TextSpan(style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),text: "${widget.e.longitude}")]),),),
            ListTile(title: Text.rich(TextSpan(style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),children: [TextSpan(text:"Event Location: "),TextSpan(style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),text: "${widget.e.eventLocation}")]),),),
          ],
        ),
      ),
    );
  }
}
