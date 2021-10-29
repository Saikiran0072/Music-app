
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'profilepage.dart';
import 'signuppage.dart';
import 'package:e_commerce/Player.dart';
import 'colors.dart';



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
        backgroundColor: scaffoldbgcolor,

        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Column(
                  children: [
                    SizedBox(height:80,),
                  ],
                ),
                SizedBox(height:30,),
                Center(
                  child: Text('Login', style: TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold,
                      color: darkfontcolor
                  ),),
                ),
                SizedBox(height: 5,),
                Center(
                  child: Text('Welcome Back', style: TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold,
                      color: Colors.white70,
                  ),),
                ),
                SizedBox(height:80,),


                Column(
                  children:<Widget> [
                    Container(


                      child: TextFormField(
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
                    SizedBox(height: 30),

                    Container(


                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 30),
                        prefixIcon: Icon(Icons.password_outlined),
                        hintText: 'Password',fillColor: Colors.white,
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
                    SizedBox(height: 80),
                    Column(
                      children: [
                        Center(
                          child: MaterialButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Player()));},child: Text("Sign Up",style: TextStyle(fontSize: 20),), padding: EdgeInsets.symmetric(horizontal: 80, vertical: 10),color: Colors.white70,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),),
                        ),
                        MaterialButton(
                          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Signuppage()));},
                          child: Center(
                            child: Center(
                              child: Text(" Don't Have an account? ",
                                style: TextStyle(
                                  color: darkfontcolor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold

                                ),

                              ),
                            ),

                          ),
                        ),
                      ],
                    )

                  ],
                ),
              ],
            ),
          ),
        )

    );






  }
}
