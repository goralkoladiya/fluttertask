import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertask/getdata.dart';
import 'package:http/http.dart' as http;
class SignupPage extends StatelessWidget {
  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();
  TextEditingController t3=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading:
        IconButton( onPressed: (){
          Navigator.pop(context);
        },icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: ListView(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text ("Sign up", style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),),
                        SizedBox(height: 20,),
                        Text("Create an Account,Its free",style: TextStyle(
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
                          makeInput(label: "Name",t:t1),
                          makeInput(label: "Email",t:t2),
                          makeInput(label: "Password",t:t3,obsureText: true),

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
                            print(t1.text);
                            print(t2.text);
                            print(t3.text);
                            String basicAuth = 'Basic ' + base64Encode(utf8.encode('powerpbox:powerpbox@0612'));
                            print(basicAuth);
                            Map data={"name": "${t1.text}", "login": "${t2.text}", "password": "${t3.text}"};
                            String body = json.encode(data);
                            var url = Uri.https('mother.powerpbox.org', 'my_controller/my_post_api');
                            var response = await http.post(url,
                                headers: <String, String>{'authorization': basicAuth},
                                body: body,
                            );
                            print('Response status: ${response.statusCode}');
                            print('Response body: ${response.body}');
                            Map map=jsonDecode(response.body);
                            String Response=map['Response'];
                            String Message=map['Message'];
                            List arr=Message.split(":");
                            String login=arr[1].toString().split(",")[0];
                            String password=arr[2].toString().split("and")[0];
                            String accesstoken=arr[3];
                            // print(login);
                            // print(password);
                            print(accesstoken);
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("$Response")));
                            await Future.delayed(Duration(seconds: 1));
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                              return getdata(Response,accesstoken,login,password);
                            },));
                          },
                          color: Colors.redAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)
                          ),
                          child: Text("Sign Up",style: TextStyle(
                            fontWeight: FontWeight.w600,fontSize: 16,

                          ),),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account? "),
                        Text("Login",style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18
                        ),),
                      ],
                    )
                  ],

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
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