import 'package:e_commerce/ArtistInfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:e_commerce/Downloads.dart';
import 'favorites.dart';
import 'package:e_commerce/savedplaylist.dart';
import 'catogories.dart';
import 'colors.dart';





class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldbgcolor ,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Categories())); },
          icon: Icon(Icons.arrow_back_ios_rounded),
        ),
        centerTitle: true,
        backgroundColor: appbarcolor,
      ),
      body:
      SingleChildScrollView(
        child: Column(
            children:<Widget> [
              Padding(
                padding: EdgeInsets.only(top: 20.0,),
                child: Container(
                  height: 300,
                  width: 250,
                  decoration: BoxDecoration(

                      image: DecorationImage(
                        image: AssetImage('images/default_img.jpg'),
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),

                ),
              ),
              Column(
                children: [
                  Text('Dance Song ', style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    color: darkfontcolor
                  ),),

                  SizedBox(height: 5,),
                  Text('BTS',style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold, color: darkfontcolor
                  ),

                  ),
                ],
              ) ,
              //boxs
              SizedBox(height: 30,),
              Column(
                children:<Widget> [
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Row(
                      children: [
                        Container(
                          child: IconButton(
                            icon: Icon(Icons.favorite_outline ,color: navigationbariconcolor, ),
                            onPressed: () {  },
                          ),
                        ),
                        SizedBox(width: 30,),
                        Text('Like', style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600, color: darkfontcolor
                        ), )
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Row(
                      children: [
                        Container(
                          child: IconButton(
                            icon: Icon(Icons.album ,color: navigationbariconcolor, ),
                            onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>Artist())); },
                          ),
                        ),
                        SizedBox(width: 30,),
                        Text('View artist', style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600, color: darkfontcolor
                        ), )
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Row(
                      children: [
                        Container(
                          child: IconButton(
                            icon: Icon(Icons.share_outlined ,color: navigationbariconcolor , ),
                            onPressed: () {  },
                          ),
                        ),
                        SizedBox(width: 30,),
                        Text('Share Your Profile', style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600, color: darkfontcolor
                        ), )
                      ],
                    ),
                  ),

                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Row(
                      children: [
                        Container(
                          child: IconButton(
                            icon: Icon(Icons.headset,color: navigationbariconcolor, ),
                            onPressed: () {  Navigator.push(context, MaterialPageRoute(builder: (context)=>Playlist()));},
                          ),
                        ),
                        SizedBox(width: 30,),
                        Text('Add to Playlist', style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600, color: darkfontcolor
                        ), )
                      ],
                    ),
                  ),


                ],
              ),


            ]
        ),
      ),




    );
  }
}

