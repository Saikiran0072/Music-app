import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:musicappp/Downloads.dart';
import 'package:musicappp/favorites.dart';
import 'package:musicappp/loginpage.dart';
import 'package:musicappp/profilepage.dart';
import 'package:musicappp/savedplaylist.dart';

void main() {
  runApp(MaterialApp(
    home: Options(),
  ));
}
class Options extends StatelessWidget {
  const Options({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 30.0,top: 40.0),
                height: 70.0,
                width: 70.0,
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
              Column(

                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30.0,top: 40.0),
                    child: Text('Suman Mondal',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,

                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 0.0),
                    child: Text('Designer,India',
                      style: TextStyle(
                        fontSize: 14.0,
                      ),

                    ),
                  ),
                ],
              ),

            ],
          ),
          SizedBox(height: 30.0,),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 30.0),
                height: 60,
                width: 60,
                child: Neumorphic(

                  child: IconButton(

                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Profilepage()));} ,
                    color: Colors.white,
                    icon: const Icon(Icons.edit),



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
                margin: EdgeInsets.only(left: 30.0),
                child: Text('Edit Profile',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,

                  ),
                ),
              ),


            ],
          ),
          SizedBox(height: 30.0,),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 30.0),
                height: 60,
                width: 60,
                child: Neumorphic(

                  child: IconButton(

                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Playlist()));} ,
                    color: Colors.lightBlueAccent,
                    icon: const Icon(Icons.headset),



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
                margin: EdgeInsets.only(left: 30.0),
                child: Text('Add To Playlist',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,

                  ),
                ),
              ),

            ],
          ),
          SizedBox(height: 30.0,),

          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 30.0),
                height: 60,
                width: 60,
                child: Neumorphic(

                  child: IconButton(

                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Favorites()));} ,
                    color: Colors.red,
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
                margin: EdgeInsets.only(left: 30.0),
                child: Text('Favorite',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,

                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30.0,),

          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 30.0),
                height: 60,
                width: 60,
                child: Neumorphic(

                  child: IconButton(

                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Downloads()));} ,
                    color: Colors.green,
                    icon: const Icon(Icons.download),



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
                margin: EdgeInsets.only(left: 30.0),
                child: Text('Offline Downloads',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,

                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30.0,),

          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 30.0),
                height: 60,
                width: 60,
                child: Neumorphic(

                  child: IconButton(

                    onPressed: () {} ,
                    color: Colors.green,
                    icon: const Icon(Icons.share),



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
                margin: EdgeInsets.only(left: 30.0),
                child: Text('Share your Profile',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,

                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30.0,),



            Container(
              margin: EdgeInsets.only(left: 30.0),

              child: Neumorphic(
                child: RaisedButton(
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Mainpage()));},
                  child: Text('Log Out',
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



        ],
      ),




          

      );

  }
}

