import 'package:e_commerce/savedplaylist.dart';
import 'package:flutter/material.dart';
import 'colors.dart';
import 'Song.dart';
import 'ArtistInfo.dart';
import 'PlaylistInfo.dart';
import 'favorites.dart';
import 'songslist.dart';
import 'package:provider/provider.dart';
import 'user.dart';
import 'Library.dart';
import 'Playlist.dart';


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
          Expanded(child: IconButton(onPressed: (){
            Provider.of<Data>(context,listen: false).Add = true;
            Provider.of<Data>(context,listen: false).Songname = widget.song_name;
            Provider.of<Data>(context,listen: false).Songid = widget.song_id;
            Provider.of<Data>(context, listen: false).Album = widget.artist_id;
            Provider.of<Data>(context, listen: false).getalbumData();
            Provider.of<Data>(context,listen: false).ArtistName = widget.artist_names;
            Provider.of<Data>(context,listen: false).Follow = widget.followers;
            Provider.of<Data>(context,listen: false).Likes = widget.likes;
            Navigator.pushNamed(context, Library.id);
          }, icon: Icon(Icons.add_circle_outline, color: navigationbariconcolor,size: 25)))
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

class songCategories extends StatefulWidget {
  final String songname;
  songCategories({
     required this.songname
  });

  @override
  State<songCategories> createState() => _songCategoriesState();
}

class _songCategoriesState extends State<songCategories> {

  @override
  Widget build(BuildContext context) {
    setState(() {
      Provider.of<Data>(context,listen: false).Songname = widget.songname;
      print(Provider.of<Data>(context,listen: false).Songname);
      switch(Provider.of<Data>(context,listen: false).Songname) {
        case "34+35": {Provider.of<Data>(context,listen: false).Image = "images/34+35.jpg";}
        break;

        case "Infinity": {Provider.of<Data>(context,listen: false).Image = "images/infinity.png"; }
        break;

        case "Black Swan": {Provider.of<Data>(context,listen: false).Image = "images/blackswan.jpg";}
        break;

        case "Gimme More": {Provider.of<Data>(context,listen: false).Image = "images/gimme more.png";}
        break;
        case "Good 4 u": {Provider.of<Data>(context,listen: false).Image = "images/good 4 u.png";}
        break;
        case "I wanna be your slave": {Provider.of<Data>(context,listen: false).Image = "images/i wanna be your slave.png";}
        break;
        case "Kiss me more": {Provider.of<Data>(context,listen: false).Image = "images/kiss me more.jpg";}
        break;
        case "Sweat": {Provider.of<Data>(context,listen: false).Image = "images/sweat.jpg";}
        break;
        case "Sweet melody": {Provider.of<Data>(context,listen: false).Image = "images/sweet melody.jpg";}
        break;

        default: { print("Invalid choice"); }
        break;
      }
    });
    return Stack(
      children: [
        MaterialButton(
          onPressed: (){
            Navigator.pushNamed(context, Song.id);},
          child: Container(
            padding: EdgeInsets.all(5.0),
            height: 135.0,
            width: 120.0,
            child: Image.asset(Provider.of<Data>(context,listen: false).Image,height: 135.0,
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
            child: Text(widget.songname,

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
  songPage({required this.playing,required this.position, required this.slider, required this.duration});
  late final bool playing;
  final Duration position;
  final Widget slider;
  final String duration;


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
            child: Text(Provider.of<Data>(context,listen: false).songnames[Provider.of<Data>(context,listen:false ).i],
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
                  image: AssetImage(
                      Provider.of<Data>(context,listen: false).images[Provider.of<Data>(context,listen:false ).i]),
                ),
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 18.0,),

          Center(
            child: Column(
              children: [
                Text(Provider.of<Data>(context,listen: false).songnames[Provider.of<Data>(context,listen:false ).i],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 5,),
                Text(Provider.of<Data>(context,listen: false).artistnames[Provider.of<Data>(context,listen:false ).i],
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
                              onPressed: (){
                                setState(() {
                                  if(Provider.of<Data>(context,listen: false).i == 0){
                                    Provider.of<Data>(context,listen: false).i = Provider.of<Data>(context, listen: false).selectSong.length-1;
                                  }
                                  else{
                                    Provider.of<Data>(context,listen: false).i--;
                                  }
                                  Provider.of<Data>(context,listen: false).Playsong = Provider.of<Data>(context, listen: false).selectSong[Provider.of<Data>(context,  listen: false).i];
                                  Provider.of<Data>(context,listen: false).playSound(Provider.of<Data>(context,listen: false).selectSong[Provider.of<Data>(context,  listen: false).i]);
                                  Provider.of<Data>(context, listen: false).selectMusic(Provider.of<Data>(context,listen: false).selectSong[Provider.of<Data>(context,  listen: false).i]);
                                });

                              },
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
                                Provider.of<Data>(context, listen: false).Playsong = Provider.of<Data>(context, listen: false).selectSong[Provider.of<Data>(context,  listen: false).i];
                                setState(() {
                                  if(Provider.of<Data>(context, listen: false).chosenList != Provider.of<Data>(context, listen: false).selectSong[Provider.of<Data>(context, listen: false).i]){
                                    Provider.of<Data>(context, listen: false).selectMusic(Provider.of<Data>(context,listen: false).selectSong[Provider.of<Data>(context,  listen: false).i]);
                                    Provider.of<Data>(context, listen: false).playSound(Provider.of<Data>(context,listen: false).selectSong[Provider.of<Data>(context,  listen: false).i]);
                                  }else {
                                    Provider.of<Data>(context, listen: false)
                                        .unselectMusic(Provider.of<Data>(context,listen: false).selectSong[Provider.of<Data>(context,  listen: false).i]);
                                    Provider.of<Data>(context, listen: false)
                                        .pauseSound();
                                  }
                                });


                            },
                            icon: Icon(Provider.of<Data>(context, listen: false).chosenList == (Provider.of<Data>(context, listen: false).selectSong[Provider.of<Data>(context,  listen: false).i])?Icons.pause:Icons.play_arrow
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
                                  if(Provider.of<Data>(context,listen: false).i == Provider.of<Data>(context,listen: false).selectSong.length-1){
                                    Provider.of<Data>(context,listen: false).i = 0;
                                  }
                                  else{
                                    Provider.of<Data>(context,listen: false).i++;
                                  }
                                  Provider.of<Data>(context,listen: false).Playsong = Provider.of<Data>(context, listen: false).selectSong[Provider.of<Data>(context,  listen: false).i];
                                  Provider.of<Data>(context,listen: false).playSound(Provider.of<Data>(context,listen: false).selectSong[Provider.of<Data>(context,  listen: false).i]);
                                  Provider.of<Data>(context, listen: false).selectMusic(Provider.of<Data>(context,listen: false).selectSong[Provider.of<Data>(context,  listen: false).i]);

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


//create song extracted widget
class createPlaylist extends StatefulWidget  {
  const createPlaylist({required this.image, required this.playlist_name, required this.playlist_id});
  final String image;
  final String playlist_name;
  final int playlist_id;

  @override
  State<createPlaylist> createState() => _createPlaylistState();
}

class _createPlaylistState extends State<createPlaylist> with AutomaticKeepAliveClientMixin<createPlaylist> {

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  bool _isPressed = false;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return GestureDetector(
      onTap: (){
        setState(() {
          Provider.of<Data>(context,listen: false).PlaylistId = widget.playlist_id;
          Provider.of<Data>(context,listen: false).Playlistname = widget.playlist_name;
          Provider.of<Data>(context,listen: false).playlistSongs();
          Provider.of<Data>(context,listen: false).getAddData();
          if(Provider.of<Data>(context,listen: false).addtoplaylist){
            AlertDialog alert = AlertDialog(
              title: Text("add this song to ${widget.playlist_name}?"),
              actions: [
                MaterialButton(onPressed: (){
                  Navigator.of(context,rootNavigator: true).pop();
                  Provider.of<Data>(context,listen: false).playlistSongs();
                  Provider.of<Data>(context,listen: false).getAddData();

                }, child: Text("Yes"),)
              ],
            );
            showDialog(context: context, builder:  (BuildContext context){
              return alert;
            });
            Provider.of<Data>(context,listen: false).Add = false;
          }else{
            Navigator.pushNamed(context, PlaylistInfo.id);
          }

        });
        },

      child: Container(
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
                  Text(widget.playlist_name, style: TextStyle(fontSize: 15,color: darkfontcolor,),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}

class buildCategory extends StatefulWidget {
  buildCategory({required this.image, required this.song_name, required this.artist_name});
  final String image;
  final String song_name;
  final String artist_name;
  @override
  State<buildCategory> createState() => _buildCategoryState();
}

class _buildCategoryState extends State<buildCategory> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Column(
        children:<Widget> [
          Padding(
            padding: EdgeInsets.only(top: 20.0,),
            child: Container(
              height: 300,
              width: 250,
              decoration: BoxDecoration(

                  image: DecorationImage(
                    image: AssetImage(widget.image),
                  ),
                  borderRadius: BorderRadius.circular(20)
              ),

            ),
          ),
          Column(
            children: [
              Text(widget.song_name, style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: darkfontcolor
              ),),

              SizedBox(height: 5,),
              Text(widget.artist_name,style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold, color: darkfontcolor
              ),

              ),
            ],
          ) ,
          //boxs
          SizedBox(height: 30,),
          Column(
            children:<Widget> [
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  children: [
                    Container(
                      child: IconButton(
                        icon: Icon(Icons.favorite_outline ,color: navigationbariconcolor, ),
                        onPressed: () {  },
                      ),
                    ),
                    SizedBox(width: 30,),
                    Text('Like', style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w600, color: darkfontcolor
                    ), )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  children: [
                    Container(
                      child: IconButton(
                        icon: Icon(Icons.album ,color: navigationbariconcolor, ),
                        onPressed: () { Navigator.pushNamed(context, Artist.id);},
                      ),
                    ),
                    SizedBox(width: 30,),
                    Text('View artist', style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w600, color: darkfontcolor
                    ), )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  children: [
                    Container(
                      child: IconButton(
                        icon: Icon(Icons.share_outlined ,color: navigationbariconcolor , ),
                        onPressed: () {  },
                      ),
                    ),
                    SizedBox(width: 30,),
                    Text('Share Your Profile', style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w600, color: darkfontcolor
                    ), )
                  ],
                ),
              ),

              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  children: [
                    Container(
                      child: IconButton(
                        icon: Icon(Icons.headset,color: navigationbariconcolor, ),
                        onPressed: () {
                          Provider.of<Data>(context,listen: false).Add = true;
                          Provider.of<Data>(context,listen: false).Songname = widget.song_name;
                          Provider.of<Data>(context, listen: false).getalbumData();
                          Provider.of<Data>(context,listen: false).ArtistName = widget.artist_name;
                          Navigator.pushNamed(context, Library.id);},
                      ),
                    ),
                    SizedBox(width: 30,),
                    Text('Add to Playlist', style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w600, color: darkfontcolor
                    ), )
                  ],
                ),
              ),


            ],
          ),


        ]
    );
  }
}



