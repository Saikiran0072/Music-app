import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:musicappp/Library.dart';

import 'Mainpage.dart';



void main() {
  runApp(MaterialApp(
    home: Addsong(),
  ));
}
class Addsong extends StatelessWidget {
  const Addsong({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Mainpagee()));
          },
          icon: Icon(Icons.arrow_back_ios_rounded),
        ),
        title: Text('Add satvikass songs '),

      ),
      body: SingleChildScrollView(
    child: Column(
    children: [

    SizedBox(height: 30.0,),
    Container(


    child: Neumorphic(

    margin: EdgeInsets.fromLTRB(30.0, 0  , 30, 0),
    child: TextField(
    decoration: InputDecoration(

    icon: Icon(Icons.search),
    hintText:'Search for ...',
    enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.white),
    ),
    fillColor: Colors.white,
    filled: true,
    border: UnderlineInputBorder(
    ),
    labelStyle: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 30,color: Colors.black
    )
    ),
    cursorColor: Colors.black,


    ),
    style: NeumorphicStyle(
    shape: NeumorphicShape.concave,
    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
    depth: -8,
    lightSource: LightSource.topLeft,
    color: Colors.white,
    ),

    ),

    ),
      SizedBox(height:30.0 ,),
      Container(
        color: Colors.cyan,
        height: 500.0,
        width: 400.0,
        margin: EdgeInsets.only(left: 0.0),
        child: Neumorphic(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Text('Suggested',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan,
                  ),
                ),
              ),
              SizedBox(height: 30.0,),
              Container(
                child: Row(
                  children: [
                    Container(

                      child: Container(
                        margin: EdgeInsets.only(left: 30.0),
                        height: 50.0,
                        width: 50.0,
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

                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20.0),
                      child: Text('Vibez',
                        style: TextStyle(
                          fontSize: 14.0,

                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 190.0),
                      child: IconButton(
                            icon: Icon(Icons.add_circle_outline ,color: Colors.black, ),
                            onPressed: () {}
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30.0,),
              Container(
                child: Row(
                  children: [
                    Container(

                      child: Container(
                        margin: EdgeInsets.only(left: 30.0),
                        height: 50.0,
                        width: 50.0,
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

                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20.0),
                      child: Text('Vibez',
                        style: TextStyle(
                          fontSize: 14.0,

                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 190.0),
                      child: IconButton(
                          icon: Icon(Icons.add_circle_outline ,color: Colors.black, ),
                          onPressed: () {}
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30.0,),
              Container(
                child: Row(
                  children: [
                    Container(

                      child: Container(
                        margin: EdgeInsets.only(left: 30.0),
                        height: 50.0,
                        width: 50.0,
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

                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20.0),
                      child: Text('Vibez',
                        style: TextStyle(
                          fontSize: 14.0,

                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 190.0),
                      child: IconButton(
                          icon: Icon(Icons.add_circle_outline ,color: Colors.black, ),
                          onPressed: () {}
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30.0,),
              Container(
                child: Row(
                  children: [
                    Container(

                      child: Container(
                        margin: EdgeInsets.only(left: 30.0),
                        height: 50.0,
                        width: 50.0,
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

                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20.0),
                      child: Text('Vibez',
                        style: TextStyle(
                          fontSize: 14.0,

                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 190.0),
                      child: IconButton(
                          icon: Icon(Icons.add_circle_outline ,color: Colors.black, ),
                          onPressed: () {}
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30.0,),
              Container(
                child: Row(
                  children: [
                    Container(

                      child: Container(
                        margin: EdgeInsets.only(left: 30.0),
                        height: 50.0,
                        width: 50.0,
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

                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20.0),
                      child: Text('Vibez',
                        style: TextStyle(
                          fontSize: 14.0,

                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 190.0),
                      child: IconButton(
                          icon: Icon(Icons.add_circle_outline ,color: Colors.black, ),
                          onPressed: () {}
                      ),
                    )
                  ],
                ),
              ),


            ],
          ),
        ),
      ),
        ]

      ),
    ),
    );
  }
}
