
import 'package:e_commerce/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'options.dart';
import 'catogories.dart';



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
        backgroundColor: scaffoldbgcolor,
        appBar: AppBar(
          backgroundColor: appbarcolor,
          title: Text("Edit Profile"),
          leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Options())); },
            icon: Icon(Icons.arrow_back_ios_rounded, color: arrowcolor,),
          ),
        ),

        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

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

                            color: navigationbariconcolor,
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
                SizedBox(height:50.0),


                Column(
                  children:<Widget> [
                    Container(


                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 30),
                          prefixIcon: Icon(Icons.person),
                          hintText: 'Full name',fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)
                          ),
                          filled: true,
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,color: Colors.black
                          ),
                        ),
                        cursorColor: Colors.black,

                      ),



                    ),
                    SizedBox(height: 20),

                    Container(


                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 30),
                          prefixIcon: Icon(Icons.email),
                          hintText: 'Email',fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)
                          ),
                          filled: true,
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,color: Colors.black
                          ),
                        ),
                        cursorColor: Colors.black,

                      ),



                    ),
                    SizedBox(height: 20),
                    Container(


                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 30),
                          prefixIcon: Icon(Icons.phone),
                          hintText: 'Phone Number',fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)
                          ),
                          filled: true,
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,color: Colors.black
                          ),
                        ),
                        cursorColor: Colors.black,

                      ),



                    ),
                    SizedBox(height:20.0,),
                    Container(


                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 30),
                          prefixIcon: Icon(Icons.password),
                          hintText: 'Change Password',fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)
                          ),
                          filled: true,
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,color: Colors.black
                          ),
                        ),
                        cursorColor: Colors.black,

                      ),



                    ),


                    SizedBox(height: 40),

                    Center(
                      child: Container(


                        child: MaterialButton(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.update,
                                color: arrowcolor,
                              ),
                              SizedBox(width: 10,),
                              Text("Update", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: arrowcolor),)

                            ],
                          ),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),


                          onPressed: () {} ,
                          color: containercolor,

                        ),



                      ),

                    )

                  ],
                ),
              ],
            ),
          ),
        )

    );






  }
}
