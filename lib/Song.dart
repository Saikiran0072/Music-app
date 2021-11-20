import 'package:flutter/material.dart';
import 'main.dart';
import 'Mainpage.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'catogory.dart';
import 'package:audioplayers/audioplayers.dart';
import 'colors.dart';

class Song extends StatefulWidget {
  static const String id = "song_screen";

  @override
  _SongState createState() => _SongState();
}
class _SongState extends State<Song> {

  final audioPlayer = AudioPlayer();
  Duration position = new Duration();
  Duration music_length = new Duration();

  bool playing = false;
  @override
  void initState() {
    super.initState();

    audioPlayer.onDurationChanged.listen((d) {
      setState(() {
        music_length = d;
      });
    }) ;
    audioPlayer.onAudioPositionChanged.listen((p) {
      setState(() {
        position =p;
      });
    });
    audioPlayer.onPlayerCompletion.listen((event) {
      setState(() {
        position = Duration(seconds: 0);
        playing = false;
      });
    });
  }

  void playSound(){
    AudioCache cache = new AudioCache(fixedPlayer: audioPlayer);
    cache.play('infinity.mp3');
  }

  void pauseSound(){
    audioPlayer.pause();
  }


  void seekToSec( int sec){
    Duration newPos = Duration(seconds: sec);
    audioPlayer.seek(newPos);
  }

  Widget slider(){
    return Slider.adaptive(
        activeColor: navigationbariconcolor,
        inactiveColor: navigationbarcolor,
        value: position.inSeconds.toDouble(),
        max: music_length.inSeconds.toDouble(),
        onChanged:(value){
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
          onPressed: (){Navigator.pushNamed(context, Mainpagee.id);},
        ),
        backgroundColor: Color(0xFF323F4B),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert_outlined,),
            color: Color(0xFF1CDFCB),
            onPressed: () {Navigator.pushNamed(context, Category.id);}, ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color (0xFF323F4B),
                Color (0xFF323F4B),
              ]
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: 15.0,
          ),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text('Now Playing: ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      )),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 12.0,),
                  child: Text('xxxxxxxxxx',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19.0,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                SizedBox( height: 30.0,),

                Center(
                  child: Container(
                    width: 260.0,
                    height: 260.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage("images/default_img.jpg"),
                      ),
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 18.0,),

                Center(
                  child: Column(
                    children: [
                      Text('Infinity',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text('One Direction',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 30.0,),

                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF52606D),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        topLeft: Radius.circular(30.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        slider(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("${position.inMinutes}:${position.inSeconds.remainder(60).toString().padLeft(2,"0")}",style: TextStyle(
                                color: Colors.white
                              ),),
                              Text("${music_length.inMinutes}:${position.inSeconds.remainder(60).toString().padLeft(2,"0")}",style: TextStyle(
                                  color: Colors.white
                              ),),
                            ],
                          ),
                        ),
                        SizedBox(height: 30,),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF323F4B),
                                  ),
                                  child: IconButton(
                                    iconSize: 40.0,
                                    color: Color(0xFF1CDFCB),
                                    onPressed: (){},
                                    icon: Icon(
                                      Icons.repeat,
                                    ),),
                                ),
                              ),
                              SizedBox(
                                width:15,),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF323F4B),
                                  ),
                                  child: IconButton(
                                    iconSize: 40.0,
                                    color: Color(0xFF1CDFCB),
                                    onPressed: (){},
                                    icon: Icon(
                                      Icons.skip_previous,
                                    ),),
                                ),
                              ),
                              SizedBox(
                                width:15,),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFF323F4B),
                                ),
                                child: IconButton(
                                  iconSize: 62.0,
                                  color: Color(0xFF1CDFCB),
                                  onPressed: (){
                                    if(!playing){
                                      setState((){
                                        playSound();
                                        playing =true;
                                      });
                                    }else{
                                      setState(() {
                                        pauseSound();
                                        playing =false;
                                      });
                                    }
                                  },
                                  icon: Icon(playing?Icons.pause:Icons.play_arrow
                                  ),),
                              ),
                              SizedBox(
                                width:15,),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF323F4B),
                                  ),
                                  child:  IconButton(
                                    iconSize: 40.0,
                                    color: Color(0xFF1CDFCB),
                                    onPressed: (){},
                                    icon: Icon(
                                      Icons.skip_next,
                                    ),),
                                ),
                              ),
                              SizedBox(
                                width:15,),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF323F4B),
                                  ),
                                  child:   IconButton(
                                    iconSize: 40.0,
                                    color: Color(0xFF1CDFCB),
                                    onPressed: (){},
                                    icon: Icon(
                                      Icons.shuffle,
                                    ),),

                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),

                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

