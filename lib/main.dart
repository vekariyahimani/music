import 'package:flutter/material.dart';
import 'package:music/screen/music_app/provider/mprovider.dart';
import 'package:music/screen/music_app/view/bottem_screen.dart';
import 'package:music/screen/music_app/view/musicplay_screen.dart';
import 'package:music/screen/music_app/view/page1.dart';
import 'package:music/screen/music_app/view/page2.dart';
import 'package:music/screen/music_app/view/page3.dart';
import 'package:music/screen/music_app/view/splsh_screen.dart';
import 'package:provider/provider.dart';


void main()
{
  runApp(
    ChangeNotifierProvider(
      create: (context) => MProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) =>SplshScreen(),
          '2':(context) => BottemScreen(),
          '3':(context) => Page1(),
          '4':(context) => Page2(),
          '5':(context) => MusicScreen(),
        },

      ),
    )
  );
}