import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'Library.dart';
import 'Player.dart';
import 'catogories.dart';
import 'favorites.dart';
import 'options.dart';
import 'savedplaylist.dart';
import 'colors.dart';
import 'songslist.dart';




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

      backgroundColor: Color(0xFF1F2933),
      appBar: AppBar(
        backgroundColor:Color(0xFF323F4B),
        title: Text('MUSIC',
          style: TextStyle(
            fontSize: 20.0,
            color: Color(0xFFF5F7FA),
          ),
        ),
        leading: IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Options()));},
          icon: Icon(
            Icons.menu,
            color: Color(0xFF9AA5B1),

          ),),
        actions: [
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('images/default_img.jpg'),
              ),

              border: Border.all(
                width: 4,
                color: Color(0xFF9AA5B1),
              ),
            ),
          ),
        ],
      ),


      body: SingleChildScrollView(
        child: SafeArea(

          child:Column(
            children: [

              SizedBox(height: 30.0,),


              //search bar
              Container(

                child: Neumorphic(
                  margin: EdgeInsets.fromLTRB(30.0, 0  , 30, 0),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.search),
                        hintText:'Search for ...',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF9AA5B1)),
                        ),
                        fillColor: Color(0xFF9AA5B1),
                        filled: true,
                        border: UnderlineInputBorder(
                        ),
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,color: Color(0xFFF5F7FA),
                        )
                    ),
                    cursorColor: Colors.black,
                  ),
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
                    depth: -8,
                    lightSource: LightSource.topLeft,
                    color: Color(0xFF9AA5B1),
                  ),
                ),
              ),
              SizedBox(height: 30.0,),


              //top containers
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(width: 10,),
                    Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 150.0,
                          width: 350.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: containercolor,
                          ),
                          child: Image.asset(''),

                        ),
                      ],
                    ),
                    SizedBox(width:15,),
                    Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 150.0,
                          width: 350.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: containercolor,
                          ),
                          child: Image.asset('assets/4.png'),

                        ),
                      ],
                    ),
                    SizedBox(width:15,),
                    Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 150.0,
                          width: 350.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: containercolor,
                          ),
                          child: Image.asset('assets/4.png'),

                        ),
                      ],
                    ),
                    SizedBox(width:15,),
                  ],
                ),
              ),


              //categories and view all buttons
              Row(
                children: [
                  SizedBox(height: 120.0,),
                  Container(
                    margin: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                    child: Icon(Icons.format_list_bulleted_sharp,
                      color: Color(0xFF9AA5B1),

                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text('Categories',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF5F7FA),

                      ),
                    ),
                  ),
                  SizedBox(
                    width:60,
                  ),
                  Container(

                    child:Expanded(

                      child: RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Categories()));},
                        child: Text('View All',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFF5F7FA),), ),
                        color: Color(0xFF52606D),

                        padding: EdgeInsets.only(top:10,bottom: 10),
                      ),
                    ),
                    padding: EdgeInsets.only(left: 40),
                  ),
                ],
              ),


              // genres
              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(width: 10,),
                    Stack(
                      children: [
                        MaterialButton(
                          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Songlist()));},
                          child: Container(
                            padding: EdgeInsets.all(5.0),
                            height: 135.0,
                            width: 120.0,

                            child: Image.asset('images/default_img.jpg',height: 135.0,
                              width: 120.0,),
                          ),
                        ),
                        SizedBox(height: 10),
                        Positioned(
                          left: 25,
                          bottom: 0,
                          child: Container(
                            width: 100.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: lighttextboxcolor,
                            ),
                            padding: EdgeInsets.all(1),
                            child: Text('POP',

                              style: TextStyle(
                                color: lightfontcolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        MaterialButton(
                          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Songlist()));},
                          child: Container(
                            padding: EdgeInsets.all(5),
                            height: 135.0,
                            width: 120.0,
                            child: Image.asset('images/default_img.jpg',height: 135.0,
                              width: 120.0,),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Positioned(
                          left: 25,
                          bottom: 0,
                          child: Container(
                            width: 100.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: lighttextboxcolor,
                            ),
                            padding: EdgeInsets.all(1),
                            child: Text('PARTY',
                              style: TextStyle(
                                color: lightfontcolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                              textAlign: TextAlign.center,
                            ),


                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        MaterialButton(
                          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Songlist()));},
                          child: Container(
                            padding: EdgeInsets.all(5),
                            height: 135.0,
                            width: 120.0,
                            child: Image.asset('images/default_img.jpg',height: 135.0,
                              width: 120.0,),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Positioned(
                          left: 25,
                          bottom: 0,
                          child: Container(
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: lighttextboxcolor,
                            ),
                            padding: EdgeInsets.all(1),
                            child: Text('DANCE',

                              style: TextStyle(
                                color: lightfontcolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                              textAlign: TextAlign.center,

                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        MaterialButton(
                          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Songlist()));},
                          child: Container(
                            padding: EdgeInsets.all(5),
                            height: 135.0,
                            width: 120.0,
                            child: Image.asset('images/default_img.jpg',height: 135.0,
                              width: 120.0,),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Positioned(
                          left: 25,
                          bottom: 0,

                          child: Container(
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: lighttextboxcolor,
                            ),
                            padding: EdgeInsets.all(1),
                            child: Text('HIP-HOP',

                              style: TextStyle(
                                color: lightfontcolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                              textAlign: TextAlign.center,

                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        MaterialButton(
                          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Songlist()));},
                          child: Container(
                            padding: EdgeInsets.all(5),
                            height: 135.0,
                            width: 120.0,
                            child: Image.asset('images/default_img.jpg',height: 135.0,
                              width: 120.0,),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Positioned(
                          left: 25,
                          bottom: 0,

                          child: Container(
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: lighttextboxcolor,
                            ),
                            padding: EdgeInsets.all(1),
                            child: Text('ROCK',

                              style: TextStyle(
                                color: lightfontcolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                              textAlign: TextAlign.center,

                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        MaterialButton(
                          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Songlist()));},
                          child: Container(
                            padding: EdgeInsets.all(5),
                            height: 135.0,
                            width: 120.0,
                            child: Image.asset('images/default_img.jpg',height: 135.0,
                              width: 120.0,),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Positioned(
                          left: 25,
                          bottom: 0,

                          child: Container(
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: lighttextboxcolor,
                            ),
                            padding: EdgeInsets.all(1),
                            child: Text('WORKOUT',

                              style: TextStyle(

                                color: lightfontcolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                              textAlign: TextAlign.center,

                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10,),
                  ],
                ),
              ),


              //playmusic bar(mad love)
              SizedBox(height: 50.0,),
              Container(
                color: playmusiccolor,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20.0),
                      height: 70.0,
                      width: 50.0,


                      decoration: BoxDecoration(
                        shape: BoxShape.circle,

                        image: DecorationImage(
                          fit: BoxFit.cover,

                          image: AssetImage('images/default_img.jpg',),
                        ),

                        border: Border.all(
                          width: 4,
                          color: Color(0xFF9AA5B1),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: TextButton(
                        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Song()));},
                        child: Text('Infinity',
                          style: TextStyle(

                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFF5F7FA),
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.only(left: 70.0),
                      child: Icon(Icons.arrow_left,color: Color(0xFF9AA5B1),),
                    ),
                    ),
                    Expanded(child:
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Icon(Icons.pause,color: Color(0xFF9AA5B1),),
                    ),
                    ),

                    Expanded(child: Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Icon(Icons.arrow_right,color: Color(0xFF9AA5B1),),
                    ),),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Icon(Icons.close,color: Color(0xFF9AA5B1),),
                    ),),

                  ],
                ),


              ),


              //navigation bar
              SizedBox(height: 32.0,),
              Container(
                color: containercolor,
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


            ],
          ),
        ),
      ),
    );

  }
}
