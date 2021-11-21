
import 'dart:convert';

import 'package:e_commerce/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'options.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'loginpage.dart';
import 'user.dart';
import 'loading.dart';


class Profilepage extends StatefulWidget {
  static const String id = "profilepage_screen";



  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  String name = "";
  String text = "Update";
  bool enable = false;

  Future updateData() async{
    http.Response response = await http.post(Uri.parse('http://192.168.0.102/update.php'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body:json.encode({
          "Email": Provider.of<Data>(context, listen: false).Email,
          "FullName": name

        }));
    print("success");
    print(response.body);
    print(response.statusCode);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: scaffoldbgcolor,
        appBar: AppBar(
          backgroundColor: appbarcolor,
          title: Text("Profile"),
          leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, Options.id);
            },
            icon: Icon(Icons.arrow_back_ios_rounded, color: darkfontcolor,),
          ),
        ),

        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                SizedBox(height:30.0),

                Center(
                  child: Stack(
                    children: [
                      Container(
                        height: 130.0,
                        width: 130.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 4,
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 2,blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                            ),

                          ],


                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/5.jpg'),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),

                            color: navigationbariconcolor,
                          ),
                          child: IconButton(
                            onPressed: (){

                            },
                            icon: Icon(Icons.edit,color: Colors.white,),
                          ),



                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height:50.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("Followers", style: TextStyle(color: darkfontcolor, fontSize: 15),),
                        Text("xx", style: TextStyle(color: darkfontcolor, fontSize: 15),),
                      ],
                    ),
                    Column(
                      children: [
                        Text("Following", style: TextStyle(color: darkfontcolor, fontSize: 15),),
                        Text("xx", style: TextStyle(color: darkfontcolor, fontSize: 15),),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 50,),


                Column(
                  children:<Widget> [
                    Container(
                      child: TextFormField(
                        initialValue: Provider.of<Data>(context).fullname,
                        enabled: enable,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 30),
                          prefixIcon: Icon(Icons.person),
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)
                          ),
                          filled: true,
                          hintText: "Username",

                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,color: Colors.black
                          ),
                        ),
                        cursorColor: Colors.black,
                        onChanged: (value){
                          name = value;
                        },

                      ),



                    ),
                    SizedBox(height: 20),

                    Visibility(
                      visible: !enable,
                      child: Container(


                        child: TextFormField(
                          initialValue: Provider.of<Data>(context, listen: false).email,
                          enabled: false,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(bottom: 30),
                            prefixIcon: Icon(Icons.email),
                            hintText: 'Email',fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)
                            ),
                            filled: true,
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,color: Colors.black
                            ),
                          ),
                          cursorColor: Colors.black,

                        ),



                      ),
                    ),
                    SizedBox(height: 40),

                    Visibility(
                      visible: !enable,
                      child: Center(
                        child: Container(


                          child: MaterialButton(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.update,
                                ),
                                SizedBox(width: 10,),
                                Text("Update", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)

                              ],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),


                            onPressed: () async {
                              setState(() {
                                enable = !enable;
                              });
                            } ,
                            color: lighttextboxcolor,

                          ),



                        ),

                      ),
                    ),
                    Visibility(
                      visible: enable,
                      child: Center(
                        child: Container(


                          child: MaterialButton(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.update,
                                ),
                                SizedBox(width: 10,),
                                Text("Save", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)

                              ],
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),


                            onPressed: () async {
                              await updateData();
                              Provider.of<Data>(context, listen: false).getData();
                              setState(() {
                                enable = !enable;
                              });
                            } ,
                            color: lighttextboxcolor,

                          ),



                        ),

                      ),
                    ),


                  ],
                ),
              ],
            ),
          ),
        )

    );






  }
}
