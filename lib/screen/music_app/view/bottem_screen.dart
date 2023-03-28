import 'package:flutter/material.dart';
import 'package:music/screen/music_app/provider/mprovider.dart';
import 'package:music/screen/music_app/view/page1.dart';
import 'package:music/screen/music_app/view/page2.dart';
import 'package:provider/provider.dart';

class BottemScreen extends StatefulWidget {
  const BottemScreen({Key? key}) : super(key: key);

  @override
  State<BottemScreen> createState() => _BottemScreenState();
}

class _BottemScreenState extends State<BottemScreen> {
  MProvider? mProvidertrue;
  MProvider? mProviderfalse;

  @override
  Widget build(BuildContext context) {
    List screen = [Page1(), Page2()];
    mProviderfalse = Provider.of<MProvider>(context, listen: false);
    mProvidertrue = Provider.of<MProvider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
      body: screen[mProvidertrue!.i],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: mProvidertrue!.i,
        onTap: (value) {
          mProviderfalse!.selectindex(value);
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.white54,
              ),
              label: "Home",
              backgroundColor: Colors.black,
              activeIcon: Icon(
                Icons.home_outlined,
                color: Colors.red,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.white54,
              ),
              label: "Search",
              backgroundColor: Colors.black,
              activeIcon: Icon(
                Icons.search,
                color: Colors.red,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.podcasts_outlined,
                color: Colors.white54,
              ),
              label: "Podcast",
              backgroundColor: Colors.black,
              activeIcon: Icon(
                Icons.podcasts_outlined,
                color: Colors.red,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.my_library_music,
                color: Colors.white54,
              ),
              label: "My Library",
              backgroundColor: Colors.black,
              activeIcon: Icon(
                Icons.my_library_music,
                color: Colors.red,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.upgrade,
                color: Colors.white54,
              ), label: "Upgrade",
              backgroundColor: Colors.black,
              activeIcon: Icon(
                Icons.upgrade,
                color: Colors.red,
              )),
        ],
      ),
    ));
  }
}
