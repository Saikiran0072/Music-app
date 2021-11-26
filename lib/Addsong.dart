import 'package:e_commerce/ex.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'Library.dart';
import 'Mainpage.dart';
import 'colors.dart';
import 'Extract.dart';
import 'package:provider/provider.dart';
import 'user.dart';


void main() {
  runApp(MaterialApp(
    home: Addsong(),
  ));
}
class Addsong extends StatelessWidget {
  static const String id = "addsong_screen";
  const Addsong({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldbgcolor,
      appBar: AppBar(
        backgroundColor: appbarcolor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, Library.id);
          },
          icon: Icon(Icons.arrow_back_ios_rounded,color: arrowcolor,),
        ),
        title: Text('Add Songs'),
        centerTitle: true,


      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(height: 30.0,),

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //suggested
                Container(
                  child: Text('Suggested',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: darkfontcolor,
                    ),
                  ),
                ),
                //music suggestions
                SizedBox(height: 30.0,),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                      alignment: Alignment.centerLeft,
                      child: recommendedSongs(songdata: Provider.of<Data>(context,listen:false).data_list2)
                  ),
                ),
              ],
            ),

          ],

        ),
      ),
    );
  }
}
