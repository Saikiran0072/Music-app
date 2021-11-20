import 'dart:convert';
import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'loginpage.dart';
import 'colors.dart';
import 'package:e_commerce/Mainpage.dart';
import 'loading.dart';
import 'package:http/http.dart' as http;
import 'loginpage.dart';



void main() {
  runApp(MaterialApp(
    home: Signuppage(),
  ));
}

class Signuppage extends StatefulWidget {
  static const String id = "signup_screen";
  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwdController = TextEditingController();
  final confirmpasswdController = TextEditingController();
  var message="";
  var check_pattern = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  bool _autoValidate = false;
  bool loading = false;

  Future register() async{
    http.Response response = await http.post(Uri.parse('http://192.168.0.6/register.php'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body:json.encode({

          "FullName": fullNameController.text,
          "Email": emailController.text,
          "Password": passwdController.text,
          "Confirmpswd": confirmpasswdController.text

        }));
    print("success");
    message = "success";
    print(response.statusCode);
  }

  @override
  Widget build(BuildContext context) {
    return loading ? Loading() : Scaffold(
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
              //title texts
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


              Form(
                key: _formKey,
                child: Column(
                  children:<Widget> [
                    //full name text field
                    Container(


                      child: TextFormField(
                        validator: (value){
                          if(value!.isEmpty){
                            return "*Required";
                          }
                          if(value.contains(RegExp(r'[0-9]'))){
                            return "This field takes in only characters";
                          }
                        },
                        decoration: InputDecoration(
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
                        controller: fullNameController,


                      ),



                    ),
                    SizedBox(height: 20),
//email text field
                    Container(


                      child: TextFormField(
                        validator: (value){
                          if(value!.isEmpty){
                            return "*Required";
                          }
                          if(!value.contains(check_pattern)){
                            return "Enter valid email";
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
                        cursorColor: Colors.black,
                        controller: emailController,

                      ),



                    ),
                    SizedBox(height: 20),
                    //password text field
                    Container(


                      child: TextFormField(
                        validator: (value){
                          if(value!.isEmpty){
                            return "*Required";
                          }
                          if(value.length<6){
                            return "This field needs atleast 6 characters";
                          }
                        },
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
                        controller: passwdController,

                      ),



                    ),
                    SizedBox(height:20.0,),
                    //confirm password text field
                    Container(


                      child: TextFormField(
                        validator: (value){
                          if(value!.isEmpty){
                            return "*Required";
                          }
                          if(value.length<6){
                            return "This field needs atleast 6 characters";
                          }
                          if( passwdController.text!= confirmpasswdController.text){
                            return "Password doesn't match";
                          }
                        },
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
                        controller: confirmpasswdController,

                      ),



                    ),
                    SizedBox(height: 20.0,),

                    SizedBox(height: 40),
// next arrow
                    Center(
                        child: Container(
                          height: 60,
                          width: 60,
                          child: IconButton(

                            onPressed: () async {
                              setState(() {
                                if (_formKey.currentState!.validate()) {
                                  _autoValidate = true;
                                }
                              });
                              if (passwdController.text == confirmpasswdController.text && (passwdController.text.length >=6 && confirmpasswdController.text.length >=6) && emailController.text.contains(check_pattern)){
                                await register();
                                if(message != "success"){
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text('An account is already associated with this mail', style: TextStyle(color: lightfontcolor),),
                                        backgroundColor: darkfontcolor,
                                      )
                                  );
                                }
                                else{
                                  Navigator.pushNamed(context, Mainpagee.id);
                                }
                              }
                              else{
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                          content: Text('Try Again', style: TextStyle(color: lightfontcolor),),
                                          backgroundColor: darkfontcolor,
                                        )
                                    );
                                  }



                            } ,
                            color: Colors.white,
                            icon: const Icon(Icons.arrow_forward_ios_sharp, color:arrowcolor),



                          ),

                        )

                    ),
                    SizedBox(height: 30),

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
