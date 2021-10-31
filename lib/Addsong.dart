import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'Library.dart';
import 'Mainpage.dart';
import 'colors.dart';



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
      backgroundColor: scaffoldbgcolor,
      appBar: AppBar(
        backgroundColor: appbarcolor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Library()));
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
            Container(
              child: Neumorphic(
                margin: EdgeInsets.fromLTRB(30.0, 0  , 30, 0),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    hintText:'Search for ...',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF9AA5B1)),
                    ),
                    fillColor: Color(0xFF9AA5B1),
                    filled: true,
                    border: UnderlineInputBorder(),
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color(0xFFF5F7FA),
                    ),
                  ),
                  cursorColor: Colors.black,
                ),
                style: NeumorphicStyle(
                  shape: NeumorphicShape.concave,
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
                  depth: -8,
                  lightSource: LightSource.topLeft,
                  color: Color(0xFF9AA5B1),
                ),
              ),
            ),
            SizedBox(height:30.0 ,),
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
                    child: Column(
                      children: [
                        Container(
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
                                    image: AssetImage('images/default_img.jpg'),
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
                                    child: Text('Vibez',
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
                        ),
                        SizedBox(height: 20,),
                        Container(
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
                                    image: AssetImage('images/default_img.jpg'),
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
                                    child: Text('Vibez',
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
                        ),
                        SizedBox(height: 20,),
                        Container(
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
                                    image: AssetImage('images/default_img.jpg'),
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
                                    child: Text('Vibez',
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
                        ),
                        SizedBox(height: 20,),
                        Container(
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
                                    image: AssetImage('images/default_img.jpg'),
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
                                    child: Text('Vibez',
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
                        ),
                        SizedBox(height: 20,),
                        Container(
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
                                    image: AssetImage('images/default_img.jpg'),
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
                                    child: Text('Vibez',
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
                        ),
                        SizedBox(height: 20,),
                        Container(
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
                                    image: AssetImage('images/default_img.jpg'),
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
                                    child: Text('Vibez',
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
                        ),

                      ],
                    ),
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
