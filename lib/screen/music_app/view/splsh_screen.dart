import 'dart:async';

import 'package:flutter/material.dart';
import 'package:music/screen/music_app/view/bottem_screen.dart';

class SplshScreen extends StatefulWidget {
  const SplshScreen({Key? key}) : super(key: key);

  @override
  State<SplshScreen> createState() => _SplshScreenState();
}

class _SplshScreenState extends State<SplshScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottemScreen(),) );
    });
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            height: 790,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [(Colors.black), (Colors.black)])),
            child: Center(
              child: Image.asset(
                "assets/image/g.jpg",
                fit: BoxFit.cover,

              ),
            ),
          ),
        ));
  }
}
