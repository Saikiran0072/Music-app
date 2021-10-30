import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ArtistInfo.dart';
import 'loginpage.dart';
import 'colors.dart';
import 'package:e_commerce/Mainpage.dart';
import 'Song.dart';

class Songlist extends StatelessWidget {

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
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Mainpagee())); },
                  icon: Icon(Icons.arrow_back_ios_rounded, color: darkfontcolor,),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(bottom: 20,  left: 10),
                width: 500,
                height: 150,
                color: appbarcolor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text("xxxxx tracks",
                      style: TextStyle(
                        color: darkfontcolor,
                        fontSize: 40,
                      ),),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Container(
                          child: Text("xxxx likes", style: TextStyle(color: darkfontcolor, fontSize: 15),),
                          alignment: Alignment.bottomLeft,
                          padding: EdgeInsets.only(left: 10),

                        ),
                        Container(
                          child: Text("Duration", style: TextStyle(color: darkfontcolor, fontSize: 15),),
                          alignment: Alignment.bottomLeft,
                          padding: EdgeInsets.only(left: 30,right: 130),

                        ),
                        Icon(Icons.favorite_outline, color:navigationbariconcolor,size: 30,)
                      ],
                    ),
                  ],
                ),
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
                          Icon(Icons.add_circle_outline, color: navigationbariconcolor,size: 30,)
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
                          Icon(Icons.add_circle_outline, color: navigationbariconcolor,size: 30,)
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
                          Icon(Icons.add_circle_outline, color: navigationbariconcolor,size: 30,)
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
                          Icon(Icons.add_circle_outline, color: navigationbariconcolor,size: 30,)
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
                          Icon(Icons.add_circle_outline, color: navigationbariconcolor,size: 30,)
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
                                    Text("song 6", style: TextStyle(fontSize: 15,color: darkfontcolor),),
                                    GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Artist()));},child: Text("Artist names", style: TextStyle(fontSize: 15, color: darkfontcolor, fontWeight: FontWeight.bold),)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Icon(Icons.favorite_outline, color: navigationbariconcolor, size: 30,),
                          SizedBox(width: 10,),
                          Icon(Icons.add_circle_outline, color: navigationbariconcolor,size: 30,)
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
                                    Text("song 7", style: TextStyle(fontSize: 15,color: darkfontcolor),),
                                    GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Artist()));},child: Text("Artist names", style: TextStyle(fontSize: 15, color: darkfontcolor, fontWeight: FontWeight.bold),)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Icon(Icons.favorite_outline, color: navigationbariconcolor, size: 30,),
                          SizedBox(width: 10,),
                          Icon(Icons.add_circle_outline, color: navigationbariconcolor,size: 30,)
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),



                  ],
                ),
              ),

            ],
          )
        ),
      ),
    );
  }
}
