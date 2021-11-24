import 'package:flutter/material.dart';
import 'colors.dart';
import 'Song.dart';
import 'ArtistInfo.dart';
import 'PlaylistInfo.dart';
import 'favorites.dart';
import 'songslist.dart';
import 'package:provider/provider.dart';
import 'user.dart';


//create song extracted widget
class buildSong extends StatefulWidget  {
  const buildSong({required this.image, required this.song_name, required this.artist_names,required this.artist_id, required this.followers, required this.likes, required this.song_id});
  final String image;
  final String song_name;
  final String artist_names;
  final int artist_id;
  final int followers;
  final int likes;
  final int song_id;


  @override
  State<buildSong> createState() => _buildSongState();
}

class _buildSongState extends State<buildSong> with AutomaticKeepAliveClientMixin<buildSong> {

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  bool _isPressed = false;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return GestureDetector(
      onTap: (){
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
                    image: AssetImage(widget.image),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(widget.song_name, style: TextStyle(fontSize: 15,color: darkfontcolor,),),
                      GestureDetector(onTap: (){
                        Provider.of<Data>(context, listen: false).Album = widget.artist_id;
                        Provider.of<Data>(context, listen: false).getalbumData();
                        Provider.of<Data>(context,listen: false).ArtistName = widget.artist_names;
                        Provider.of<Data>(context,listen: false).Follow = widget.followers;
                        Navigator.pushNamed(context, Artist.id);
                        },child: Text(widget.artist_names, style: TextStyle(fontSize: 15, color: darkfontcolor, fontWeight: FontWeight.bold),)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: IconButton(onPressed: (){
            setState(() {
              _isPressed = !_isPressed;
            });
              setState(() {
                if(!Provider.of<Data>(context,listen: false).buttonList.contains(widget.song_id)){
                  print("mingi");
                  Provider.of<Data>(context,listen: false).Likes = 1;
                  Provider.of<Data>(context,listen: false).Songid = widget.song_id;
                  Provider.of<Data>(context,listen: false).likeButton();
                  Provider.of<Data>(context, listen: false).ArtistName = widget.artist_names;
                  Provider.of<Data>(context,listen: false).Songname = widget.song_name;
                  Provider.of<Data>(context,listen: false).favSong();
                }
                else{
                  print("yesss");
                  Provider.of<Data>(context,listen: false).Likes = 0;
                  Provider.of<Data>(context,listen: false).Songid = widget.song_id;
                  Provider.of<Data>(context,listen: false).unlikeButton(widget.song_id);
                  Provider.of<Data>(context,listen: false).unfavSong(widget.song_name);
                }
              });
            Provider.of<Data>(context,listen: false).updateLikes();
            print(Provider.of<Data>(context,listen: false).buttonList.contains(widget.song_id));
            print(Provider.of<Data>(context, listen: false).buttonList);



          }, icon: (Provider.of<Data>(context).buttonList.contains(widget.song_id))?Icon(Icons.favorite, color: navigationbariconcolor,size: 25,): Icon(Icons.favorite_outline, color: navigationbariconcolor, size: 25,))),
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
class Favorite extends StatefulWidget {

  const Favorite({required this.image, required this.song_name, required this.artist_names, required this.song_id, required this.artist_id, required this.followers});
  final String image;
  final String song_name;
  final String artist_names;
  final int song_id;
  final int artist_id;
  final int followers;

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: GestureDetector(
        onTap: (){
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
                      image: AssetImage(widget.image),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(widget.song_name,
                          style: TextStyle(
                            letterSpacing: 1,
                            color: darkfontcolor,
                            fontStyle: FontStyle.italic,
                            fontSize: 15,
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Provider.of<Data>(context, listen: false).Album = widget.artist_id;
                            Provider.of<Data>(context, listen: false).getalbumData();
                            Provider.of<Data>(context,listen: false).ArtistName = widget.artist_names;
                            Provider.of<Data>(context,listen: false).Follow = widget.followers;
                            Navigator.pushNamed(context, Artist.id);
                          },
                          child: Text(widget.artist_names,
                            style: TextStyle(
                              color: darkfontcolor,
                              fontStyle: FontStyle.italic,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: IconButton(onPressed: (){
              setState(() {
                AlertDialog alert = AlertDialog(
                  title: Text("Do you want to unlike this song?"),
                  actions: [
                    MaterialButton(onPressed: (){
                      Provider.of<Data>(context, listen: false).unfavSong(widget.song_name);
                      Provider.of<Data>(context,listen: false).unlikeButton(widget.song_id);
                      print(Provider.of<Data>(context,listen: false).buttonList);
                      Provider.of<Data>(context,listen: false).Likes = 0;
                      Provider.of<Data>(context,listen: false).updateLikes();
                      Navigator.of(context,rootNavigator: true).pop();
                      Navigator.pushNamed(context, Favorites.id);
                    }, child: Text("Yes"),)
                  ],
                );
                showDialog(context: context, builder:  (BuildContext context){
                  return alert;
                });
              });

            }, icon: Icon(Icons.favorite, color: navigationbariconcolor,size: 25,))),
          ],
        ),
      ),
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

class songPage extends StatefulWidget {
  songPage({required this.playing,required this.position, required this.slider, required this.duration, required this.songname, required this.artistname, required this.image});
  late final bool playing;
  final Duration position;
  final Widget slider;
  final String duration;
  final String songname;
  final String artistname;
  final String image;
  late int i = 0;


  @override
  State<songPage> createState() => _songPageState();
}

class _songPageState extends State<songPage> {

  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: Text(widget.songname,
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
                  image: AssetImage(widget.image),
                ),
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 18.0,),

          Center(
            child: Column(
              children: [
                Text(widget.songname,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 5,),
                Text(widget.artistname,
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
                  widget.slider,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${widget.position.inMinutes}:${widget.position.inSeconds.remainder(60).toString().padLeft(2,"0")}",style: TextStyle(
                            color: Colors.white
                        ),),
                        Text(widget.duration,style: TextStyle(
                            color: Colors.white
                        ),),
                      ],
                    ),
                  ),

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
                              setState(() {
                                print(widget.i);
                                print(Provider.of<Data>(context, listen: false).selectSong[widget.i]);
                                if(!Provider.of<Data>(context, listen: false).chosenList.contains(Provider.of<Data>(context, listen: false).selectSong[widget.i])){
                                  setState((){
                                    print("mingi");
                                    Provider.of<Data>(context, listen: false).selectMusic(Provider.of<Data>(context, listen: false).selectSong[widget.i]);
                                    print(Provider.of<Data>(context, listen: false).chosenList);
                                    Provider.of<Data>(context, listen: false).playSound(Provider.of<Data>(context, listen: false).selectSong[widget.i]);
                                  });
                                }else{
                                  setState(() {
                                    print("yess");
                                    Provider.of<Data>(context, listen: false).unselectMusic(Provider.of<Data>(context, listen: false).selectSong[widget.i]);
                                    print(Provider.of<Data>(context, listen: false).chosenList);
                                    Provider.of<Data>(context, listen: false).pauseSound();
                                  });
                                }
                              });

                            },
                            icon: Icon(Provider.of<Data>(context, listen: false).chosenList.contains(Provider.of<Data>(context).selectSong[widget.i])?Icons.pause:Icons.play_arrow
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
                              onPressed: (){
                                setState(() {
                                  widget.i = widget.i+1;
                                  print(widget.i);
                                 // Provider.of<Data>(context, listen: false).selectMusic(Provider.of<Data>(context, listen: false).selectSong[widget.i]);
                                  print(Provider.of<Data>(context,listen: false).chosenList);
                                  //Navigator.pushNamed(context, Song.id);

                                });
                              },
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
    );
  }
}





