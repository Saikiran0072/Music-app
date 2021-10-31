import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'loginpage.dart';
import 'colors.dart';



void main() {
  runApp(MaterialApp(
    home: Signuppage(),
  ));
}

class Signuppage extends StatelessWidget {
  const Signuppage({Key? key}) : super(key: key);

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
                Padding(
                  padding: EdgeInsets.only(top: 100),
                ),
                SizedBox(height:30,),
                Center(
                  child: Text('Sign Up', style: TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold,
                      color: darkfontcolor
                  ),),
                ),
                Center(
                  child: Text('Create your account', style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold,
                      color: Colors.white70
                  ),),
                ),
                SizedBox(height:70,),


                Column(
                  children:<Widget> [
                    Container(


                      child: TextFormField(decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 30),
                        prefixIcon: Icon(Icons.person),
                        hintText: 'Full Name',fillColor: Colors.white,
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
                    SizedBox(height: 20),

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
                    SizedBox(height: 20),
                    Container(


                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 30),
                          prefixIcon: Icon(Icons.password),
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
                    SizedBox(height:20.0,),
                    Container(


                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 30),
                          prefixIcon: Icon(Icons.password_sharp),
                          hintText: 'Confirm password',fillColor: Colors.white,
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
                    SizedBox(height: 20.0,),

                    SizedBox(height: 40),

                    Center(
                        child: Container(
                          height: 60,
                          width: 60,
                          child: IconButton(

                            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Mainpage()));} ,
                            color: Colors.white,
                            icon: const Icon(Icons.arrow_forward_ios_sharp, color:arrowcolor),



                          ),

                        )

                    ),
                    SizedBox(height: 30),

                  ],
                ),
              ],
            ),
          ),
        )

    );






  }
}
