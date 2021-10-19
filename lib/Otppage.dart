
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:musicappp/Mainpage.dart';



void main() {
  runApp(MaterialApp(
    home: OTPpage(),
  ));
}

class OTPpage extends StatelessWidget {
  const OTPpage({Key? key}) : super(key: key);

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
                    SizedBox(height:30.0),
                    Center(
                      child: Text('Verify Your Phone',
                          style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold,
                          color: Colors.black87
                      ),),


                    ),
                    Center(
                      child: Text('Number',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold,
                            color: Colors.black87
                        ),),


                    ),
                  ],
                ),




                SizedBox(height:50.0),


                Column(
                  children:<Widget> [
                    Container(
                            child:(
                                  Center(
                                    child: Text('We Have Sent You a 4 Digit OTP',
                                     style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold,
                                    color: Colors.black87
                                ),),


                              )

                      ),
                    ),
                    SizedBox(height: 30.0,),
                    Container(


                      child: Neumorphic(

                        margin: EdgeInsets.fromLTRB(0, 0  , 30, 0),
                        child: TextField(decoration: InputDecoration(
                          hintText: 'Enter OTP',fillColor: Colors.cyan,
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.cyan)
                          ),
                          filled: true,

                          border: UnderlineInputBorder(),
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,color: Colors.black
                          ),
                        ),
                          cursorColor: Colors.black,

                        ),
                        style: NeumorphicStyle(
                            shape: NeumorphicShape.concave,
                            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
                            depth: -8,
                            lightSource: LightSource.topLeft,
                            color: Colors.grey
                        ),

                      ),



                    ),
                  ],
                        ),
                      SizedBox(height: 30),
                Center(
                    child: Container(
                      height: 60,
                      width: 60,
                      child: Neumorphic(

                        child: IconButton(

                          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Mainpagee()));} ,
                          color: Colors.white,
                          icon: const Icon(Icons.arrow_forward_ios_sharp),



                        ),
                        style: NeumorphicStyle(
                            shape: NeumorphicShape.concave,
                            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(50)),
                            depth: 8,
                            lightSource: LightSource.topLeft,
                            color: Colors.cyan
                        ),


                      ),

                    )

                ),
                SizedBox(height: 30.0,),



                Center(
                  child: FlatButton(onPressed: () {},
                    child: Text('Resend OTP'),
                    color: Colors.cyan,

                  ),
                ),
                SizedBox(height: 20.0,),
                Center(

                  child: Text('Wait for 54 seconds ',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18.0,

                    ),


                  ),




                ),
                          ],
                        ),
                      ),
                ),
                );







  }
}
