import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Animals extends StatefulWidget {
  const Animals({Key? key}) : super(key: key);

  @override
  _AnimalsState createState() => _AnimalsState();
}

class _AnimalsState extends State<Animals> {

  AudioCache _audioCache = AudioCache(prefix: "assets/audio/");

  _execute(String nameAudio){
    _audioCache.play(nameAudio + ".mp3");
  }

  @override
  void initState() {
    super.initState();
    _audioCache.loadAll([
      "cat.mp3", "cow.mp3", "dog.mp3",
      "lion.mp3", "monkey.mp3", "sheep.mp3",
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
        children: [
          GestureDetector(
            onTap: (){
              _execute("cat");
            },
            child: Image.asset("assets/images/cat.png"),
          ),
          GestureDetector(
            onTap: (){
              _execute("cow");
            },
            child: Image.asset("assets/images/cow.png"),
          ),
          GestureDetector(
            onTap: (){
              _execute("dog");
            },
            child: Image.asset("assets/images/dog.png"),
          ),
          GestureDetector(
            onTap: (){
              _execute("lion");
            },
            child: Image.asset("assets/images/lion.png"),
          ),
          GestureDetector(
            onTap: (){
              _execute("monkey");
            },
            child: Image.asset("assets/images/monkey.png"),
          ),
          GestureDetector(
            onTap: (){
              _execute("sheep");
            },
            child: Image.asset("assets/images/sheep.png"),
          ),
        ],
    );
  }
}
