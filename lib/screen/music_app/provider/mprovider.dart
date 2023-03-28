import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:music/screen/music_app/modal/music_modal.dart';

class MProvider extends ChangeNotifier {
  int i = 0;
  int currentIndex = 0;

  AssetsAudioPlayer? assetsAudioPlayer;
  bool ismute=false;

  Duration totalDuration=Duration(seconds: 0);
  void intiAudio() {
    assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer!.open(Audio('${audio[i].audio}'),
        showNotification: true, autoStart: false);

    totalDurationAudio();
  }

  Future<void> start()
  async {
    await assetsAudioPlayer!.play();
  }

  Future<void> stop()
  async {
    await assetsAudioPlayer!.pause();
  }

  Future<void> mute()
  async {
    await assetsAudioPlayer!.playOrPause();
    ismute=!ismute;
    notifyListeners();
  }

  void totalDurationAudio()
  {
    assetsAudioPlayer!.current.listen((event) {
      totalDuration=event!.audio!.duration;
      notifyListeners();
    });
  }
List<MusicModal> audio=[MusicModal(audio: "assets/music/kesong.mp3"),
  MusicModal(audio: "assets/music/pathaan.mp4"),
  MusicModal(audio: "assets/music/matha.mp4"),
  MusicModal(audio: "assets/music/kamle.mp4"),];
  List<MusicModal> sliderImage = [
    MusicModal(
        image: "assets/image/shreya.jpg",
        name: "Shreya Ghoshal",
        follow: "34M Followers"),
    MusicModal(
        image: "assets/image/neha.jpg",
        name: "Neha Kakkar",
        follow: "59M Followers"),
    MusicModal(
        image: "assets/image/arijit.jpg",
        name: "Arijit Singh",
        follow: "45M Followers"),
    MusicModal(
        image: "assets/image/sonu.jpg",
        name: "Sonu Nigam",
        follow: "17M Followers"),
    MusicModal(
        image: "assets/image/pritam.jpg",
        name: "Pritam",
        follow: "39M Followers"),
    MusicModal(
        image: "assets/image/vishal.jpg",
        name: "Vishal-Shekhar",
        follow: "27M Followers"),
    MusicModal(
        image: "assets/image/sunidhi.jpg",
        name: "Sunidhi Chauhan",
        follow: "13M Followers"),
    MusicModal(
        image: "assets/image/udit.jpg",
        name: "Udit Naratan",
        follow: "25M Followers"),
  ];
  List image1=[
    MusicModal(image: "assets/image/1.png",name: "Kesariya(From''Brahmastra'')"),
    MusicModal(image: "assets/image/2.jpg",name: "Pathaan(From''Pathaan'')"),
    MusicModal(image: "assets/image/3.jpg",name: "Bessarm(From''Pathaan'')"),
    MusicModal(image: "assets/image/4.jpg",name: "Gallay Mithiya(From''AlbomeSong'')"),
    MusicModal(image: "assets/image/5.jpg",name: "Rabba Janna Ta(From''-----'')"),

  ];
  List image2=[
    MusicModal(image: "assets/image/8.jpg",name: "Madhanya(From''Madhanya'')"),
    MusicModal(image: "assets/image/7.jpg",name: "Kamle(From''AlbomeSong'')"),
    MusicModal(image: "assets/image/6.jpg",name: "Channda Meriya(From''----'')"),
    MusicModal(image: "assets/image/9.jpg",name: "Kenna Sona(From''War'')"),
    MusicModal(image: "assets/image/10.jpg",name: "Raadge Raadhe(From''AlbomeSong'')"),

  ];


  void selectindex(int value) {
    i = value;
    notifyListeners();
    print(i);
  }

  void changeindex(int index) {
    i = index;
    notifyListeners();
  }

  void Index(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
