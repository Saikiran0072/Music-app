import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'Library.dart';
import 'Mainpage.dart';
import 'catogory.dart';
import 'favorites.dart';
import 'savedplaylist.dart';
import 'colors.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F2933),
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Mainpagee()));
          },
          icon: Icon(Icons.arrow_back_ios_rounded),
        ),
        title: Text('Categories',),

        centerTitle: true,
        backgroundColor: Color(0xFF323F4B),

      ),


//search bar

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 25, 50, 0),
          child: Column(
            children:<Widget> [
              Neumorphic(
                child: Container(
                  height: 35,
                  width: 350,
                  color: Color(0xFF9AA5B1),
                  child: TextField(decoration: InputDecoration(
                      icon: Icon(Icons.search, color: Color(0xFF323F4B),),
                      hintText: 'Search for ...',
                      hintStyle: TextStyle(
                          fontSize:15,
                          color: Color(0xFFF5F7FA),
                      ),

                      fillColor: Color(0xFF9AA5B1),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      filled: true,
                      border: UnderlineInputBorder(),
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        textBaseline: TextBaseline.alphabetic,
                      )

                  ),
                  ),
                ),
                style: NeumorphicStyle(
                    shape: NeumorphicShape.flat,
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(40)),
                    depth: 0,
                    color: Color(0xFF323F4B),
                ),
              ),
              SizedBox(height: 30,),

//containers
              Column(
                children:<Widget> [
                  Container(
                      width: 300,
                      height: 90,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: containercolor,
                      ),

                      child: Stack(
                        children:<Widget> [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
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
                                        fontWeight: FontWeight.bold,
                                        color: darkfontcolor,
                                    ),
                                    ),
                                    Text('10k songs', style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: darkfontcolor,
                                    ),
                                    ),
                                  ],
                                ),
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
                  SizedBox(height: 15,),
                  Container(
                      width: 300,
                      height: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: containercolor,
                      ),

                      child: Stack(
                        children:<Widget> [

                          Padding(
                            padding: const EdgeInsets.only(top: 20),
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
                                        fontWeight: FontWeight.bold,
                                        color: darkfontcolor,
                                    ),
                                    ),
                                    Text('10k songs', style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: darkfontcolor,
                                    ),)
                                  ],
                                ),
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
                  SizedBox(height: 15,),
                  Container(
                      width: 300,
                      height: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: containercolor,
                      ),


                      child: Stack(
                        children:<Widget> [

                          Padding(
                            padding: const EdgeInsets.only(top: 20),
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
                                        fontWeight: FontWeight.bold,
                                        color: darkfontcolor,

                                    ),
                                    ),
                                    Text('10k songs', style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: darkfontcolor,
                                    ),)
                                  ],
                                ),
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
                  SizedBox(height: 15,),
                  Container(
                      width: 300,
                      height: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: containercolor,
                      ),


                      child: Stack(
                        children:<Widget> [

                          Padding(
                            padding: const EdgeInsets.only(top: 20),
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
                                        fontWeight: FontWeight.bold,
                                        color: darkfontcolor,
                                    ),
                                    ),
                                    Text('10k songs', style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: darkfontcolor,
                                    ),)
                                  ],
                                ),
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
                  SizedBox(height: 15,),
                  Container(
                      width: 300,
                      height: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: containercolor,
                      ),


                      child: Stack(
                        children:<Widget> [

                          Padding(
                            padding: const EdgeInsets.only(top: 20),
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
                                      fontWeight: FontWeight.bold,
                                      color: darkfontcolor,
                                    ),
                                    ),
                                    Text('10k songs', style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: darkfontcolor,
                                    ),)
                                  ],
                                ),
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
                  SizedBox(height: 15,),
                  Container(
                      width: 300,
                      height: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: containercolor,
                      ),


                      child: Stack(
                        children:<Widget> [

                          Padding(
                            padding: const EdgeInsets.only(top: 20),
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
                                      fontWeight: FontWeight.bold,
                                      color: darkfontcolor,
                                    ),
                                    ),
                                    Text('10k songs', style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: darkfontcolor,
                                    ),)
                                  ],
                                ),
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

          SizedBox(height: 40.0,),
          Padding(
             padding: const EdgeInsets.only(top: 30),
                child: Container(
                  color: naviationbarcolor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(

                           height: 60,
                            width: 60,
                            child: IconButton(
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Mainpagee()));} ,
                               color: navigationbariconcolor,
                                icon: const Icon(Icons.home),



                  ),

                ),
                      Container(

                           height: 60,
                           width: 60,
                           child: IconButton(

                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Playlist()));} ,
                              color: navigationbariconcolor,
                              icon: const Icon(Icons.music_note),



                  ),

                ),
                      Container(

                          height: 60,
                          width: 60,
                          child: IconButton(

                             onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Favorites()));} ,
                             color: navigationbariconcolor,
                             icon: const Icon(Icons.favorite),



                  ),

                ),
                      Container(
                          height: 60,
                          width: 60,
                          child: IconButton(

                            onPressed: () {} ,
                            color: navigationbariconcolor,
                            icon: const Icon(Icons.person),



                  ),

                ),

              ],
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
