import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:musicappp/loginpage.dart';
import 'package:musicappp/profilepage.dart';
import 'package:musicappp/signuppage.dart';

void main() {
  runApp(MaterialApp(
    home: Login(),
  ));
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50.0,),
            Center(
              child: Neumorphic(

                  child: Container(


                    child: Image.asset('assets/4.png',
                      height:200.0 ,
                      width: 200.0,
                      fit: BoxFit.fill,
                    ),

                  ),
                style: NeumorphicStyle(
                shape: NeumorphicShape.flat,
                boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
                depth: 10,
                lightSource: LightSource.topLeft,
                color: Colors.cyan,
              ),

            ),

    ),
            Container(
              padding: EdgeInsets.fromLTRB(160.0, 200.0, 160.0, 20.0),
              child: Neumorphic(

                child: RaisedButton(
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Mainpage()));},
                  child: Text('Sign In',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      )
                  ),
                  color: Colors.cyan,

                ),
                style: NeumorphicStyle(
                  depth: 10,
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
                ),
              ),

            ),
            Container(

              child: Neumorphic(
                child: RaisedButton(
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Signuppage()));},
                  child: Text('Sign Up',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      )
                  ),
                  color: Colors.cyan,

                ),
                style: NeumorphicStyle(
                  depth: -10,
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
                ),
              ),

            ),


    ],

        ),

      ),

    );
  }


}
