import 'dart:ui';
import 'package:e_commerce/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'loginpage.dart';
import 'songslist.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;


class Artist extends StatefulWidget {

  @override
  State<Artist> createState() => _ArtistState();
}

class _ArtistState extends State<Artist> {

  int followers= 0;

  Future senddatatodb() async {
    print('H E L L OOOOOOOOOO');
    http.Response response = await http.post(Uri.parse('http://localhost/insertdata.php'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body:json.encode({

          "Artist_id": 1,
          "followers": followers,


        }));


    print(response.statusCode);
    print(response.body);

  }




  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: scaffoldbgcolor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    color: containercolor,
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Songlist())); },
                      icon: Icon(Icons.arrow_back_ios_rounded, color: arrowcolor,),
                    ),
                  ),
                  Container(
                      width: 500,
                      height: 130,
                      color: containercolor,
                      padding: EdgeInsets.only(left: 20, bottom: 20),
                      alignment: Alignment.bottomLeft,
                      child:
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Artist Name",
                              style: TextStyle(
                                  fontSize: 40,
                                  color: darkfontcolor
                              ),),
                            Text("xxxxx followers",
                              style: TextStyle(
                                fontSize: 18,
                                color: darkfontcolor,
                              ),),
                          ],
                        ),
                      )
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 130),
                        child: MaterialButton(onPressed: (){

                            followers= followers+1;

                            senddatatodb();

                        },
                          child: Text("FOLLOW",
                            style: TextStyle(
                              color: lightfontcolor,
                              fontWeight: FontWeight.bold,
                            ),
                        ), color: arrowcolor,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),),
                      ),
                      Icon(Icons.play_circle_fill_outlined, size: 40, color: navigationbariconcolor,)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.only(left: 25, right: 20, bottom: 30,),
                    alignment: Alignment.topLeft,
                    child: Text("Albums",
                      style: TextStyle(
                        fontSize: 25,
                        color: darkfontcolor,
                        fontWeight: FontWeight.bold,
                      ),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(left: 8),
                            height: 80,
                            width: 250,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: containercolor),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: Image(
                                    image: AssetImage("images/default_img.jpg"),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                      alignment: Alignment.center,
                                      child: Text("album 1", style: TextStyle(fontSize: 15,color: darkfontcolor),)),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(left: 8),
                            height: 80,
                            width: 250,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: containercolor),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: Image(
                                    image: AssetImage("images/default_img.jpg"),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                      alignment: Alignment.center,
                                      child: Text("album 2", style: TextStyle(fontSize: 15,color: darkfontcolor),)),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(left: 8),
                            height: 80,
                            width: 250,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: containercolor),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: Image(
                                    image: AssetImage("images/default_img.jpg"),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                      alignment: Alignment.center,
                                      child: Text("album 3", style: TextStyle(fontSize: 15,color: darkfontcolor),)),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(left: 8),
                            height: 80,
                            width: 250,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: containercolor),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: Image(
                                    image: AssetImage("images/default_img.jpg"),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                      alignment: Alignment.center,
                                      child: Text("album 4", style: TextStyle(fontSize: 15,color: darkfontcolor),)),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(left: 8),
                            height: 80,
                            width: 250,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: containercolor),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: Image(
                                    image: AssetImage("images/default_img.jpg"),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                      alignment: Alignment.center,
                                      child: Text("album 5", style: TextStyle(fontSize: 15,color: darkfontcolor),)),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(left: 8),
                            height: 80,
                            width: 250,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: containercolor),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: Image(
                                    image: AssetImage("images/default_img.jpg"),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                      alignment: Alignment.center,
                                      child: Text("album 6", style: TextStyle(fontSize: 15,color: darkfontcolor),)),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),


                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
