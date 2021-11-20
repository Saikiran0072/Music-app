import 'package:e_commerce/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'loginpage.dart';
import 'profilepage.dart';
import 'signuppage.dart';
import 'colors.dart';


class Login extends StatelessWidget {
  static const String id = "second_screen";
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldbgcolor,
      body: SingleChildScrollView(

        child: SafeArea(
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 50.0,),
                Center(
                  child: Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset('images/final_logo_apppages.jpeg',
                        height:200.0 ,
                        width: 300.0,
                        fit: BoxFit.fill,



                      ),
                    ),

                  ),

                ),
                SizedBox(height: 140.0,),
                Container(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  decoration: BoxDecoration(
                    color: containercolor,
                    borderRadius: BorderRadius.circular(10),
                  ),

                  child: RaisedButton(
                    color: containercolor,
                    onPressed: () {Navigator.pushNamed(context, Mainpage.id);},
                    child: Text('Sign In',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: darkfontcolor,
                        )
                    ),


                  ),

                ),
                SizedBox(height: 30.0,),
                Container(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  decoration: BoxDecoration(
                    color: containercolor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: RaisedButton(
                    color: containercolor,
                    onPressed: () {Navigator.pushNamed(context, Signuppage.id);},
                    child: Text('Sign Up',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: darkfontcolor,
                      ),
                    ),


                  ),

                ),



              ],

            ),
          ),
        ),

      ),

    );
  }


}
