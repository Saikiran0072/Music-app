import 'package:e_commerce/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'loginpage.dart';
import 'songslist.dart';

class Artist extends StatelessWidget {

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldbgcolor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  width: 500,
                  height: 150,
                  color: containercolor,
                  padding: EdgeInsets.only(left: 20, bottom: 20),
                  alignment: Alignment.bottomLeft,
                  child: Text("Artist Name",
                  style: TextStyle(
                    fontSize: 40,
                    color: darkfontcolor
                  ),),
                ),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  alignment: Alignment.topLeft,
                  child: Text("xxxxx followers",
                    style: TextStyle(
                      fontSize: 15,
                      color: darkfontcolor
                    ),),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 130),
                      child: MaterialButton(onPressed: (){},child: Text("FOLLOW"), color: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),),
                    ),
                    Icon(Icons.play_circle_fill_outlined, size: 40, color: navigationbarcolor,)
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 30,),
                  alignment: Alignment.topLeft,
                  child: Text("Albums",
                    style: TextStyle(
                        fontSize: 20,
                        color: darkfontcolor,
                      fontWeight: FontWeight.bold,
                    ),),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 50, bottom: 10),
                  child: MaterialButton(
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Artist()));},
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.only(top: 15, left: 8, bottom: 10),
                      height: 80,
                      width: 280,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: containercolor),
                      child: Column(
                        children: [
                          Text("album 1", style: TextStyle(fontSize: 15,color: darkfontcolor),),
                          Text("Artist names", style: TextStyle(fontSize: 15, color: darkfontcolor),),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(right: 50, bottom: 10),
                  child: MaterialButton(
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Artist()));},
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.only(top: 15, left: 8, bottom: 10),
                      height: 80,
                      width: 280,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: containercolor),
                      child: Column(
                        children: [
                          Text("album 2", style: TextStyle(fontSize: 15,color: darkfontcolor),),
                          Text("Artist names", style: TextStyle(fontSize: 15, color: darkfontcolor),),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(right: 50, bottom: 10),
                  child: MaterialButton(
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Artist()));},
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.only(top: 15, left: 8, bottom: 10),
                      height: 80,
                      width: 280,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: containercolor),
                      child: Column(
                        children: [
                          Text("album 3", style: TextStyle(fontSize: 15,color: darkfontcolor),),
                          Text("Artist names", style: TextStyle(fontSize: 15, color: darkfontcolor),),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(right: 50, bottom: 10),
                  child: MaterialButton(
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Artist()));},
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.only(top: 15, left: 8, bottom: 10),
                      height: 80,
                      width: 280,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: containercolor),
                      child: Column(
                        children: [
                          Text("album 4", style: TextStyle(fontSize: 15,color: darkfontcolor),),
                          Text("Artist names", style: TextStyle(fontSize: 15, color: darkfontcolor),),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(right: 50, bottom: 10),
                  child: MaterialButton(
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Artist()));},
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.only(top: 15, left: 8, bottom: 10),
                      height: 80,
                      width: 280,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: containercolor),
                      child: Column(
                        children: [
                          Text("album 5", style: TextStyle(fontSize: 15,color: darkfontcolor),),
                          Text("Artist names", style: TextStyle(fontSize: 15, color: darkfontcolor),),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(right: 50, bottom: 10),
                  child: MaterialButton(
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Artist()));},
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.only(top: 15, left: 8, bottom: 10),
                      height: 80,
                      width: 280,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: containercolor),
                      child: Column(
                        children: [
                          Text("album 6", style: TextStyle(fontSize: 15,color: darkfontcolor),),
                          Text("Artist names", style: TextStyle(fontSize: 15, color: darkfontcolor),),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(right: 50, bottom: 10),
                  child: MaterialButton(
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Artist()));},
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.only(top: 15, left: 8, bottom: 10),
                      height: 80,
                      width: 280,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: containercolor),
                      child: Column(
                        children: [
                          Text("album 7", style: TextStyle(fontSize: 15,color: darkfontcolor),),
                          Text("Artist names", style: TextStyle(fontSize: 15, color: darkfontcolor),),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),

              ],
            )

          ],
        ),
      ),
    );
  }
}
