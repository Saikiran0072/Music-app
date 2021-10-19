import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:musicappp/Otppage.dart';



void main() {
  runApp(MaterialApp(
    home: Otppage(),
  ));
}

class Otppage extends StatelessWidget {
  const Otppage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Column(
                children: [
                  SizedBox(height: 30.0),
                  Center(
                    child: Text('Enter Your Phone Number ',
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold,
                          color: Colors.black87
                      ),
                    ),
                  ),
                  SizedBox(height: 50.0,),
                  Container(


                    child: Neumorphic(

                      margin: EdgeInsets.fromLTRB(0, 0, 30, 0),
                      child: TextField(decoration: InputDecoration(
                        hintText: 'Phone Number',
                        fillColor: Colors.cyan,
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.cyan)
                        ),
                        filled: true,

                        border: UnderlineInputBorder(),
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30, color: Colors.black
                        ),
                      ),
                        cursorColor: Colors.black,

                      ),
                      style: NeumorphicStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(30)),
                          depth: -8,
                          lightSource: LightSource.topLeft,
                          color: Colors.grey
                      ),

                    ),


                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(160.0, 200.0, 160.0, 20.0),
                    child: Neumorphic(

                      child: RaisedButton(

                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>OTPpage()));},
                        child: Text('Submit',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            )
                        ),
                        color: Colors.cyan,

                      ),
                      style: NeumorphicStyle(
                        depth: 10,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(30)),
                      ),
                    ),

                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}