
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:musicappp/Otppage.dart';
import 'package:musicappp/phonenumber.dart';
import 'package:musicappp/profilepage.dart';
import 'package:musicappp/signuppage.dart';



void main() {
  runApp(MaterialApp(
    home: Mainpage(),
  ));
}

class Mainpage extends StatelessWidget {
  const Mainpage({Key? key}) : super(key: key);

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
                    SizedBox(height:50,),
                  ],
                ),
                Center(
                    child: Neumorphic(
                      child: Container(
                        child: Image(
                          image: AssetImage('assets/4.png'),
                          height: 160,
                          width: 160,
                          fit: BoxFit.fill,
                        ),
                      ),
                      style: NeumorphicStyle(
                          shape: NeumorphicShape.flat,
                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
                          depth: 10,
                          lightSource: LightSource.topLeft,
                          color: Colors.black
                      ),
                    )
                ),
                SizedBox(height:30,),
                Center(
                  child: Text('Welcome back', style: TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold,
                      color: Colors.black87
                  ),),
                ),
                SizedBox(height:50,),


                Column(
                  children:<Widget> [
                    Container(


                      child: Neumorphic(

                        margin: EdgeInsets.fromLTRB(0, 0  , 30, 0),
                        child: TextField(decoration: InputDecoration(
                            hintText: 'Email',fillColor: Colors.cyan,
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
                    SizedBox(height: 20),

                    Container(


                      child: Neumorphic(

                        margin: EdgeInsets.fromLTRB(0, 0  , 30, 0),
                        child: TextField(decoration: InputDecoration(
                            hintText: 'Password',
                            enabledBorder: UnderlineInputBorder(

                                borderSide: BorderSide(color: Colors.red)
                            ),
                            fillColor: Colors.cyan,
                            filled: true,
                            border: UnderlineInputBorder(),
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,color: Colors.yellow,
                            ),
                        ),
                          cursorColor: Colors.black,
                          obscureText: true,

                        ),
                        style: NeumorphicStyle(
                            shape: NeumorphicShape.concave,
                            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
                            depth: -8,
                            lightSource: LightSource.topLeft,

                        ),

                      ),

                    ),
                    SizedBox(height: 20),




                    Center(
                      child: FlatButton(
                        child: Text('Forgot Password?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                        ),
                        onPressed: () {},
                        color: Colors.cyan,




                      ),

                    ),
                    SizedBox(height: 40),

                    Center(
                        child: Container(
                          height: 60,
                          width: 60,
                          child: Neumorphic(

                            child: IconButton(

                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Otppage()));} ,
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
                    SizedBox(height: 30),
                    Center(
                      child: Row(
                        children: [
                           Center(
                             child: Text(" Don't Have an account? ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),

                          ),
                           ),
                          FlatButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Signuppage()));},
                            child: Text('Sign up'),
                            color: Colors.cyan,

                          ),

                        ],
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
