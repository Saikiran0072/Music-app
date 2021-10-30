import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'Library.dart';
import 'Mainpage.dart';
import 'colors.dart';
import 'Song.dart';



void main() {
  runApp(MaterialApp(
    home: Favorites(),
  ));
}
class Favorites extends StatelessWidget {


  void newval= iconcolor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldbgcolor,
      appBar: AppBar(
        title: Center(
          child: Text('Favorites',
            style: TextStyle(
              color: darkfontcolor,


            ),),),

        backgroundColor: appbarcolor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Mainpagee()));
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: arrowcolor,
          ),

        ),
      ),

      body: SingleChildScrollView(
        child: SafeArea(
          child: Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 0.0),
              child: Column(
                children: <Widget> [
                  SizedBox(height: 70,),
                  Row(
                    children: <Widget> [
                      SizedBox(
                          width:20
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Song()));},
                          child: Container(
                            child: Row(
                              children: <Widget> [

                                Expanded(
                                  child: Image.asset('images/default_img.jpg',
                                    height: 120,
                                    width: 120,


                                  ),


                                ),
                                Expanded(
                                  child: Column(
                                    children: <Widget> [
                                      Text('song name',
                                        style: TextStyle(
                                          letterSpacing: 1,
                                          color: darkfontcolor,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height:2,),
                                      Text('artist name',
                                        style: TextStyle(
                                          color: darkfontcolor,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),

                                ),
                              ],
                            ),
                            padding: EdgeInsets.all(20),
                            height: 100,
                            width: 360,
                            decoration: BoxDecoration(
                              color: containercolor,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(30),

                            ),

                          ),
                        ),
                      ),
                      SizedBox(width: 40,),
                      Icon(
                        Icons.favorite,
                        color: navigationbariconcolor,

                      ),
                      SizedBox(width: 10,)
                    ],
                  ),
                  SizedBox(height:20,),
                  Row(
                    children: <Widget> [
                      SizedBox(
                          width:20
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Song()));},
                          child: Container(
                            child: Row(
                              children: <Widget> [

                                Expanded(
                                  child: Image.asset('images/default_img.jpg',
                                    height: 120,
                                    width: 120,


                                  ),


                                ),
                                Expanded(
                                  child: Column(
                                    children: <Widget> [
                                      Text('song name',
                                        style: TextStyle(
                                          letterSpacing: 1,
                                          color: darkfontcolor,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height:2,),
                                      Text('artist name',
                                        style: TextStyle(
                                          color: darkfontcolor,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),

                                ),
                              ],
                            ),
                            padding: EdgeInsets.all(20),
                            height: 100,
                            width: 360,
                            decoration: BoxDecoration(
                              color: containercolor,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(30),

                            ),

                          ),
                        ),
                      ),
                      SizedBox(width: 40,),
                      Icon(
                        Icons.favorite,
                        color: navigationbariconcolor,

                      ),
                      SizedBox(width: 10,)
                    ],
                  ),
                  SizedBox(height:20,),
                  Row(
                    children: <Widget> [
                      SizedBox(
                          width:20
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Song()));},
                          child: Container(
                            child: Row(
                              children: <Widget> [

                                Expanded(
                                  child: Image.asset('images/default_img.jpg',
                                    height: 120,
                                    width: 120,


                                  ),


                                ),
                                Expanded(
                                  child: Column(
                                    children: <Widget> [
                                      Text('song name',
                                        style: TextStyle(
                                          letterSpacing: 1,
                                          color: darkfontcolor,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height:2,),
                                      Text('artist name',
                                        style: TextStyle(
                                          color: darkfontcolor,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),

                                ),
                              ],
                            ),
                            padding: EdgeInsets.all(20),
                            height: 100,
                            width: 360,
                            decoration: BoxDecoration(
                              color: containercolor,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(30),

                            ),

                          ),
                        ),
                      ),
                      SizedBox(width: 40,),
                      Icon(
                        Icons.favorite,
                        color: navigationbariconcolor,

                      ),
                      SizedBox(width: 10,)
                    ],
                  ),
                  SizedBox(height:20,),
                  Row(
                    children: <Widget> [
                      SizedBox(
                          width:20
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Song()));},
                          child: Container(
                            child: Row(
                              children: <Widget> [

                                Expanded(
                                  child: Image.asset('images/default_img.jpg',
                                    height: 120,
                                    width: 120,


                                  ),


                                ),
                                Expanded(
                                  child: Column(
                                    children: <Widget> [
                                      Text('song name',
                                        style: TextStyle(
                                          letterSpacing: 1,
                                          color: darkfontcolor,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height:2,),
                                      Text('artist name',
                                        style: TextStyle(
                                          color: darkfontcolor,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),

                                ),
                              ],
                            ),
                            padding: EdgeInsets.all(20),
                            height: 100,
                            width: 360,
                            decoration: BoxDecoration(
                              color: containercolor,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(30),

                            ),

                          ),
                        ),
                      ),
                      SizedBox(width: 40,),
                      Icon(
                        Icons.favorite,
                        color: navigationbariconcolor,

                      ),
                      SizedBox(width: 10,)
                    ],
                  ),
                  SizedBox(height:20,),
                  Row(
                    children: <Widget> [
                      SizedBox(
                          width:20
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Song()));},
                          child: Container(
                            child: Row(
                              children: <Widget> [

                                Expanded(
                                  child: Image.asset('images/default_img.jpg',
                                    height: 120,
                                    width: 120,


                                  ),


                                ),
                                Expanded(
                                  child: Column(
                                    children: <Widget> [
                                      Text('song name',
                                        style: TextStyle(
                                          letterSpacing: 1,
                                          color: darkfontcolor,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height:2,),
                                      Text('artist name',
                                        style: TextStyle(
                                          color: darkfontcolor,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),

                                ),
                              ],
                            ),
                            padding: EdgeInsets.all(20),
                            height: 100,
                            width: 360,
                            decoration: BoxDecoration(
                              color: containercolor,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(30),

                            ),

                          ),
                        ),
                      ),
                      SizedBox(width: 40,),
                      Icon(
                        Icons.favorite,
                        color: navigationbariconcolor,

                      ),
                      SizedBox(width: 10,)
                    ],
                  ),
                  SizedBox(height:20,),
                  Row(
                    children: <Widget> [
                      SizedBox(
                          width:20
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Song()));},
                          child: Container(
                            child: Row(
                              children: <Widget> [

                                Expanded(
                                  child: Image.asset('images/default_img.jpg',
                                    height: 120,
                                    width: 120,


                                  ),


                                ),
                                Expanded(
                                  child: Column(
                                    children: <Widget> [
                                      Text('song name',
                                        style: TextStyle(
                                          letterSpacing: 1,
                                          color: darkfontcolor,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height:2,),
                                      Text('artist name',
                                        style: TextStyle(
                                          color: darkfontcolor,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),

                                ),
                              ],
                            ),
                            padding: EdgeInsets.all(20),
                            height: 100,
                            width: 360,
                            decoration: BoxDecoration(
                              color: containercolor,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(30),

                            ),

                          ),
                        ),
                      ),
                      SizedBox(width: 40,),
                      Icon(
                        Icons.favorite,
                        color: navigationbariconcolor,

                      ),
                      SizedBox(width: 10,)
                    ],
                  ),
                  SizedBox(height:20,),




                ],
              ),
            ),

          ),
        ),

      ),
    );


  }
}
