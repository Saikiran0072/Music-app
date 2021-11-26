import 'dart:convert';
import 'package:e_commerce/Song.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:audioplayers/audioplayers.dart';

class Data extends ChangeNotifier{
  String email = "";
  String fullname = "";
  List data_list = [];
  String genrename='';
  List data_list2= [];
  String songname='';
  int AlbumId=0;
  List album_datalist= [];
  int artistId=0;
  List artist_datalist=[];
  List id_datalist = [];
  List artist_follow = [];
  String artist_name="";
  int followers =0;
  int songid = 0;
  int likes = 0;
  List favList = [];
  List buttonList = [];
  List nextSong = [];
  List prevSong = [];
  List playlistData = [];
  List addingSong = [];
  String playlistname = "";
  int playlistId = 0;
  List selectSong= ["34+35.mp3","infinity.mp3","black swan.mp3","Gimme More.mp3","good 4 u.mp3", "i wanna be your slave.mp3","kiss me more.mp3","sweat.mp3","sweet melody.mp3"];
  List songnames = ["34+35","Infinity","Black Swan","Gimme More","Good 4 u","I wanna be your slave","Kiss me more","Sweat","Sweet melody"];
  List artistnames = ["Ariana Grande","One Direction","BTS","Britney Spears","Olivia Rodrigo","Maneskin","Doja Cat","Zayn","Little Mix"];
  String chosenList="";
  String playsong = "";
  String image = "";
  List images = ["images/34+35.jpg", "images/infinity.png","images/blackswan.jpg","images/gimme more.png","images/good 4 u.png","images/i wanna be your slave.png","images/kiss me more.jpg""images/sweat.jpg","images/sweet melody.jpg"];
  bool addtoplaylist = false;
  int i = 0;
  final audioPlayer = AudioPlayer();

  //login data
  Future getData() async{
    http.Response response = await http.get(Uri.parse('http://192.168.0.6/select.php'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    data_list = jsonDecode(response.body);
    for(int i =0;i<data_list.length;i++){
      if(data_list[i]["Email"] == Email){
        email = data_list[i]["Email"];
        fullname = data_list[i]["FullName"];
      }
    }
    notifyListeners();
    print(response.statusCode);
    print(email);
    print(fullname);
  }


  String get Email => email;
  set Email(String data){
    email = data;
    notifyListeners();
  }
  //song data
  Future getsongData() async{
    http.Response response = await http.get(Uri.parse('http://192.168.0.6/songdatasample.php'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    data_list2 = jsonDecode(response.body);
    print(data_list2.length);
    print(response.statusCode);

  }
  String get Genre => genrename;
  set Genre(String data){
    genrename = data;
    notifyListeners();
  }

  String get Image => image;
  set Image(String data){
    image = data;
    notifyListeners();
  }

  //artist data
  Future getartistData() async{
    http.Response response = await http.get(Uri.parse('http://192.168.0.6/artistdatasample.php'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    artist_datalist = jsonDecode(response.body);
    notifyListeners();
    print(response.statusCode);
  }

  String get ArtistName => artist_name;
  set ArtistName(String data){
    artist_name = data;
    notifyListeners();
  }

  int get Follow => followers;
  set Follow(int data){
    followers = data;
    notifyListeners();
  }


  int get Album => artistId;
  set Album(int data){
    artistId = data;
    notifyListeners();
  }

  bool get Add => addtoplaylist;
  set Add(bool data){
    addtoplaylist = data;
    notifyListeners();
  }

  int get Songid => songid;
  set Songid(int data){
    songid = data;
    notifyListeners();
  }

  String get Songname => songname;
  set Songname(String data){
    songname = data;
    notifyListeners();
  }

  String get Playlistname => playlistname;
  set Playlistname(String data){
    playlistname = data;
    notifyListeners();
  }

  int get PlaylistId => playlistId;
  set PlaylistId(int data){
    playlistId = data;
    notifyListeners();
  }

  int get Likes => likes;
  set Likes(int data){
    likes = data;
    notifyListeners();
  }

  int get Var=> i;
  set Var(int data){
    i = data;
    notifyListeners();
  }
//album data
  Future getalbumData() async{
    http.Response response = await http.post(Uri.parse('http://192.168.0.6/albumdatasample.php'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode({
        "ArtistId": Album
      })
    );
    album_datalist = jsonDecode(response.body);
    print(Album);
    notifyListeners();
    print(response.statusCode);
  }

  Future checkData() async{
    http.Response response = await http.get(Uri.parse('http://192.168.0.6/check.php'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    id_datalist = jsonDecode(response.body);

    notifyListeners();
    print(response.statusCode);
    print(email);
    print(fullname);
  }

  Future getfollow() async{
    http.Response response = await http.get(Uri.parse('http://192.168.0.6/follow.php'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    artist_follow = jsonDecode(response.body);

    notifyListeners();
    print(response.statusCode);
    print(artist_follow);
  }

  Future updateLikes() async{
    http.Response response = await http.post(Uri.parse('http://192.168.0.6/update_likes.php'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body:json.encode({

          "likes_song": Likes,
          "SongId": Songid


        }));
    print("db likes updated");
    print("success");
    print(response.statusCode);
  }
  Future getPlaylistInfo() async{
    http.Response response = await http.get(Uri.parse('http://192.168.0.6/selectPlaylist.php'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    playlistData = jsonDecode(response.body);

    notifyListeners();
    print(response.statusCode);
  }

  Future getAddData() async{
    http.Response response = await http.get(Uri.parse('http://192.168.0.6/ppdata.php'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    print("woooo");
    addingSong = jsonDecode(response.body);
    print(addingSong);
    notifyListeners();
    print(response.statusCode);
  }

  Future playlistSongs() async{
    http.Response response = await http.post(Uri.parse('http://192.168.0.6/playlistsongs.php'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body:json.encode({
          "SongId":Songid,
          "PlaylistId": PlaylistId
        }));
    print(response.statusCode);
  }


  Future favSong() async{
    favList += [{"songname" : Songname, "artistname" : ArtistName, "songid": Songid, "artist_id": artistId}];
  }
  Future likeButton() async{
    if(!buttonList.contains(Songid)){
    buttonList += [Songid];
    }

  }
  Future unlikeButton(int songid) async{
    for(int i =0;i<buttonList.length;i++){
      if(buttonList[i] == songid){
        buttonList.removeAt(i);
      }
    }
  }

  Future unfavSong(String songname) async{
    for(int i =0;i<favList.length;i++){
      if(favList[i]["songname"] == songname){
        favList.removeAt(i);
      }
    }
  }
  String get Playsong => playsong;
  set Playsong(String data){
    playsong = data;
    notifyListeners();
  }

  void playSound(String song) {
    AudioCache cache = new AudioCache(fixedPlayer: audioPlayer);
    cache.play(song);
  }

  void pauseSound() {audioPlayer.pause();}

  Future selectMusic(String song) async {
    if(!chosenList.contains(song)){
      chosenList = song;
    }

  }
  Future unselectMusic(String song) async {
    for(int i =0;i<selectSong.length;i++){
      if(selectSong[i] == song){
        chosenList = "";
      }
    }
  }


}


