import 'package:e_commerce/colors.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';
import 'colors.dart';


class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: scaffoldbgcolor,
      child: Center(
        child: SpinKitCircle(
          color: navigationbariconcolor,
          size: 60,
        ),
      ),
    );
  }
}
