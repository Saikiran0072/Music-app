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
import 'Extract.dart';
import 'ex.dart';
import 'package:provider/provider.dart';
import 'user.dart';


class Artist extends StatefulWidget {
  static const String id = "artistinfo_screen";

  @override
  State<Artist> createState() => _ArtistState();
}

class _ArtistState extends State<Artist> {

  int followers = 0;
  bool _hasBeenPressed = false;
  bool _pressedtext =false;

  Future updateFollow() async{
    http.Response response = await http.post(Uri.parse('http://192.168.0.6/update_follow.php'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body:json.encode({

          "followers": Provider.of<Data>(context,listen: false).followers,
          "ArtistId": Provider.of<Data>(context, listen: false).Album


        }));
    print("success");
    print(response.statusCode);
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
                        Navigator.pushNamed(context, Songlist.id);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_rounded, color: arrowcolor,),
                    ),
                  ),
                  Container(
                      width: 500,
                      height: 150,
                      color: containercolor,
                      padding: EdgeInsets.only(left: 20, bottom: 20),
                      alignment: Alignment.bottomLeft,
                      child:
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(Provider.of<Data>(context).artist_name,
                              style: TextStyle(
                                  fontSize: 35,
                                  color: darkfontcolor
                              ),),
                            Text("${Provider.of<Data>(context).followers.toString()} followers",
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
                        child: MaterialButton(onPressed: () async{
                          setState(() {
                            _hasBeenPressed = !_hasBeenPressed;

                          });
                          setState(() {
                            _pressedtext = !_pressedtext;
                          });
                          setState(() {
                            if(_hasBeenPressed){
                              Provider.of<Data>(context, listen: false).followers++;
                            }
                            else{
                              Provider.of<Data>(context, listen: false).followers--;
                            }

                          });
                          await updateFollow();
                        },
                          child: _pressedtext ? Text("FOLLOWING",
                            style: TextStyle(
                              color: lightfontcolor,
                              fontWeight: FontWeight.bold,
                            ),
                          ) : Text("FOLLOW",
                            style: TextStyle(
                              color: lightfontcolor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          color: _hasBeenPressed ? arrowcolor : darkfontcolor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),),
                      ),
                      Icon(Icons.play_circle_fill_outlined, size: 40,
                        color: navigationbariconcolor,)
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
                        child: albums(albumdata: Provider.of<Data>(context).album_datalist)
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

