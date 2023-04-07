import 'package:flutter/material.dart';
import 'package:fluttertask/task2/track%20data.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class createInquiry extends StatefulWidget {
  const createInquiry({Key? key}) : super(key: key);

  @override
  State<createInquiry> createState() => _createInquiryState();
}

class _createInquiryState extends State<createInquiry> {
  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();
  TextEditingController t3=TextEditingController();
  TextEditingController t4=TextEditingController();
  TextEditingController t5=TextEditingController();
  TextEditingController t6=TextEditingController();
  TextEditingController t7=TextEditingController();
  TextEditingController t8=TextEditingController();
  TextEditingController t9=TextEditingController();
  TextEditingController t10=TextEditingController();
  TextEditingController t11=TextEditingController();
  TextEditingController t12=TextEditingController();
  TextEditingController t13=TextEditingController();
  TextEditingController t14=TextEditingController();
  TextEditingController t15=TextEditingController();
  TextEditingController t16=TextEditingController();
  TextEditingController t17=TextEditingController();
  TextEditingController t18=TextEditingController();
  TextEditingController t19=TextEditingController();
  TextEditingController t20=TextEditingController();
  TextEditingController t21=TextEditingController();
  TextEditingController t22=TextEditingController();
  TextEditingController t23=TextEditingController();
  TextEditingController t24=TextEditingController();

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   t1.text="my.email@powerpbox.org";
  //   t2.text="Mitchell Admin";
  //   t3.text="V2Maritime LLp";
  //   t4.text="9910995103";
  //   t5.text="Rice in Bags 50kg each";
  //   t6.text="2500.0";
  //   t7.text="lcl";
  //   t8.text="125.0";
  //   t9.text="165.0";
  //   t10.text="Door To Door";
  //   t11.text="FREE ON BOARD";
  //   t12.text="Mundra";
  //   t13.text="Hamburg";
  //   t14.text="erpbox00 086";
  //   t15.text="2023-03-30";
  //   t16.text="Prefer Maersk Line or MSC";
  //   t17.text="Indore";
  //   t18.text="Dubai";
  //   t19.text="RF40";
  //   t20.text="12";
  //   t21.text="7";
  //   t22.text="2023-03-27 06:27:29";
  //   t23.text="CMA-CGM_test";
  //   t24.text="Flutter-Test_User-001";
  //
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Create Inquiry")),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Create a Inquiry Record",style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[700],
                  ),),
                  SizedBox(height: 30,)
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 40
                ),
                child: Column(
                  children: [
                    makeInput(label: "Email",t:t1),
                    makeInput(label: "partner Id",t:t2),
                    makeInput(label: "partner Name",t:t3),
                    makeInput(label: "phone",t:t4),
                    makeInput(label: "cargo_name",t:t5),
                    makeInput(label: "quantity",t:t6),
                    makeInput(label: "shipment_terms",t:t7),
                    makeInput(label: "weight",t:t8),
                    makeInput(label: "volume",t:t9),
                    makeInput(label: "move_type",t:t10),
                    makeInput(label: "incoterm_id",t:t11),
                    makeInput(label: "place_of_origin",t:t12),
                    makeInput(label: "final_port_of_destination",t:t13),
                    makeInput(label: "booking_id",t:t14),
                    makeInput(label: "expected_date_of_shipment",t:t15),
                    makeInput(label: "remarks",t:t16),
                    makeInput(label: "point_of_stuffing",t:t17),
                    makeInput(label: "point_of_destuffing",t:t18),
                    makeInput(label: "container_type",t:t19),
                    makeInput(label: "volume_uom",t:t20),
                    makeInput(label: "weight_uom",t:t21),
                    makeInput(label: "booking_date",t:t22),
                    makeInput(label: "shipping_line_id",t:t23),
                    makeInput(label: "inquiry_user_name",t:t24),

                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border(
                          bottom: BorderSide(color: Colors.black),
                          top: BorderSide(color: Colors.black),
                          right: BorderSide(color: Colors.black),
                          left: BorderSide(color: Colors.black)
                      )
                  ),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height:60,
                    onPressed: () async {
                      // print(t1.text);
                      // print(t2.text);
                      // print(t3.text);
                      String basicAuth = 'Basic ' + base64Encode(utf8.encode('powerpbox:powerpbox@0612'));
                      print(basicAuth);
                      List data=[{"email_from": "${t1.text}",
                        "partner_id": "${t2.text}",
                        "partner_name": "${t3.text}",
                        "phone": "${t4.text}",
                        "cargo_name": "${t5.text}",
                        "quantity": "${t6.text}",
                        "shipment_terms": "${t7.text}",
                        "weight": "${t8.text}",
                        "volume": "${t9.text}",
                        "move_type": "${t10.text}",
                        "incoterm_id": "${t11.text}",
                        "place_of_origin": "${t12.text}",
                        "final_port_of_destination": "${t13.text}",
                        "booking_id": "${t14.text}",
                        "expected_date_of_shipment": "${t15.text}",
                        "remarks": "${t16.text}",
                        "point_of_stuffing": "${t17.text}",
                        "point_of_destuffing": "${t18.text}",
                        "container_type": "${t19.text}",
                        "volume_uom": "${t20.text}",
                        "weight_uom": "${t21.text}",
                        "booking_date": "${t22.text}",
                        "shipping_line_id": "${t23.text}",
                        "inquiry_user_name": "${t24.text}"
                      }];
                      // List data=[{"email_from": "my.email@powerpbox.org", "partner_id": "Mitchell Admin", "partner_name": "V2Maritime LLp", "phone": "9910995103", "cargo_name": "Rice in Bags 50kg each", "quantity": "2500.0", "shipment_terms": "lcl", "weight": "125.0", "volume": "165.0", "move_type": "Door To Door", "incoterm_id": "FREE ON BOARD", "place_of_origin": "Mundra", "final_port_of_destination": "Hamburg", "booking_id": "erpbox00 086", "expected_date_of_shipment": "2023-03-30", "remarks": "Prefer Maersk Line or MSC ", "point_of_stuffing": "Indore", "point_of_destuffing": "Dubai", "container_type": "RF40", "volume_uom": "12", "weight_uom": "7", "booking_date": "2023-03-27 06:27:29", "shipping_line_id": "CMA-CGM_test", "inquiry_user_name": "Flutter-Test_User-002"}];
                      String body = json.encode(data);
                      var url = Uri.https("mother.powerpbox.org","mother_odoo14/post_inquiry_from_freightbox");
                      var response = await http.post(url,
                        headers: <String, String>{'authorization': basicAuth},
                        body: body,
                      );
                      print('Response status: ${response.statusCode}');
                      print('Response body: ${response.body}');
                      Map map=jsonDecode(response.body);


                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${map['success']}")));
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                        return trackData();
                      },));
                    },
                    color: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)
                    ),
                    child: Text("Add Inquiry",style: TextStyle(
                      fontWeight: FontWeight.w600,fontSize: 16,

                    ),),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border(
                          bottom: BorderSide(color: Colors.black),
                          top: BorderSide(color: Colors.black),
                          right: BorderSide(color: Colors.black),
                          left: BorderSide(color: Colors.black)
                      )
                  ),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height:60,
                    onPressed: () async {

                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return trackData();
                      },));
                    },
                    color: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)
                    ),
                    child: Text("Track Record",style: TextStyle(
                      fontWeight: FontWeight.w600,fontSize: 16,

                    ),),
                  ),
                ),
              ),
            ],

          ),
        ),
      ),
    );
  }
  Widget makeInput({label,t,obsureText = false}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,style:TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.black87
        ),),
        SizedBox(height: 5,),
        TextField(
          controller: t,
          obscureText: obsureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)
            ),
          ),
        ),
        SizedBox(height: 30,)

      ],
    );
  }
}
