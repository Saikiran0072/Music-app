import 'package:flutter/material.dart';
import 'main.dart';
import 'Mainpage.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'catogory.dart';
import 'package:audioplayers/audioplayers.dart';
import 'colors.dart';
import 'package:provider/provider.dart';
import 'user.dart';
import 'Extract.dart';

class Song extends StatefulWidget {
  static const String id = "song_screen";

  @override
  _SongState createState() => _SongState();
}
class _SongState extends State<Song> {


  Duration position = new Duration();
  Duration music_length = new Duration();

  bool playing = false;

  @override
  void initState() {
    super.initState();

    Provider
        .of<Data>(context, listen: false)
        .audioPlayer
        .onDurationChanged
        .listen((d) {
      setState(() {
        music_length = d;
      });
    });
    Provider
        .of<Data>(context, listen: false)
        .audioPlayer
        .onAudioPositionChanged
        .listen((p) {
      setState(() {
        position = p;
      });
    });
    Provider
        .of<Data>(context, listen: false)
        .audioPlayer
        .onPlayerCompletion
        .listen((event) {
      setState(() {
        position = Duration(seconds: 0);
        playing = false;
      });
    });
  }



  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    Provider
        .of<Data>(context, listen: false)
        .audioPlayer
        .seek(newPos);
  }

  Widget slider() {
    return Slider.adaptive(
        activeColor: navigationbariconcolor,
        inactiveColor: navigationbarcolor,
        value: position.inSeconds.toDouble(),
        max: music_length.inSeconds.toDouble(),
        onChanged: (value) {
          seekToSec(value.toInt());
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F2933),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,),
          color: Color(0xFF1CDFCB),
          onPressed: () {
            Navigator.pushNamed(context, Mainpagee.id);
          },
        ),
        backgroundColor: Color(0xFF323F4B),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert_outlined,),
            color: Color(0xFF1CDFCB),
            onPressed: () {
              setState(() {
                Provider.of<Data>(context,listen: false).Songname = Provider.of<Data>(context,listen: false).songnames[Provider.of<Data>(context,listen:false ).i];
                Provider.of<Data>(context,listen: false).ArtistName = Provider.of<Data>(context,listen: false).artistnames[Provider.of<Data>(context,listen:false ).i];
                for(int i =0;i<Provider.of<Data>(context,listen: false).id_datalist.length;i++){
                  if(Provider.of<Data>(context,listen: false).id_datalist[i]["name"] == Provider.of<Data>(context,listen: false).ArtistName ){
                    Provider.of<Data>(context,listen: false).Album = Provider.of<Data>(context,listen: false).id_datalist[i]["ArtistId"];
                  }
                }
                Provider.of<Data>(context,listen: false).getfollow();
                for(int i =0;i<Provider.of<Data>(context,listen: false).artist_follow.length;i++){
                  if(Provider.of<Data>(context,listen: false).artist_follow[i]["ArtistId"] == Provider.of<Data>(context,listen: false).Album ){
                    Provider.of<Data>(context,listen: false).Follow = Provider.of<Data>(context,listen: false).artist_follow[i]["followers"];
                  }
                }
                print(Provider.of<Data>(context,listen: false).Album);
                Provider.of<Data>(context,listen: false).getalbumData();
              });
              Navigator.pushNamed(context, Category.id);
            },),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF323F4B),
                Color(0xFF323F4B),
              ]
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: 15.0,
          ),
          child: songPage(playing: playing,
              position: position,
              image: "images/default_img.jpg",
              slider: slider(),
              duration: ""),
        ),
      ),
    );
  }


}
