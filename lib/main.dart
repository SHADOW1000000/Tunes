import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(const Tunes());
}
class Tunes extends StatefulWidget{
  const Tunes({super.key});

  @override
  State<Tunes> createState() => _TunesState();
}

class _TunesState extends State<Tunes> {
  void playAudio(int musicNumber){
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio("music-$musicNumber.mp3"),
    );
  }
  Expanded myButton(int musicNumber , String musicName, Color musicColor ){
    return Expanded(
      child:ElevatedButton(
        onPressed: (){
          playAudio(musicNumber);
          setState(() {
          });
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Row(
            children: [
              Icon(Icons.music_note,color: musicColor,),
              const SizedBox(width: 30
              ),
              Text(musicName,
                style: TextStyle(fontSize: 30,color: musicColor
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text("Tunes"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            myButton(1,"samsung galaxy",Colors.red),
            myButton(2,"samsung note",Colors.green),
            myButton(3,"nokia",Colors.blue),
            myButton(4,"iphone 11",Colors.yellow),
            myButton(5,"whatsapp",Colors.black),
            myButton(6,"samsung s7",Colors.brown),
            myButton(7,"iphone 6",Colors.indigo),
          ],
        ),
      ),
    );
  }
}