import 'dart:io';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart ';
import 'package:audioplayers/audioplayers.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   static AudioCache player = AudioCache();

  playsounds(txt){
    switch (txt) {
      case "ONE":
        player.play('one.wav');
        break;
         case "TWO":
        player.play("two.wav");
        break;
         case "THREE":
        player.play("three.wav");
        break;
         case "FOUR":
        player.play("four.wav");
        break;
         case "FIVE":
        player.play("five.wav");
        break;
         case "SIX":
        player.play("six.wav");
        break;
         case "SEVEN":
        player.play("seven.wav");
        break;
         case "EIGHT":
        player.play("eight.wav");
        break;
         case "NINE":
        player.play("nine.wav");
        break;
         case "TEN":
        player.play("ten.wav");
        break;
      default:
    }
  }
  Widget customContainer(txt, color) {
    return Expanded(
        flex: 1,
        child: InkWell(
          onTap: () {
           playsounds(txt);
          },
          child: Container(
              margin: EdgeInsets.all(2),
              width: 200,
              color: color,
              height: 130,
              child: Center(
                  child: Text(
                txt,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ))),
        ));
  }

  Widget customrow(txt1, txt2, color1, color2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        customContainer(
          txt1,
          color1,
        ),
        customContainer(
          txt2,
          color2,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spanish number'),
      ),
      body: Container(
        margin: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            customrow("ONE", "TWO", Colors.red, Colors.blue),
            customrow("THREE", "FOUR", Colors.cyan, Colors.green),
            customrow("FIVE", "SIX", Colors.black, Colors.pink),
            customrow("SEVEN", "EIGHT", Colors.amber, Colors.deepOrange),
            customrow("NINE", "TEN", Colors.indigo, Colors.red),
          ],
        ),
      ),
    );
  }
}
