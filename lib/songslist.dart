import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ArtistInfo.dart';
import 'loginpage.dart';
import 'colors.dart';

class Songlist extends StatelessWidget {

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldbgcolor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(bottom: 20,  left: 10),
              width: 500,
              height: 160,
              color: appbarcolor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 120,top: 50),
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
              padding: const EdgeInsets.only(top: 30,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      MaterialButton(
                        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Artist()));},
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          padding: EdgeInsets.only(top: 15, left: 8),
                          height: 80,
                          width: 250,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: containercolor),
                          child: Column(
                            children: [
                              Text("song 1", style: TextStyle(fontSize: 15,color: darkfontcolor),),
                              Text("Artist names", style: TextStyle(fontSize: 15, color: darkfontcolor),),
                            ],
                          ),
                        ),
                      ),
                      Icon(Icons.favorite_outline, color: navigationbariconcolor, size: 30,),
                      SizedBox(width: 10,),
                      Icon(Icons.add_circle_outline, color: navigationbariconcolor,size: 30,)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      MaterialButton(
                        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Artist()));},
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          padding: EdgeInsets.only(top: 15, left: 8),
                          height: 80,
                          width: 250,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: containercolor),
                          child: Column(
                            children: [
                              Text("song 2", style: TextStyle(fontSize: 15,color: darkfontcolor),),
                              Text("Artist names", style: TextStyle(fontSize: 15, color: darkfontcolor),),
                            ],
                          ),
                        ),
                      ),
                      Icon(Icons.favorite_outline, color: navigationbariconcolor, size: 30,),
                      SizedBox(width: 10,),
                      Icon(Icons.add_circle_outline, color: navigationbariconcolor,size: 30,)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      MaterialButton(
                        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Artist()));},
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          padding: EdgeInsets.only(top: 15, left: 8),
                          height: 80,
                          width: 250,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: containercolor),
                          child: Column(
                            children: [
                              Text("song 3", style: TextStyle(fontSize: 15,color: darkfontcolor),),
                              Text("Artist names", style: TextStyle(fontSize: 15, color: darkfontcolor),),
                            ],
                          ),
                        ),
                      ),
                      Icon(Icons.favorite_outline, color: navigationbariconcolor, size: 30,),
                      SizedBox(width: 10,),
                      Icon(Icons.add_circle_outline, color: navigationbariconcolor,size: 30,)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      MaterialButton(
                        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Artist()));},
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          padding: EdgeInsets.only(top: 15, left: 8),
                          height: 80,
                          width: 250,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: containercolor),
                          child: Column(
                            children: [
                              Text("song 4", style: TextStyle(fontSize: 15,color: darkfontcolor),),
                              Text("Artist names", style: TextStyle(fontSize: 15, color: darkfontcolor),),
                            ],
                          ),
                        ),
                      ),
                      Icon(Icons.favorite_outline, color: navigationbariconcolor, size: 30,),
                      SizedBox(width: 10,),
                      Icon(Icons.add_circle_outline, color: navigationbariconcolor,size: 30,)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      MaterialButton(
                        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Artist()));},
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          padding: EdgeInsets.only(top: 15, left: 8),
                          height: 80,
                          width: 250,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: containercolor),
                          child: Column(
                            children: [
                              Text("song 5", style: TextStyle(fontSize: 15,color: darkfontcolor),),
                              Text("Artist names", style: TextStyle(fontSize: 15, color: darkfontcolor),),
                            ],
                          ),
                        ),
                      ),
                      Icon(Icons.favorite_outline, color: navigationbariconcolor, size: 30,),
                      SizedBox(width: 10,),
                      Icon(Icons.add_circle_outline, color: navigationbariconcolor,size: 30,)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      MaterialButton(
                        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Artist()));},
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          padding: EdgeInsets.only(top: 15, left: 8),
                          height: 80,
                          width: 250,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: containercolor),
                          child: Column(
                            children: [
                              Text("song 6", style: TextStyle(fontSize: 15,color: darkfontcolor),),
                              Text("Artist names", style: TextStyle(fontSize: 15, color: darkfontcolor),),
                            ],
                          ),
                        ),
                      ),
                      Icon(Icons.favorite_outline, color: navigationbariconcolor, size: 30,),
                      SizedBox(width: 10,),
                      Icon(Icons.add_circle_outline, color: navigationbariconcolor,size: 30,)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      MaterialButton(
                        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Artist()));},
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          padding: EdgeInsets.only(top: 15, left: 8),
                          height: 80,
                          width: 250,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: containercolor),
                          child: Column(
                            children: [
                              Text("song 7", style: TextStyle(fontSize: 15,color: darkfontcolor),),
                              Text("Artist names", style: TextStyle(fontSize: 15, color: darkfontcolor),),
                            ],
                          ),
                        ),
                      ),
                      Icon(Icons.favorite_outline, color: navigationbariconcolor, size: 30,),
                      SizedBox(width: 10,),
                      Icon(Icons.add_circle_outline, color: navigationbariconcolor,size: 30,)
                    ],
                  ),
                  SizedBox(height: 20,),



                ],
              ),
            ),

          ],
        )
      ),
    );
  }
}
