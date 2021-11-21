import 'package:flutter/material.dart';
import 'package:e_commerce/Extract.dart';
import 'user.dart';
import 'package:provider/provider.dart';
import 'Extract.dart';


//song
class msgTxt extends StatelessWidget {
  List songdata;
  msgTxt({
    required this.songdata
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
              child: buildSong(image: "images/default_img.jpg", song_name: songdata[i]['songname'], artist_names: "artists names"),
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
    required this.albumdata
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
              child: buildSong(image: "images/default_img.jpg", song_name: albumdata[i]['albumname'], artist_names: "artists names"),
            );
          }),
        ),
      ],
    );
  }
}
