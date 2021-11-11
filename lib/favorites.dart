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
class Favorites extends StatefulWidget {


  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  List<bool> _selections1 = List.generate(1, (_) => false);
  List<bool> _selections2 = List.generate(1, (_) => false);
  List<bool> _selections3 = List.generate(1, (_) => false);
  List<bool> _selections4 = List.generate(1, (_) => false);
  List<bool> _selections5 = List.generate(1, (_) => false);
  List<bool> _selections6 = List.generate(1, (_) => false);
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
                      ToggleButtons(
                        color: navigationbarcolor,
                        borderColor: scaffoldbgcolor,
                        selectedColor: navigationbariconcolor,
                        selectedBorderColor: navigationbarcolor,
                        renderBorder: false,
                        fillColor: scaffoldbgcolor,
                        children: <Widget> [
                          Icon(Icons.favorite),
                        ],
                        isSelected: _selections1,
                        onPressed: (int index) {
                          setState(() {
                            _selections1[index] = !_selections1[index];

                          });
                        },



                      ),
                      SizedBox(width: 10,)
                    ],
                  ),
                  SizedBox(height:20,),Row(
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
                      ToggleButtons(
                        color: navigationbarcolor,
                        borderColor: scaffoldbgcolor,
                        selectedColor: navigationbariconcolor,
                        selectedBorderColor: navigationbarcolor,
                        renderBorder: false,
                        fillColor: scaffoldbgcolor,
                        children: <Widget> [
                          Icon(Icons.favorite),
                        ],
                        isSelected: _selections2,
                        onPressed: (int index) {
                          setState(() {
                            _selections2[index] = !_selections2[index];

                          });
                        },



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
                      ToggleButtons(
                        color: navigationbarcolor,
                        borderColor: scaffoldbgcolor,
                        selectedColor: navigationbariconcolor,
                        selectedBorderColor: navigationbarcolor,
                        renderBorder: false,
                        fillColor: scaffoldbgcolor,
                        children: <Widget> [
                          Icon(Icons.favorite),
                        ],
                        isSelected: _selections3,
                        onPressed: (int index) {
                          setState(() {
                            _selections3[index] = !_selections3[index];
                          });
                        },
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
                      ToggleButtons(
                        color: navigationbarcolor,
                        borderColor: scaffoldbgcolor,
                        selectedColor: navigationbariconcolor,
                        selectedBorderColor: navigationbarcolor,
                        renderBorder: false,
                        fillColor: scaffoldbgcolor,
                        children: <Widget> [
                          Icon(Icons.favorite),
                        ],
                        isSelected: _selections4,
                        onPressed: (int index) {
                          setState(() {
                            _selections4[index] = !_selections4[index];
                          });
                        },
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
                      ToggleButtons(
                        color: navigationbarcolor,
                        borderColor: scaffoldbgcolor,
                        selectedColor: navigationbariconcolor,
                        selectedBorderColor: navigationbarcolor,
                        renderBorder: false,
                        fillColor: scaffoldbgcolor,
                        children: <Widget> [
                          Icon(Icons.favorite),
                        ],
                        isSelected: _selections5,
                        onPressed: (int index) {
                          setState(() {
                            _selections5[index] = !_selections5[index];
                          });
                        },
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
                      ToggleButtons(
                        color: navigationbarcolor,
                        borderColor: scaffoldbgcolor,
                        selectedColor: navigationbariconcolor,
                        selectedBorderColor: navigationbarcolor,
                        renderBorder: false,
                        fillColor: scaffoldbgcolor,
                        children: <Widget> [
                          Icon(Icons.favorite),
                        ],
                        isSelected: _selections6,
                        onPressed: (int index) {
                          setState(() {
                            _selections6[index] = !_selections6[index];
                          });
                        },
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
