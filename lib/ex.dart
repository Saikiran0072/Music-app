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
              child: buildSong(image: "images/default_img.jpg", song_name: songdata[i]['songname'], artist_names: albumiddata[i]["name"], artist_id: albumiddata[i]["ArtistId"],followers: followdata[i]["followers"],),
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
