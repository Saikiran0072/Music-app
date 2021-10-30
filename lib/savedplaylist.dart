import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:musicappp/Addsong.dart';
import 'package:musicappp/Library.dart';
import 'package:musicappp/colors.dart';

import 'Mainpage.dart';



void main() {
  runApp(MaterialApp(
    home: Playlist(),
  ));
}
class Playlist extends StatelessWidget {
  const Playlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:scaffoldbgcolor,
      appBar: AppBar(
        backgroundColor: appbarcolor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Mainpagee()));
          },
          icon: Icon(Icons.arrow_back_ios_rounded,color: Color(0xFF1CDFCB),),
        ),
        actions: [
          Container(
            height: 45,
            width: 45,
            color: appbarcolor,
            child: IconButton(
              icon: Icon(Icons.more_vert ,color: Color(0xFF1CDFCB), ),
              onPressed: () {  },
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30.0),
              height: 200.0,
              width: 200.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset('images/default_img.jpg',
              height:200.0 ,
              width: 300.0,
              fit: BoxFit.fill,
            ),
        ),
            ),
            SizedBox(height: 30.0,),
            Container(
              child: Text('My Playlist',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: darkfontcolor,
                ),

              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              child: Text(' Artist Name',
                style: TextStyle(

                  fontSize: 15.0,
                  color: darkfontcolor,
                ),


              ),
            ),
            SizedBox(height: 30.0,),
            Container(
              child: Text("Let's find some Songs " ,
                style: TextStyle(

                  fontSize: 25.0,
                  color: darkfontcolor,
                ),


              ),

            ),
            SizedBox(height:50.0),
            Container(
              height: 40.0,
              width: 170.0,

              decoration: BoxDecoration(
                color: containercolor,
                borderRadius: BorderRadius.circular(30),

              ),

              child: RaisedButton(
                color: containercolor,
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Addsong()));},
                child: Text('Add Songs',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: darkfontcolor,
                    )
                ),


              ),



            ),
          ],
        ),

      ),
      bottomNavigationBar: Container(
        color: Color(0xFF3E4C59),
        height: 60.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.home,color: navigationbariconcolor,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.music_note,color: navigationbariconcolor,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: navigationbariconcolor,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.person,color: navigationbariconcolor,)),
          ],
        ),
      ),
    );
  }
}
