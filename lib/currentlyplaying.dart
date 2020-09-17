import 'package:flutter/material.dart';

class CurrentlyPlaying extends StatefulWidget {
  @override
  CurrentlyPlayingState createState() => CurrentlyPlayingState();
}

class CurrentlyPlayingState extends State<CurrentlyPlaying> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.transparent,elevation: 0.0,
        centerTitle: true,
        title: Column(
          children: [
            Text('PLAYING FROM YOUR LIBRARY', style: TextStyle(fontSize: 10),),
            Text('Songs', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),)
          ],
        ),
        // leading: Icon(Icons.keyboard_arrow_down, color: Colors.white),
        actions: [
          Icon(Icons.more_vert)
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(28,44,28,10),
              child: Image.asset('images/workiggy.jpg', width: 290, height: 290,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8,14,32,0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                  Column(
                    children: [
                      Text('Work', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white)),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25,6,0,8),
                        child: Text('Iggy Azalea', style: TextStyle(fontSize: 18, color: Colors.grey),),
                      )
                    ],
                  ),
                  Icon(Icons.favorite, color: Colors.green,)
            ],),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(32,8,32,8),
            child: Divider(thickness: 2, height: 2, color: Colors.grey,),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(32,2,32,2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('00:15', style: TextStyle(color: Colors.white),),
                Text('3:45', style: TextStyle(color: Colors.white),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8,28,8,28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.shuffle, color: Colors.green),
                Icon(Icons.skip_previous, size:40, color: Colors.white),
                Icon(Icons.play_circle_filled, size: 70, color: Colors.white),
                Icon(Icons.skip_next, size:40, color: Colors.white),
                Icon(Icons.repeat_one, color: Colors.green)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(32,17,32,20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.devices, color: Colors.white),
                Icon(Icons.playlist_play, color: Colors.white)
              ],
            ),
          ),
        ],
      ),
    );
  }
}