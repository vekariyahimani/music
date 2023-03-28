import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:music/screen/music_app/provider/mprovider.dart';
import 'package:provider/provider.dart';

class MusicScreen extends StatefulWidget {
  const MusicScreen({Key? key}) : super(key: key);

  @override
  State<MusicScreen> createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {


  void initState() {
    super.initState();

    Provider.of<MProvider>(context, listen: false).intiAudio();
  }
  MProvider? mProvidertrue;
  MProvider? mProviderfalse;

  @override
  Widget build(BuildContext context) {


    mProviderfalse = Provider.of<MProvider>(context, listen: false);
    mProvidertrue = Provider.of<MProvider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pushNamed(context, '3');
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white70,
            )),
        backgroundColor: Color(0xff152238),
        actions: [
          InkWell(
              onTap: () {
                Navigator.pushNamed(context, '4');
              },
              child: Icon(
                Icons.search,
                color: Colors.white70,
              )),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.more_horiz,
            color: Colors.white70,
          )
        ],
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            height: 790,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              (Color(0xff152238)),
              (Color(0xff152238)),
            ])),
          ),
          Padding(
            padding: EdgeInsets.only(top: 100, left: 65, right: 65),
            child: Column(
              children: [
                Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(color: Colors.white70),
                  child: Image.asset(
                    '${mProviderfalse!.image1[mProviderfalse!.i].image}',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 100,),


              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.all(10),
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Container(
                          height: 60,
                          width: 60,
                          child: Image.asset(
                            '${mProviderfalse!.image1[mProviderfalse!.i].image}',

                          ),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${mProvidertrue!.image1[mProviderfalse!.i].name}',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Pritam,Arijit Singh,Amitabh Bhattacharya ",
                              style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.black45,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ],
                    ),
                    PlayerBuilder.currentPosition(
                      builder: (context, position) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Slider(
                              value: position.inSeconds.toDouble(),
                              onChanged: (value) {
                                mProviderfalse!.assetsAudioPlayer!
                                    .seek(Duration(seconds: value.toInt()));
                              },
                              activeColor: Colors.black26,
                              inactiveColor: Colors.black54,
                              max: mProvidertrue!.totalDuration.inSeconds
                                  .toDouble(),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("${position}"),
                                Text("${mProviderfalse!.totalDuration}")],
                            )
                          ],
                        );
                      },
                      player: mProviderfalse!.assetsAudioPlayer!,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            onPressed: () {
                              mProviderfalse!.stop();
                            },
                            icon: Icon(
                              Icons.play_circle,
                              size: 40,
                            )),
                        IconButton(
                            onPressed: () {
                              mProviderfalse!.start();
                            },
                            icon: Icon(
                              Icons.pause_circle_filled_outlined,
                              size: 40,
                            )),
                        IconButton(
                            onPressed: () {
                              mProviderfalse!.mute();
                            },
                            icon: Icon(
                              mProvidertrue!.ismute
                                  ? Icons.volume_mute_rounded
                                  : Icons.keyboard_voice_outlined,
                              size: 30,
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
