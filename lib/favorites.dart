import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:musicappp/Library.dart';

import 'Mainpage.dart';



void main() {
  runApp(MaterialApp(
    home: Favorites(),
  ));
}
class Favorites extends StatelessWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.cyan,
        elevation: 0,
        leading: IconButton(
        onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Mainpagee()));
    },
    icon: Icon(Icons.arrow_back_ios_rounded),
    ),
        ),
      backgroundColor: Colors.cyan,
      body: Center(

        child: Container(
          margin: EdgeInsets.only(top: 0.0),
          child: Text('Add Favorite Songs',

            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),),
        ),
      ),
    );
  }
}
