import 'package:flutter/material.dart';
import 'package:e_commerce/Extract.dart';
import 'user.dart';
import 'package:provider/provider.dart';
import 'Extract.dart';


//song
class msgTxt extends StatelessWidget {
  List songdata;
  List albumiddata;
  List followdata;
  msgTxt({
    required this.songdata,
    required this.albumiddata,
    required this.followdata
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LimitedBox(
          maxHeight: 500,
          child: ListView.builder(itemCount: songdata.length,itemBuilder: (BuildContext context, int i){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: buildSong(image: "images/default_img.jpg", song_name: songdata[i]['songname'], artist_names: albumiddata[i]["name"], artist_id: albumiddata[i]["ArtistId"],followers: followdata[i]["followers"], likes: songdata[i]["likes_song"],song_id: songdata[i]["SongId"],),
            );
          }),
        ),
      ],
    );
  }
}

//albums
class albums extends StatelessWidget {

  List albumdata;

  albums({
    required this.albumdata,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LimitedBox(
          maxHeight: 500,
          child: ListView.builder(itemCount: albumdata.length,itemBuilder: (BuildContext context, int i){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: buildContainer(image: "images/default_img.jpg", album_name: albumdata[i]['albumname'], ),
            );
          }),
        ),
      ],
    );
  }
}

class Favorite_page extends StatelessWidget {
  List favdata;
  List albumdata;
  List followdata;
  Favorite_page({
    required this.favdata,
    required this.albumdata,
    required this.followdata
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LimitedBox(
          maxHeight: 600,
          child: ListView.builder(itemCount: favdata.length,itemBuilder: (BuildContext context, int i){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Favorite(image: "images/default_img.jpg", song_name: favdata[i]['songname'], artist_names: favdata[i]["artistname"], song_id: favdata[i]["songid"],artist_id: albumdata[i]["ArtistId"],followers: followdata[i]["followers"],),
            );
          }),
        ),
      ],
    );

  }

}

class playlist extends StatelessWidget {
  List playlist_info;
  playlist({
    required this.playlist_info,
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LimitedBox(
          maxHeight: 500,
          child: ListView.builder(itemCount: playlist_info.length,itemBuilder: (BuildContext context, int i){
            return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: createPlaylist(image: "images/default_img.jpg", playlist_name: playlist_info[i]["playlistname"],playlist_id: playlist_info[i]["PlaylistId"],)
            );
          }),
        ),
      ],
    );
  }
}

class recommendedSongs extends StatelessWidget {
  List songdata;
  recommendedSongs({
    required this.songdata,
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LimitedBox(
          maxHeight:650,
          child: ListView.builder(itemCount: songdata.length,itemBuilder: (BuildContext context, int i){
            return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Suggested_song(image: "images/default_img.jpg", song_name: songdata[i]["songname"])
            );
          }),
        ),
      ],
    );
  }
}

class playlistTxt extends StatelessWidget {
  List playlistData;

  playlistTxt({
    required this.playlistData,


  });


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LimitedBox(
          maxHeight: 500,
          child: ListView.builder(itemCount: playlistData.length,itemBuilder: (BuildContext context, int i){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: buildSong(image: "images/default_img.jpg", song_name: playlistData[i]["songname"], artist_names: playlistData[i]["name"], artist_id: playlistData[i]["ArtistId"],followers: playlistData[i]["followers"], likes: playlistData[i]["likes"],song_id: playlistData[i]["SongId"],),
            );
          }),
        ),
      ],
    );
  }
}
