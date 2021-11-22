import 'package:flutter/material.dart';
import 'colors.dart';
import 'Song.dart';
import 'ArtistInfo.dart';
import 'PlaylistInfo.dart';
import 'songslist.dart';
import 'package:provider/provider.dart';
import 'user.dart';


//create song extracted widget
class buildSong extends StatelessWidget {
  const buildSong({required this.image, required this.song_name, required this.artist_names,required this.artist_id});
  final String image;
  final String song_name;
  final String artist_names;
  final int artist_id;




  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Provider.of<Data>(context, listen: false).Album = artist_id;
        Navigator.pushNamed(context, Song.id);},
      child: Row(
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
                  padding:EdgeInsets.symmetric(vertical: 5),
                  child: Image(
                    image: AssetImage(image),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(song_name, style: TextStyle(fontSize: 15,color: darkfontcolor,),),
                      GestureDetector(onTap: (){Navigator.pushNamed(context, Artist.id);},child: Text(artist_names, style: TextStyle(fontSize: 15, color: darkfontcolor, fontWeight: FontWeight.bold),)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline, color: navigationbariconcolor,size: 25,))),
          Expanded(child: IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_outline, color: navigationbariconcolor,size: 25)))
        ],
      ),
    );
  }
}


//create album extracted widget
class buildContainer extends StatelessWidget {
  const buildContainer({required this.image, required this.album_name,});
  final String image;
  final String album_name;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
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
                image: AssetImage(image),
              ),
            ),
            Expanded(
              child: Container(
                  alignment: Alignment.center,
                  child: Text(album_name, style: TextStyle(fontSize: 15,color: darkfontcolor),)),
            ),
          ],
        ),
      ),
    );
  }
}


//create playlist extracted widget
class buildPlaylist extends StatelessWidget {
  const buildPlaylist({required this.image,required this.playlist_name});
  final String image;
  final String playlist_name;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){Navigator.pushNamed(context, PlaylistInfo.id);},
      child: Row(
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(left: 8),
            height: 80,
            width: 320,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: containercolor),
            child: Row(
              children: [
                Container(
                  padding:EdgeInsets.symmetric(vertical: 5),
                  child: Image(
                    image: AssetImage(image),
                  ),
                ),
                SizedBox(width: 20,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(playlist_name, style: TextStyle(fontSize: 15,color: darkfontcolor),),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


//song suggestions for new playlist extracted widget
class Suggested_song extends StatelessWidget {
  const Suggested_song({required this.image, required this.song_name});
  final String image;
  final String song_name;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      padding: EdgeInsets.only(left: 8),
      height: 80,
      constraints: BoxConstraints(
          maxWidth: double.infinity
      ),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: containercolor),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10.0),
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image),
              ),

              border: Border.all(
                width: 4,
                color: darkfontcolor,
              ),

            ),
          ),
          SizedBox(width: 20,),
          Expanded(
            child: Container(
                alignment: Alignment.centerLeft,
                child: Text(song_name,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: darkfontcolor,
                  ),
                )),
          ),
          IconButton(
            icon: Icon(Icons.add_circle_outline ,color: arrowcolor, ),
            onPressed: () {},
            alignment: Alignment.topRight,
          ),
        ],
      ),
    );
  }
}


//likes extracted widget
class Favorite extends StatelessWidget {

  const Favorite({required this.image, required this.song_name, required this.artist_name});
  final String image;
  final String song_name;
  final String artist_name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget> [
        SizedBox(
            width:20
        ),
        Expanded(
          child: GestureDetector(
            onTap: (){Navigator.pushNamed(context, Song.id);},
            child: Container(
              child: Row(
                children: <Widget> [

                  Expanded(
                    child: Image.asset('images/default_img.jpg',
                      height: 120,
                      width: 120,
                    ),

                  ),
                  Expanded(
                    child: Column(
                      children: <Widget> [
                        Text('song name',
                          style: TextStyle(
                            letterSpacing: 1,
                            color: darkfontcolor,
                            fontStyle: FontStyle.italic,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(height:2,),
                        Text('artist name',
                          style: TextStyle(
                            color: darkfontcolor,
                            fontStyle: FontStyle.italic,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),

                  ),
                ],
              ),
              padding: EdgeInsets.all(20),
              height: 100,
              width: 360,
              decoration: BoxDecoration(
                color: containercolor,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(30),

              ),

            ),
          ),
        ),
        SizedBox(width: 40,),
        IconButton(onPressed: (){}, icon: Icon(Icons.favorite, color: navigationbariconcolor, size: 25,)),
        SizedBox(width: 10,)
      ],
    );
  }
}


//genre extracted widget
class genre extends StatelessWidget {
  final String image;
  final String songgenre;
  genre({
    required this.image, required this.songgenre
  });


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MaterialButton(
          onPressed: (){
            Provider.of<Data>(context,listen: false).Genre=songgenre;
            Navigator.pushNamed(context, Songlist.id);},
          child: Container(
            padding: EdgeInsets.all(5.0),
            height: 135.0,
            width: 120.0,
            child: Image.asset(image,height: 135.0,
              width: 120.0,),
          ),
        ),
        SizedBox(height: 10),
        Positioned(
          left: 25,
          bottom: 0,
          child: Container(
            width: 100.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: lighttextboxcolor,
            ),
            padding: EdgeInsets.all(1),
            child: Text(songgenre,

              style: TextStyle(
                color: lightfontcolor,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
