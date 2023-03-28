import 'package:flutter/material.dart';
import 'package:music/screen/music_app/provider/mprovider.dart';
import 'package:provider/provider.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  MProvider? mProvidertrue;
  MProvider? mProviderfalse;

  @override
  Widget build(BuildContext context) {
    mProviderfalse = Provider.of<MProvider>(context, listen: false);
    mProvidertrue = Provider.of<MProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.black,
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
            child: Image.asset('${mProviderfalse!.sliderImage[mProviderfalse!.i].image}'),
            ),
          ],
        )
      ),
    );
  }
}
