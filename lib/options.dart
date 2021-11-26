import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'Library.dart';
import 'Mainpage.dart';
import 'favorites.dart';
import 'loginpage.dart';
import 'profilepage.dart';
import 'savedplaylist.dart';
import 'colors.dart';
import 'package:provider/provider.dart';
import 'user.dart';
import '2nd page.dart';


void main() {
  runApp(MaterialApp(
    home: Options(),
  ));
}
class Options extends StatefulWidget {
  static const String id = "options_screen";
  const Options({Key? key}) : super(key: key);

  @override
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3E4C59),
      body:



      Column(

        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 30.0,top: 40.0),
                height: 70.0,
                width: 70.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/5.jpg'),
                  ),

                  border: Border.all(
                    width: 4,
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                ),
              ),
              Expanded(
                child: Column(

                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30.0,top: 40.0),
                      child: Text(Provider.of<Data>(context,listen: false).Fullname,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: darkfontcolor,

                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 0.0),
                      child: Text('........',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: darkfontcolor,
                        ),

                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                    child:IconButton(

                      onPressed: () {Navigator.pushNamed(context, Mainpagee.id);},
                      color: Colors.white,
                      icon: const Icon(Icons.close,color:arrowcolor),
                      alignment: Alignment.topRight,
                    )),
              )

            ],
          ),
          SizedBox(height: 30.0,),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 30.0),
                height: 60,
                width: 60,
                child: IconButton(

                  onPressed: () {Navigator.pushNamed(context, Profilepage.id);} ,
                  color: navigationbariconcolor,
                  icon: const Icon(Icons.edit),



                ),

              ),
              Container(
                margin: EdgeInsets.only(left: 30.0),

                child: Text('Edit Profile',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: darkfontcolor,

                  ),
                ),
              ),


            ],
          ),
          SizedBox(height: 30.0,),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 30.0),
                height: 60,
                width: 60,
                child: IconButton(

                  onPressed: () {Navigator.pushNamed(context, Library.id);} ,
                  color: navigationbariconcolor,
                  icon: const Icon(Icons.headset),



                ),

              ),
              Container(
                margin: EdgeInsets.only(left: 30.0),
                child: Text('Library',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: darkfontcolor,

                  ),
                ),
              ),

            ],
          ),
          SizedBox(height: 30.0,),

          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 30.0),
                height: 60,
                width: 60,
                child: IconButton(

                  onPressed: () {Navigator.pushNamed(context, Favorites.id);} ,
                  color: navigationbariconcolor,
                  icon: const Icon(Icons.favorite),



                ),

              ),
              Container(
                margin: EdgeInsets.only(left: 30.0),
                child: Text('Favorite',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: darkfontcolor,

                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30.0,),



          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 30.0),
                height: 60,
                width: 60,
                child: IconButton(

                  onPressed: () {} ,
                  color: navigationbariconcolor,
                  icon: const Icon(Icons.share),



                ),

              ),
              Container(
                margin: EdgeInsets.only(left: 30.0),
                child: Text('Share your Profile',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: darkfontcolor,

                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30.0,),



          Container(height: 40,
            width: 160,
            margin: EdgeInsets.only(left: 30.0),


            child: RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, Login.id);

              },
              child: Text('Log Out',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: darkfontcolor,

                  )
              ),
              color: containercolor,



            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),

            ),

          ),






        ],
      ),







    );

  }
}
