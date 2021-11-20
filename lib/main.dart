import 'package:e_commerce/Addsong.dart';
import 'package:e_commerce/ArtistInfo.dart';
import 'package:e_commerce/Extract.dart';
import 'package:e_commerce/catogories.dart';
import 'package:e_commerce/profilepage.dart';
import 'catogory.dart';
import 'favorites.dart';
import 'package:e_commerce/Library.dart';
import 'loginpage.dart';
import 'signuppage.dart';
import 'options.dart';
import 'playlist.dart';
import 'package:e_commerce/PlaylistInfo.dart';
import 'savedplaylist.dart';
import 'songslist.dart';
import 'package:e_commerce/Song.dart';
import 'package:e_commerce/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';
import '2nd page.dart';
import 'package:e_commerce/Mainpage.dart';
import 'user.dart';

void main() async{
  runApp(MaterialApp(
    home: MyApp(),
  ));
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
        ChangeNotifierProvider(
        create: (context) => Data()),
        ],
    child: MaterialApp(
    initialRoute: Home.id,
    routes: {
    Home.id:(context) => Home(),
    Login.id: (context) => Login(),
    Addsong.id: (context) => Addsong(),
    Artist.id: (context) => Artist(),
    Categories.id : (context) => Categories(),
    Category.id: (context) => Category(),
    Favorites.id : (context) => Favorites(),
    Library.id :(context) => Library(),
    Mainpagee.id:(context) => Mainpagee(),
    Mainpage.id: (context) => Mainpage(),
    Options.id: (context) => Options(),
    Createplaylist.id: (context) => Createplaylist(),
    PlaylistInfo.id: (context) => PlaylistInfo(),
    Profilepage.id: (context) => Profilepage(),
    Playlist.id: (context) => Playlist(),
    Song.id: (context) => Song(),
    Signuppage.id: (context) => Signuppage(),
    Songlist.id: (context) => Songlist(),

    },
    ));
  }
}

class Home extends StatefulWidget {
  static const String id = "Main_screen";

  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
            return Scaffold(
              backgroundColor: scaffoldbgcolor,

              body: SafeArea(
                child: Expanded(
                  child: Column(
                    children: [
                      SizedBox(height: 100.0,),
                      Center(
                        child: Container(
                          height: 300.0,
                          width: 300.0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset('images/final_logo_mainpage.jpeg',
                              height:200.0 ,
                              width: 300.0,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),



                      Column(
                        children: <Widget>[
                          SizedBox(height: 50.0,),
                          Center(
                            child: IconButton(

                                icon: Icon(Icons.music_note_outlined, color: arrowcolor, size: 30,),
                                onPressed: () async {
                                    Navigator.pushNamed(context, Login.id);
                                  }

                            ),
                          ),
                          Container(
                            child: Text('Welcome to SHUFFLE',
                              style:  TextStyle(
                                color: arrowcolor,
                                fontSize: 10,
                                fontStyle: FontStyle.italic,
                              ),

                            ),
                          ),


                        ],
                      ),
                    ],
                  ),
                ),
              ),

            );
          }





  }









