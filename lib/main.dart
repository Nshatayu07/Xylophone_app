import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main(){
  runApp(
    XylophoneApp()
  );
}

class XylophoneApp extends StatelessWidget {
  // const XylophoneApp({Key? key}) : super(key: key);

 void PlaySound(int i){
   final player = AudioCache();
   player.play('note$i.wav');
 }
 Expanded BuildKey({Color color, int soundNo}){
   return Expanded(
     child: FlatButton(
       child: Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Icon(Icons.music_note),
         ],
       ),
       onPressed: (){
         PlaySound(soundNo);
       },
       color: color,
     ),
   );
 }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BuildKey(color: Colors.red, soundNo: 1),
                BuildKey(color: Colors.orange, soundNo: 2),
                BuildKey(color: Colors.yellow, soundNo: 3),
                BuildKey(color: Colors.green, soundNo: 4),
                BuildKey(color: Colors.blue, soundNo: 5),
                BuildKey(color: Colors.indigo.shade300, soundNo: 6),
                BuildKey(color: Colors.indigo, soundNo: 7),
                // Button();
              ],

            )
        ),
      ),
    );
  }
}


