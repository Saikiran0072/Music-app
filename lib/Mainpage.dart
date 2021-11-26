import 'dart:io';
import 'dart:math';

import 'package:e_commerce/ArtistInfo.dart';
import 'package:e_commerce/ex.dart';
import 'package:e_commerce/profilepage.dart';
import 'package:e_commerce/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'Library.dart';
import 'catogories.dart';
import 'favorites.dart';
import 'ex.dart';
import 'colors.dart';
import 'options.dart';
import 'savedplaylist.dart';
import 'songslist.dart';
import 'Song.dart';
import 'package:provider/provider.dart';
import 'loginpage.dart';
import 'Extract.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';



void main() {
  runApp(MaterialApp(
    home: Mainpagee(),
  ));
}
class Mainpagee extends StatefulWidget {
  static const String id = "mainpage_screen";

  @override
  State<Mainpagee> createState() => _MainpageeState();
}

class _MainpageeState extends State<Mainpagee> {
  List searchData= [];
  String data = "";
  bool visible = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  final searchController = TextEditingController();


  Future searchfordata() async{
    http.Response response = await http.post(Uri.parse('http://192.168.0.6/searchdata.php'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body:json.encode({

          "name": searchController.text,
        }));
    print("success");
    searchData = json.decode(response.body);
    print(response.statusCode);
  }

  var i=1;

  void changebanner() async {
    while(true){
      await new Future.delayed(Duration(seconds: 8));
      setState(() {
        i = Random().nextInt(7)+1;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    changebanner();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F2933),
      appBar: AppBar(
        backgroundColor:Color(0xFF323F4B),
        title: Text('MUSIC',
          style: TextStyle(
            fontSize: 20.0,
            color: Color(0xFFF5F7FA),
          ),
        ),
        leading: IconButton(onPressed: (){Navigator.pushNamed(context, Options.id);},
          icon: Icon(
            Icons.menu,
            color: Color(0xFF9AA5B1),

          ),),
        actions: [
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('images/default_img.jpg'),
              ),

              border: Border.all(
                width: 4,
                color: Color(0xFF9AA5B1),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(

          child:Column(
            children: [

              SizedBox(height: 30.0,),
//search bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Form(
                          key: _formKey,
                          child: TextFormField(
                            controller: searchController,
                            decoration: InputDecoration(
                              icon: IconButton(onPressed: () async {
                                setState(() {
                                  if (_formKey.currentState!.validate()) {
                                    _autoValidate = true;
                                  }
                                });
                                print(searchController.text);
                                await searchfordata();
                                setState(() {
                                  visible = !visible;
                                });
                                if(searchData != null){
                                  data = searchData[0]["name"];
                                  Provider.of<Data>(context,listen: false).ArtistName = data;
                                  Provider.of<Data>(context, listen: false).Album = searchData[0]["ArtistId"];
                                  Provider.of<Data>(context, listen: false).getalbumData();
                                  for(int i =0;i<Provider.of<Data>(context,listen: false).artist_follow.length;i++){
                                    if(Provider.of<Data>(context,listen: false).artist_follow[i]["ArtistId"] == searchData[0]["ArtistId"])
                                      Provider.of<Data>(context,listen: false).Follow = Provider.of<Data>(context,listen: false).artist_follow[i]["followers"];
                                  }
                                }
                                else{
                                  data = "Not found";
                                }


                              },icon: Icon(Icons.search)),
                              hintText:'Search for ...',
                              enabledBorder: UnderlineInputBorder(

                                borderSide: BorderSide(color: Colors.white),
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              border: UnderlineInputBorder(),
                              labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                            cursorColor: Colors.black,
                          ),
                        ),
                        Visibility(
                          visible: visible,
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              Container(
                                  width: 400,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xffEAEBEF),
                                  ),
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                        onTap: (){
                                          Navigator.pushNamed(context, Artist.id);
                                        },
                                        child: Text(
                                          data,
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.teal.shade900,
                                            fontFamily: "SourceSansPro",
                                          ),
                                        ),
                                      ),
                                      GestureDetector(child: Icon(Icons.close, size: 17,), onTap: (){
                                        setState(() {
                                          visible = !visible;
                                        });
                                      },)
                                    ],
                                  )
                              ),
                              SizedBox(height: 5,)
                            ],
                          ),
                        )







                      ]),
                  ),
                ),
              ),


              SizedBox(height: 30.0,),

              //top containers
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(width: 10,),
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            height: 200.0,
                            width: 350.0,
                            color: containercolor,
                            child: Image.asset('images/banner $i.jpg', fit: BoxFit.fill,height:200.0 ,
                              width: 300.0,
                            ),

                          ),
                        ),
                      ],
                    ),
                    SizedBox(width:15,),
                  ],
                ),
              ),


              //categories and view all buttons
              Row(
                children: [
                  SizedBox(height: 120.0,),
                  Container(
                    margin: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                    child: Icon(Icons.format_list_bulleted_sharp,
                      color: Color(0xFF9AA5B1),

                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text('Categories',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF5F7FA),

                      ),
                    ),
                  ),
                  SizedBox(width:60,),
                  Container(
                    child:Expanded(
                      child: RaisedButton(onPressed: (){
                        Navigator.pushNamed(context, Categories.id);},
                        child: Text('View All',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFF5F7FA),), ),
                        color: Color(0xFF52606D),
                        padding: EdgeInsets.only(top:10,bottom: 10),
                      ),
                    ),
                    padding: EdgeInsets.only(left: 40),
                  ),
                ],
              ),


              // genres
              SingleChildScrollView(scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      genre(image: 'images/default_img.jpg', songgenre:'POP' ),
                      genre(image: 'images/default_img.jpg', songgenre:'PARTY'),
                      genre(image: 'images/default_img.jpg', songgenre:'DANCE'),
                      genre(image: 'images/default_img.jpg', songgenre:'HIPHOP' ),
                      genre(image: 'images/default_img.jpg', songgenre:'ROCK' ),
                      genre(image: 'images/default_img.jpg', songgenre:'WORKOUT' )

                    ],
                  )
              ),
Row(
                children: [
                  SizedBox(height: 120.0,),
                  Container(
                    margin: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                    child: Icon(Icons.format_list_bulleted_sharp,
                      color: Color(0xFF9AA5B1),

                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text('Categories',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF5F7FA),

                      ),
                    ),
                  ),
                  SizedBox(width:60,),
                  Container(
                    child:Expanded(
                      child: RaisedButton(onPressed: (){
                        Navigator.pushNamed(context, Categories.id);},
                        child: Text('View All',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFF5F7FA),), ),
                        color: Color(0xFF52606D),
                        padding: EdgeInsets.only(top:10,bottom: 10),
                      ),
                    ),
                    padding: EdgeInsets.only(left: 40),
                  ),
                ],
              ),

              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(width: 10,),
                    Stack(
                      children: [
                        MaterialButton(
                          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Songlist()));},
                          child: Container(
                            padding: EdgeInsets.all(5.0),
                            height: 135.0,
                            width: 120.0,
                            child: Image.asset('images/default_img.jpg',height: 135.0,
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
                            child: Text('SONG1',

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
                    ),
                    Stack(
                      children: [
                        MaterialButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Songlist()));
                            print(i);
                          },
                          child: Container(
                            padding: EdgeInsets.all(5),
                            height: 135.0,
                            width: 120.0,
                            child: Image.asset('images/default_img.jpg',height: 135.0,
                              width: 120.0,),
                          ),
                        ),
                        SizedBox(height: 10,),
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
                            child: Text('SONG2',
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
                    ),
                    Stack(
                      children: [
                        MaterialButton(
                          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Songlist()));},
                          child: Container(
                            padding: EdgeInsets.all(5),
                            height: 135.0,
                            width: 120.0,
                            child: Image.asset('images/default_img.jpg',height: 135.0,
                              width: 120.0,),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Positioned(
                          left: 25,
                          bottom: 0,
                          child: Container(
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: lighttextboxcolor,
                            ),
                            padding: EdgeInsets.all(1),
                            child: Text('SONG3',

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
                    ),
                    Stack(
                      children: [
                        MaterialButton(
                          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Songlist()));},
                          child: Container(
                            padding: EdgeInsets.all(5),
                            height: 135.0,
                            width: 120.0,
                            child: Image.asset('images/default_img.jpg',height: 135.0,
                              width: 120.0,),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Positioned(
                          left: 25,
                          bottom: 0,
                          child: Container(
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: lighttextboxcolor,
                            ),
                            padding: EdgeInsets.all(1),
                            child: Text('SONG4',

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
                    ),
                    Stack(
                      children: [
                        MaterialButton(
                          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Songlist()));},
                          child: Container(
                            padding: EdgeInsets.all(5),
                            height: 135.0,
                            width: 120.0,
                            child: Image.asset('images/default_img.jpg',height: 135.0,
                              width: 120.0,),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Positioned(
                          left: 25,
                          bottom: 0,
                          child: Container(
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: lighttextboxcolor,
                            ),
                            padding: EdgeInsets.all(1),
                            child: Text('SONG5',
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
                    ),
                    Stack(
                      children: [
                        MaterialButton(
                          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Songlist()));},
                          child: Container(
                            padding: EdgeInsets.all(5),
                            height: 135.0,
                            width: 120.0,
                            child: Image.asset('images/default_img.jpg',height: 135.0,
                              width: 120.0,),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Positioned(
                          left: 25,
                          bottom: 0,
                          child: Container(
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: lighttextboxcolor,
                            ),
                            padding: EdgeInsets.all(1),
                            child: Text('SONG6',
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
                    ),
                    SizedBox(width: 10,),
                  ],
                ),
              ),





//playmusic bar(mad love)
              SizedBox(height: 100.0,),

            ],
          ),
        ),
      ),
      bottomSheet: Container(
        color: playmusiccolor,
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20.0),
              height: 70.0,
              width: 50.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('images/default_img.jpg',),
                ),
                border: Border.all(
                  width: 4,
                  color: Color(0xFF9AA5B1),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: TextButton(
                onPressed: ()async
                {
                  Navigator.pushNamed(context, Song.id);
                },
                child: Text('34+35',
                  style: TextStyle(

                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF5F7FA),
                  ),
                ),
              ),
            ),
            Expanded(child: Padding(
              padding: const EdgeInsets.only(left: 70.0),
              child: IconButton(onPressed: (){
                print("Yesssssss");
                // if(Provider.of<Data>(context,listen: false).i == 0){
                //   Provider.of<Data>(context,listen: false).i = Provider.of<Data>(context,listen: false).selectSong.length-1;
                // }
                // else{
                //   Provider.of<Data>(context,listen: false).i--;
                // }
                // Provider.of<Data>(context,listen: false).Playsong = Provider.of<Data>(context, listen: false).selectSong[Provider.of<Data>(context,  listen: false).i];
                // Provider.of<Data>(context,listen: false).playSound(Provider.of<Data>(context,listen: false).selectSong[Provider.of<Data>(context,  listen: false).i]);
                // Provider.of<Data>(context, listen: false).selectMusic(Provider.of<Data>(context,listen: false).selectSong[Provider.of<Data>(context,  listen: false).i]);
              },icon: Icon(Icons.arrow_left,color: Color(0xFF9AA5B1),size: 30,),),
            ),
            ),
            Expanded(child:
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: IconButton(onPressed: () {
                Provider.of<Data>(context, listen: false).Playsong = Provider.of<Data>(context, listen: false).selectSong[Provider.of<Data>(context,  listen: false).i];
                if(Provider.of<Data>(context, listen: false).chosenList != Provider.of<Data>(context, listen: false).selectSong[Provider.of<Data>(context, listen: false).i]){
                  Provider.of<Data>(context, listen: false).selectMusic(Provider.of<Data>(context,listen: false).selectSong[Provider.of<Data>(context,  listen: false).i]);
                  Provider.of<Data>(context, listen: false).playSound(Provider.of<Data>(context,listen: false).selectSong[Provider.of<Data>(context,  listen: false).i]);
                }else {
                  Provider.of<Data>(context, listen: false)
                      .unselectMusic(Provider.of<Data>(context,listen: false).selectSong[Provider.of<Data>(context,  listen: false).i]);
                  Provider.of<Data>(context, listen: false)
                      .pauseSound();
                }


              },
                icon: Icon(Provider.of<Data>(context, listen: false).chosenList == (Provider.of<Data>(context, listen: false).selectSong[Provider.of<Data>(context,  listen: false).i])?Icons.pause:Icons.play_arrow), iconSize: 30,),
            ),
            ),

            Expanded(child: Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: IconButton(onPressed: (){
                print("yess");
                if(Provider.of<Data>(context,listen: false).i == Provider.of<Data>(context,listen: false).selectSong.length-1){
                  Provider.of<Data>(context,listen: false).i = 0;
                }
                else{
                  Provider.of<Data>(context,listen: false).i++;
                }
                Provider.of<Data>(context,listen: false).Playsong = Provider.of<Data>(context, listen: false).selectSong[Provider.of<Data>(context,  listen: false).i];
                Provider.of<Data>(context,listen: false).playSound(Provider.of<Data>(context,listen: false).selectSong[Provider.of<Data>(context,  listen: false).i]);
                Provider.of<Data>(context, listen: false).selectMusic(Provider.of<Data>(context,listen: false).selectSong[Provider.of<Data>(context,  listen: false).i]);
              },icon: Icon(Icons.arrow_right,color: Color(0xFF9AA5B1)),),
            ),
            ),
            Expanded(child: Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Icon(Icons.close,color: Color(0xFF9AA5B1),),
            ),
            ),
          ],
        ),
      ),

      //bottom navigation bar
      bottomNavigationBar: Container(
        color: navigationbarcolor,
        height: 60.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [


            IconButton(

              icon: Icon(Icons.home, color: navigationbariconcolor),
              onPressed: () {
                Navigator.pushNamed(context, Mainpagee.id);

              },
            ),


            IconButton(

              icon: Icon(Icons.music_note, color: navigationbariconcolor),
              onPressed: () {
                Navigator.pushNamed(context, Library.id);

              },
            ),
            IconButton(

              icon: Icon(Icons.favorite, color: navigationbariconcolor),
              onPressed: () {
                Navigator.pushNamed(context, Favorites.id);

              },
            ),

            IconButton(

              icon: Icon(Icons.person, color: navigationbariconcolor),
              onPressed: () {
                Navigator.pushNamed(context, Profilepage.id);

              },
            ),
          ],
        ),
      ),


    );

  }
}
