import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:musicappp/Library.dart';
import 'package:musicappp/Mainpage.dart';
import 'package:musicappp/catogory.dart';
import 'package:musicappp/favorites.dart';
import 'package:musicappp/savedplaylist.dart';





class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Mainpagee()));
          },
          icon: Icon(Icons.arrow_back_ios_rounded),
        ),
        title: Text('Categories'),
        centerTitle: true,
        backgroundColor: Colors.cyan,

      ),

//search bar

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 20, 50, 0),
          child: Column(
            children:<Widget> [
              Neumorphic(
                child: Container(
                  height: 50,
                  width: 350,
                  color: Colors.white,
                  child: TextField(decoration: InputDecoration(
                      icon: Icon(Icons.search, color: Colors.black54,),
                      suffixIcon: Icon(Icons.mic, color: Colors.black54),
                      hintText: 'Search for ...',
                      hintStyle: TextStyle(
                          fontSize:20
                      ),

                      fillColor: Colors.white,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      filled: true,
                      border: UnderlineInputBorder(),
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      )

                  ),
                  ),
                ),
                style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(50)),
                    depth: -8,
                    lightSource: LightSource.topLeft,
                    color: Colors.grey
                ),
              ),
              SizedBox(height: 30,),

//containers
              Column(
                children:<Widget> [
                  Container(
                      width: 300,
                      height: 90,
                      color: Colors.cyan,

                      child: Stack(
                        children:<Widget> [

                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Neumorphic(
                              child: Container(
                                  height: 70,
                                  width: 300,
                                  color: Colors.cyan,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(120, 10, 30, 5),
                                    child: FlatButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Category()));
                                      },
                                      child: Column(

                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          Text('The Party Track',style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold
                                          ),
                                          ),
                                          Text('10k songs', style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white
                                          ),)
                                        ],
                                      ),
                                    ),
                                  )
                              ),
                              style: NeumorphicStyle(
                                  shape: NeumorphicShape.flat,
                                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                                  depth: 5,
                                  lightSource: LightSource.topLeft,
                                  color: Colors.black
                              ),
                            ),
                          ),
                          Positioned(
                              top:00 ,
                              left: 15,
                              child: Container(
                                width: 75,
                                height: 75,
                                decoration: new BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  image: new DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage('assets/4.png')) ,
                                  borderRadius: BorderRadius.circular(20),

                                ),
                              )),

                        ],
                      )
                  ),
                  SizedBox(height: 10,),
                  Container(
                      width: 300,
                      height: 90,
                      color: Colors.cyan,

                      child: Stack(
                        children:<Widget> [

                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Neumorphic(
                              child: Container(
                                  height: 70,
                                  width: 300,
                                  color: Colors.cyan,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(120, 10, 30, 5),
                                    child: FlatButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Category()));
                                      },
                                      child: Column(

                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          Text('Dance Track',style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold
                                          ),
                                          ),
                                          Text('10k songs', style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white
                                          ),)
                                        ],
                                      ),
                                    ),
                                  )
                              ),
                              style: NeumorphicStyle(
                                  shape: NeumorphicShape.flat,
                                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                                  depth: 5,
                                  lightSource: LightSource.topLeft,
                                  color: Colors.black
                              ),
                            ),
                          ),
                          Positioned(
                              top:00 ,
                              left: 15,
                              child: Container(
                                width: 75,
                                height: 75,
                                decoration: new BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  image: new DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage('assets/4.png')) ,
                                  borderRadius: BorderRadius.circular(20),

                                ),
                              )),

                        ],
                      )
                  ),
                  SizedBox(height: 10,),
                  Container(
                      width: 300,
                      height: 90,
                      color: Colors.cyan,

                      child: Stack(
                        children:<Widget> [

                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Neumorphic(
                              child: Container(
                                  height: 70,
                                  width: 300,
                                  color: Colors.cyan,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(120, 10, 30, 5),
                                    child: FlatButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Category()));
                                      },
                                      child: Column(

                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          Text('Function Track',style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold
                                          ),
                                          ),
                                          Text('10k songs', style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white
                                          ),)
                                        ],
                                      ),
                                    ),
                                  )
                              ),
                              style: NeumorphicStyle(
                                  shape: NeumorphicShape.flat,
                                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                                  depth: 5,
                                  lightSource: LightSource.topLeft,
                                  color: Colors.black
                              ),
                            ),
                          ),
                          Positioned(
                              top:00 ,
                              left: 15,
                              child: Container(
                                width: 75,
                                height: 75,
                                decoration: new BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  image: new DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage('assets/4.png')) ,
                                  borderRadius: BorderRadius.circular(20),

                                ),
                              )),

                        ],
                      )
                  ),
                  SizedBox(height: 10,),
                  Container(
                      width: 300,
                      height: 90,
                      color: Colors.cyan,

                      child: Stack(
                        children:<Widget> [

                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Neumorphic(
                              child: Container(
                                  height: 70,
                                  width: 300,
                                  color: Colors.cyan,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(120, 10, 30, 5),
                                    child: FlatButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Category()));
                                      },
                                      child: Column(

                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          Text('Disco Track',style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold
                                          ),
                                          ),
                                          Text('10k songs', style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white
                                          ),)
                                        ],
                                      ),
                                    ),
                                  )
                              ),
                              style: NeumorphicStyle(
                                  shape: NeumorphicShape.flat,
                                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                                  depth: 5,
                                  lightSource: LightSource.topLeft,
                                  color: Colors.black
                              ),
                            ),
                          ),
                          Positioned(
                              top:00 ,
                              left: 15,
                              child: Container(
                                width: 75,
                                height: 75,
                                decoration: new BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  image: new DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage('assets/4.png')) ,
                                  borderRadius: BorderRadius.circular(20),

                                ),
                              )),

                        ],
                      )
                  ),



                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 110.0),
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


      ),
    );

  }
}