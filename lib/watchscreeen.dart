import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Watchscreen extends StatefulWidget {
  const Watchscreen({super.key});

  @override
  State<Watchscreen> createState() => _WatchscreenState();
}

class _WatchscreenState extends State<Watchscreen> {
   void playsounds(int soundnumber) {
    final player = AudioPlayer();
    player.play(AssetSource('$soundnumber.mp3'));
  }
  

  Widget buildkey({required Color color, required int soundnumber}) {
    return Expanded(
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MaterialButton(
            color: color,
            onPressed: () {
              playsounds(soundnumber);
            },
            height: 50,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 2, color: Colors.black),
            ),
          ),
          SizedBox(
            height: 5,
          )
        ],
      ),
    );
   
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(
        margin: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildkey(color: Colors.black, soundnumber: 1),
            buildkey(color: Colors.white, soundnumber: 2),
            buildkey(color: Colors.black, soundnumber: 3),
            buildkey(color: Colors.white, soundnumber: 4),
            buildkey(color: Colors.black, soundnumber: 5),
            buildkey(color: Colors.white, soundnumber: 6),
            buildkey(color: Colors.black, soundnumber: 7),
            buildkey(color: Colors.white, soundnumber: 8),
            buildkey(color: Colors.black, soundnumber: 9),
            buildkey(color: Colors.white, soundnumber: 10),
            buildkey(color: Colors.black, soundnumber: 11),
            buildkey(color: Colors.white, soundnumber: 12),
            buildkey(color: Colors.black, soundnumber: 13),
          ],
        ),
      )),
    );
  }
}