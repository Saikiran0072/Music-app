import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:musicappp/Library.dart';
import 'package:musicappp/Player.dart';
import 'package:musicappp/catogories.dart';
import 'package:musicappp/favorites.dart';
import 'package:musicappp/options.dart';
import 'package:musicappp/savedplaylist.dart';

void main() {
  runApp(MaterialApp(
    home: Mainpagee(),
  ));
}
class Mainpagee extends StatelessWidget {
  const Mainpagee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        backgroundColor:Colors.cyan,
        title: Text('MUSIC'),
        leading: IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Options()));},
          icon: Icon(
            Icons.menu,

          ),
        ),
        actions: [
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/5.jpg'),
              ),

              border: Border.all(
                width: 4,
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
            ),
          ),


        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(height: 30.0,),
        Container(


        child: Neumorphic(

        margin: EdgeInsets.fromLTRB(30.0, 0  , 30, 0),
        child: TextField(
          decoration: InputDecoration(

          icon: Icon(Icons.search),
            hintText:'Search for ...',
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
            ),
            fillColor: Colors.white,
            filled: true,
            border: UnderlineInputBorder(
            ),
            labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,color: Colors.black
            )
        ),
          cursorColor: Colors.black,


        ),
        style: NeumorphicStyle(
            shape: NeumorphicShape.concave,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
            depth: -8,
            lightSource: LightSource.topLeft,
            color: Colors.white,
        ),

    ),

    ),
            SizedBox(height: 50.0,),
            Center(
              child: Container(
                height: 150.0,
                width: 300.0,
                child: Neumorphic(
                child: Image.asset('assets/4.png'),

                ),
                ),
              ),
            Row(
              children: [
                SizedBox(height: 90.0,),
                Container(
                  margin: EdgeInsets.fromLTRB(60.0, 0.0, 0.0, 0.0),
                  child: Icon(Icons.format_list_bulleted_sharp,

                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 30.0),
                  child: Text('Categories',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,

                  ),
                  ),
                ),
                Container(

                  padding: EdgeInsets.only(left: 160.0),
                  child: Neumorphic(
                    child: RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Categories()));},
                      child: Text('View All'),
                      color: Colors.cyan,
                    ),
                    style: NeumorphicStyle(


                      depth: 8,

                      color: Colors.cyan,
                      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               Stack(
                 children: [
              Container(
              height: 150.0,
              width: 100.0,
              child: Neumorphic(
                  child: Image.asset('assets/4.png'),

              ),
            ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: 100.0,

                   margin: EdgeInsets.only(left: 13.0),
                    child: Neumorphic(
                      child: Text(' Wedding ',
                        style: TextStyle(
                          color: Colors.brown,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),

                      ),
                      style: NeumorphicStyle(


                        depth: 8,

                        color: Colors.white,
                        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
                      ),
                    ),


                ),
                ),
        ],
               ),
                Stack(
                  children: [
                    Container(
                      height: 150.0,
                      width: 100.0,
                      child: Neumorphic(
                        child: Image.asset('assets/4.png'),

                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: 100.0,

                        margin: EdgeInsets.only(left: 13.0),
                        child: Neumorphic(
                          child: Text(' Party  ',
                            style: TextStyle(
                              color: Colors.brown,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),

                          ),
                          style: NeumorphicStyle(


                            depth: 8,

                            color: Colors.white,
                            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
                          ),
                        ),


                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height: 150.0,
                      width: 100.0,
                      child: Neumorphic(
                        child: Image.asset('assets/4.png'),

                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: 100,

                        margin: EdgeInsets.only(left: 13.0),
                        child: Neumorphic(
                          child: Text(' Dance  ',
                            style: TextStyle(
                              color: Colors.brown,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),

                          ),
                          style: NeumorphicStyle(


                            depth: 8,

                            color: Colors.white,
                            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
                          ),
                        ),


                      ),
                    ),
                  ],
                ),



              ],

            ),
            SizedBox(height: 40.0,),

            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 50.0),
                  child: Text('More Music',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,

                  ),),
                ),
                Container(
                  margin: EdgeInsets.only(left:250.0),
                  height: 50,
                  width: 50,
                  child: Neumorphic(

                    child: IconButton(

                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Library()));} ,
                      color: Colors.white,
                      icon: const Icon(Icons.add),



                    ),
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(50)),
                        depth: 8,
                        lightSource: LightSource.topLeft,
                        color: Colors.cyan
                    ),


                  ),

                )

              ],
            ),
            Container(

              child: Neumorphic(
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20.0),

                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/5.jpg'),
                      ),

                      border: Border.all(
                        width: 4,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: TextButton(
                      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Player()));},
                      child: Text('Mad Love ',
                        style: TextStyle(

                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),


                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 120.0),
                    child: Icon(Icons.arrow_left,color: Colors.white,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Icon(Icons.pause,color: Colors.white,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Icon(Icons.arrow_right,color: Colors.white,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80.0),
                    child: Icon(Icons.close,color: Colors.white,),
                  ),






                ],
              ),
                style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(50)),
                    depth: 8,
                    lightSource: LightSource.topLeft,
                    color: Colors.cyan
                ),
              ),


            ),

            Container(
              child: Neumorphic(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(

                      height: 60,
                      width: 60,
                      child: Neumorphic(

                        child: IconButton(

                          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Mainpagee()));} ,
                          color: Colors.white,
                          icon: const Icon(Icons.home),



                        ),
                        style: NeumorphicStyle(
                            shape: NeumorphicShape.concave,
                            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(50)),
                            depth: 8,
                            lightSource: LightSource.topLeft,
                            color: Colors.cyan
                        ),


                      ),

                    ),
                    Container(

                      height: 60,
                      width: 60,
                      child: Neumorphic(

                        child: IconButton(

                          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Playlist()));} ,
                          color: Colors.white,
                          icon: const Icon(Icons.music_note),



                        ),
                        style: NeumorphicStyle(
                            shape: NeumorphicShape.concave,
                            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(50)),
                            depth: 8,
                            lightSource: LightSource.topLeft,
                            color: Colors.cyan
                        ),


                      ),

                    ),
                    Container(

                      height: 60,
                      width: 60,
                      child: Neumorphic(

                        child: IconButton(

                          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Favorites()));} ,
                          color: Colors.white,
                          icon: const Icon(Icons.favorite),



                        ),
                        style: NeumorphicStyle(
                            shape: NeumorphicShape.concave,
                            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(50)),
                            depth: 8,
                            lightSource: LightSource.topLeft,
                            color: Colors.cyan
                        ),


                      ),

                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20.0),
                      height: 60,
                      width: 60,
                      child: Neumorphic(

                        child: IconButton(

                          onPressed: () {} ,
                          color: Colors.white,
                          icon: const Icon(Icons.person),



                        ),
                        style: NeumorphicStyle(
                            shape: NeumorphicShape.concave,
                            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(50)),
                            depth: 8,
                            lightSource: LightSource.topLeft,
                            color: Colors.cyan
                        ),


                      ),

                    ),

                  ],
                ),
                style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(50)),
                    depth: 8,
                    lightSource: LightSource.topLeft,
                    color: Colors.cyan
                ),
              ),

            ),




          ],


          ),
      ),
      );

  }
}
