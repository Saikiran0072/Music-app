
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:musicappp/options.dart';



void main() {
  runApp(MaterialApp(
    home: Profilepage(),
  ));
}

class Profilepage extends StatelessWidget {
  const Profilepage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan,

        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                SizedBox(height:30.0),
                Center(
                  child: Text('Edit Profile', style: TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold,
                      color: Colors.white,

                  ),),
                ),
                SizedBox(height:30.0),

                Center(
                    child: Stack(
                      children: [
                        Container(
                          height: 130.0,
                          width: 130.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 2,blurRadius: 10,
                                color: Colors.black.withOpacity(0.1),
                              ),

                            ],


                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                                image: AssetImage('assets/5.jpg'),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),

                            color: Colors.cyan,
                          ),
                          child: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.edit,color: Colors.white,),
                          ),



                          ),
                        ),
                      ],
                    ),
                ),
                SizedBox(height:30.0),


                Column(
                  children:<Widget> [
                    Container(


                      child: Neumorphic(

                        margin: EdgeInsets.fromLTRB(0, 0  , 30, 0),
                        child: TextField(decoration: InputDecoration(
                          hintText: 'Full Name',fillColor: Colors.cyan,
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.cyan)
                          ),
                          filled: true,

                          border: UnderlineInputBorder(),
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,color: Colors.black
                          ),
                        ),
                          cursorColor: Colors.black,

                        ),
                        style: NeumorphicStyle(
                            shape: NeumorphicShape.concave,
                            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
                            depth: -8,
                            lightSource: LightSource.topLeft,
                            color: Colors.grey
                        ),

                      ),



                    ),
                    SizedBox(height: 20),

                    Container(


                      child: Neumorphic(

                        margin: EdgeInsets.fromLTRB(0, 0  , 30, 0),
                        child: TextField(decoration: InputDecoration(
                            hintText: 'Email',
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.cyan)
                            ),
                            fillColor: Colors.cyan,
                            filled: true,
                            border: UnderlineInputBorder(),
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
                            color: Colors.grey
                        ),

                      ),

                    ),
                    SizedBox(height: 20),
                    Container(


                      child: Neumorphic(

                        margin: EdgeInsets.fromLTRB(0, 0  , 30, 0),
                        child: TextField(decoration: InputDecoration(
                            hintText: 'Phone Number',
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.cyan)
                            ),
                            fillColor: Colors.cyan,
                            filled: true,
                            border: UnderlineInputBorder(),
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
                            color: Colors.grey
                        ),

                      ),

                    ),
                    SizedBox(height:20.0,),
                    Container(


                      child: Neumorphic(

                        margin: EdgeInsets.fromLTRB(0, 0  , 30, 0),
                        child: TextField(decoration: InputDecoration(
                            hintText: 'Change Password',
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.cyan)
                            ),
                            fillColor: Colors.cyan,
                            filled: true,
                            border: UnderlineInputBorder(),
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,color: Colors.black
                            ),
                        ),
                          cursorColor: Colors.black,


                        ),
                        style: NeumorphicStyle(
                            shape: NeumorphicShape.concave,
                            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
                            depth: -8,
                            lightSource: LightSource.topLeft,
                            color: Colors.grey
                        ),

                      ),

                    ),


                    SizedBox(height: 40),

                    Center(
                        child: Container(


                          child: Neumorphic(

                            child: RaisedButton.icon(
                              padding: EdgeInsets.fromLTRB(80.0, 30.0, 80.0, 30.0),



                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Options()));} ,
                              color: Colors.cyan,

                              icon: Icon(Icons.update),
                              label: Text('Update',

                                style: TextStyle(

                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                                  ),



                            ),
                            style: NeumorphicStyle(


                                depth: 8,
                                lightSource: LightSource.topLeft,
                                color: Colors.cyan,
                              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
                            ),


                          ),

                        )

                    ),




                  ],
                ),
              ],
            ),
          ),
        )

    );






  }
}
