
import 'package:e_commerce/Song.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'loading.dart';
import 'profilepage.dart';
import 'signuppage.dart';
import 'package:e_commerce/Mainpage.dart';
import 'colors.dart';
import 'main.dart';
import 'Mainpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Song.dart';
import 'signuppage.dart';



void main() {
  runApp(MaterialApp(
    home: Mainpage(),
  ));
}


class Mainpage extends StatefulWidget {


  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;

  final  _auth = FirebaseAuth.instance;

  bool loading = false;
  String email= '';
  String password ='';
  String loggedInUser = '';

  @override
  Widget build(BuildContext context) {
    return loading ? Loading(): Scaffold(
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
//title fields
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


              Form(
                key: _formKey,
                child: Column(
                  children:<Widget> [
//email text field
                    Container(


                      child: TextFormField(
                        validator: (value){
                          if(value!.isEmpty ){
                            return "*Required";
                          }
                        },
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
                        onChanged: (value) {
                          email = value;


                        },
                        cursorColor: Colors.black,



                      ),



                    ),
                    SizedBox(height: 30),
//password text field
                    Container(
                      child: TextFormField(
                        validator: (value){
                          if(value!.isEmpty){
                            return "*Required";
                          }
                          if(value.length <6){
                            return "this field requires atleast 6 characters";
                          }
                        },
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
                        onChanged: (value) {
                          password = value;

                        },

                      ),



                    ),
                    SizedBox(height: 80),
                    Column(
                      children: [
                        Center(
                          child: MaterialButton(

                            onPressed: () async{
                              setState(() {
                                if (_formKey.currentState!.validate()) {
                                  _autoValidate = true;
                                }
                              setState(() {
                                loading =true;

                              });
                              });
                              try {
                                final user1 = await _auth.signInWithEmailAndPassword(email: email, password: password);
                                print('successful');
                                if (user1 != null) {
                                  setState(() {
                                    loading =false;
                                  });
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Mainpagee()));} }
                              catch (e) {
                                print(e);
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('Incorrect email/password', style: TextStyle(color: lightfontcolor),),
                                      backgroundColor: darkfontcolor,
                                    )
                                );
                              }
                            },
                            child: Text("Login",style: TextStyle(fontSize: 20),),
                            padding: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                            color: Colors.white70,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),),
                        ),
                        SizedBox(height: 10,),
                        Center(
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Signuppage()));
                            },
                            child: Text(" Don't Have an account? ",
                              style: TextStyle(
                                  color: darkfontcolor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold

                              ),

                            ),
                          ),

                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),

    );






  }
}
