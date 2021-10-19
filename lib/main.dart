import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:musicappp/2nd%20page.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Column(
        children: [
          SizedBox(height: 100.0,),
          Center(
            child: Container(
              height: 150.0,
              width: 150.0,
              child: Neumorphic(child: Image.asset('assets/4.png'),
                style: NeumorphicStyle(
                shape: NeumorphicShape.flat,
                boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
                depth: 10,
                lightSource: LightSource.topLeft,
                color: Colors.cyan,
              ),
              ),
            ),
          ),
          SizedBox(height: 50.0,),
          Center(
            child: IconButton( icon: Icon(Icons.music_note),
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
              }

            ),

          ),
        ],
      ) ,



    );
  }
}



