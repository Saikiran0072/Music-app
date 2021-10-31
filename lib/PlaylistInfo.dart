import 'package:e_commerce/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/Library.dart';
import 'Song.dart';
import 'ArtistInfo.dart';
import 'Addsong.dart';

class PlaylistInfo extends StatelessWidget {
  const PlaylistInfo({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: scaffoldbgcolor,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: appbarcolor,
                  alignment: Alignment.topLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Library())); },
                        icon: Icon(Icons.arrow_back_ios_rounded, color: darkfontcolor,),
                      ),
                      IconButton(
                        icon: Icon(Icons.more_vert ,color: Color(0xFF1CDFCB), ),
                        onPressed: () {  },
                      ),
                    ],
                  ),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(top: 50, ),
                        height: 200,
                        width: 200,
                        child: Image(
                          image: AssetImage("images/default_img.jpg"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 20),
                      child: Text("Playlist xxx",
                        style: TextStyle(
                          color: darkfontcolor,
                          fontSize: 40,
                        ),),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text("No of songs", style: TextStyle(color: darkfontcolor, fontSize: 15),),
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(left: 10),

                          ),
                          FloatingActionButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Addsong())); }, child: Icon(Icons.add, color:darkfontcolor,size: 30,),backgroundColor: navigationbariconcolor,)

                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Song()));},
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
                                      image: AssetImage("images/default_img.jpg"),
                                    ),
                                  ),
                                  SizedBox(width: 20,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("song 1", style: TextStyle(fontSize: 15,color: darkfontcolor),),
                                      GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Artist()));},child: Text("Artist names", style: TextStyle(fontSize: 15, color: darkfontcolor, fontWeight: FontWeight.bold),)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10,),
                            Icon(Icons.favorite_outline, color: navigationbariconcolor, size: 30,),
                            SizedBox(width: 10,),
                            Icon(Icons.remove_circle_outline, color: navigationbariconcolor,size: 30,)
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Song()));},
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
                                      image: AssetImage("images/default_img.jpg"),
                                    ),
                                  ),
                                  SizedBox(width: 20,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("song 2", style: TextStyle(fontSize: 15,color: darkfontcolor),),
                                      GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Artist()));},child: Text("Artist names", style: TextStyle(fontSize: 15, color: darkfontcolor, fontWeight: FontWeight.bold),)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10,),
                            Icon(Icons.favorite_outline, color: navigationbariconcolor, size: 30,),
                            SizedBox(width: 10,),
                            Icon(Icons.remove_circle_outline, color: navigationbariconcolor,size: 30,)
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Song()));},
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
                                      image: AssetImage("images/default_img.jpg"),
                                    ),
                                  ),
                                  SizedBox(width: 20,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("song 3", style: TextStyle(fontSize: 15,color: darkfontcolor),),
                                      GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Artist()));},child: Text("Artist names", style: TextStyle(fontSize: 15, color: darkfontcolor, fontWeight: FontWeight.bold),)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10,),
                            Icon(Icons.favorite_outline, color: navigationbariconcolor, size: 30,),
                            SizedBox(width: 10,),
                            Icon(Icons.remove_circle_outline, color: navigationbariconcolor,size: 30,)
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Song()));},
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
                                      image: AssetImage("images/default_img.jpg"),
                                    ),
                                  ),
                                  SizedBox(width: 20,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("song 4", style: TextStyle(fontSize: 15,color: darkfontcolor),),
                                      GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Artist()));},child: Text("Artist names", style: TextStyle(fontSize: 15, color: darkfontcolor, fontWeight: FontWeight.bold),)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10,),
                            Icon(Icons.favorite_outline, color: navigationbariconcolor, size: 30,),
                            SizedBox(width: 10,),
                            Icon(Icons.remove_circle_outline, color: navigationbariconcolor,size: 30,)
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Song()));},
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
                                      image: AssetImage("images/default_img.jpg"),
                                    ),
                                  ),
                                  SizedBox(width: 20,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("song 5", style: TextStyle(fontSize: 15,color: darkfontcolor),),
                                      GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Artist()));},child: Text("Artist names", style: TextStyle(fontSize: 15, color: darkfontcolor, fontWeight: FontWeight.bold),)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10,),
                            Icon(Icons.favorite_outline, color: navigationbariconcolor, size: 30,),
                            SizedBox(width: 10,),
                            Icon(Icons.remove_circle_outline, color: navigationbariconcolor,size: 30,)
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                    ],
                  ),
                ),

              ],
            ),
          ),
        )
    );
  }
}
