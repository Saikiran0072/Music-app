import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:musicappp/Downloads.dart';
import 'package:musicappp/Mainpage.dart';
import 'package:musicappp/favorites.dart';
import 'package:musicappp/loginpage.dart';
import 'package:musicappp/profilepage.dart';
import 'package:musicappp/savedplaylist.dart';
import 'package:musicappp/colors.dart';

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
      backgroundColor: Color(0xFF3E4C59),
      body:



      Column(

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
                    child: Text('User Name',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: darkfontcolor,

                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 0.0),
                    child: Text('........',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: darkfontcolor,
                      ),

                    ),
                  ),
                ],
              ),
              SizedBox(width:100),
              Container(
                  child:IconButton(

                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Mainpagee()));},
                    color: Colors.white,
                    icon: const Icon(Icons.close),
                  ))

            ],
          ),
          SizedBox(height: 30.0,),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 30.0),
                height: 60,
                width: 60,
                child: IconButton(

                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Profilepage()));} ,
                  color: navigationbariconcolor,
                  icon: const Icon(Icons.edit),



                ),

              ),
              Container(
                margin: EdgeInsets.only(left: 30.0),

                child: Text('Edit Profile',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: darkfontcolor,

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
                child: IconButton(

                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Playlist()));} ,
                  color: navigationbariconcolor,
                  icon: const Icon(Icons.headset),



                ),

              ),
              Container(
                margin: EdgeInsets.only(left: 30.0),
                child: Text('Library',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: darkfontcolor,

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
                child: IconButton(

                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Favorites()));} ,
                  color: navigationbariconcolor,
                  icon: const Icon(Icons.favorite),



                ),

              ),
              Container(
                margin: EdgeInsets.only(left: 30.0),
                child: Text('Favorite',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: darkfontcolor,

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
                child: IconButton(

                  onPressed: () {} ,
                  color: navigationbariconcolor,
                  icon: const Icon(Icons.share),



                ),

              ),
              Container(
                margin: EdgeInsets.only(left: 30.0),
                child: Text('Share your Profile',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: darkfontcolor,

                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30.0,),



            Container(height: 40,
              width: 160,
              margin: EdgeInsets.only(left: 30.0),


                child: RaisedButton(
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Mainpage()));},
                  child: Text('Log Out',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: darkfontcolor,

                      )
                  ),
                  color: containercolor,



                ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),

              ),

                ),






        ],
      ),





          

      );

  }
}

