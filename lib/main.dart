import 'package:flutter/material.dart';
import 'package:spotify_clone/currentlyplaying.dart';
import 'elements/Cards.dart';

void main() {
  runApp(MaterialApp(title: 'Spotify Clone', home: MyHomePage()));
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black87,
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(Icons.settings),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Text(
                    'Good afternoon',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 20, 8, 20),
              child: Flexible(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TopCard('Liked Songs', Colors.grey, 'images/likedsongs.jpg'),
                      TopCard('Mega Hit Mix', Colors.cyanAccent, 'images/megahits.jpg'),
                      TopCard('Pink Friday', Colors.pinkAccent, 'images/pinkfriday.jpg'),
                      TopCard('Cleaning Kit', Colors.orange, 'images/cleaningkit.jpg'),
                      TopCard('Top Hits of 2016', Colors.green, 'images/tophits2016.jpg'),
                    ],
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(8)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Text(
                    'More of what you like',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 20, 8, 20),
              child: Flexible(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SecondCard('Today\'s Top Hits',
                          'J Balvin, Juice WRLD, Drake...', Colors.grey, 'images/tophits.jpg'),
                      SecondCard('Just Try To Forget These So..', 'Passenger, Milky Chance, L...', Colors.green, 'images/forget.jpg'),
                      SecondCard('Best of the Decade For You', 'Ariana Grande, Dua Lipa, Po...', Colors.pink, 'images/decade.jpg'),
                      SecondCard('Happy Hits', 'Harry Styles, Ed Sheeran, Du...', Colors.lightBlue, 'images/happyhits.jpg'),
                      SecondCard('Guilty Pleasures', 'One Direction, Justin Bieber,...', Colors.lightGreen, 'images/guiltypleasures.jpg'),
                    ],
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(8)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Text(
                    'Popular Playlists',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 20, 8, 70),
              child: Flexible(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                  children: [
                    SecondCard('Hot Country',
                        'Diplo, Morgan Wallen, Luke...', Colors.grey, 'images/hotcountry.jpg'),
                    SecondCard('Pumped Pop', 'Harry Styles, Khalid, BTS, Ta...', Colors.lightBlue, 'images/pumpedpop.jpg'),
                    SecondCard('Chill Hits', 'Harry Styles, Ariana Grande,...', Colors.lightBlue, 'images/chillihits.jpg'),
                    SecondCard('Lo-Fi Beats', 'Koosen, Kupla, Green Bull, A...', Colors.lightBlue, 'images/lofibeats.jpg'),
                  ],
                ),
                              ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: BottomAppBar(
        color: Colors.grey[900],
        elevation: 0.0,
        child: InkWell(
          onTap: () {
            Navigator.push(
        context, MaterialPageRoute(builder: (context) => CurrentlyPlaying()));
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.keyboard_arrow_up, color: Colors.white,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(18,10,8,8),
                  child: Text('Work - Iggy Azalea', style:TextStyle(color:Colors.white, fontWeight: FontWeight.bold)),
                ),
                Row(
                  children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,8,16,0),
                    child: Icon(Icons.play_circle_outline, color: Colors.white,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,8,0,0),
                    child: Icon(Icons.skip_next, color: Colors.white,),
                  )
                ],)
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[900],
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.white), 
          title: Text('Home', style: TextStyle(color: Colors.white, fontSize: 12),)
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search, color: Colors.white), 
          title: Text('Search', style: TextStyle(color: Colors.white, fontSize: 12),)
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_music, color: Colors.white), 
          title: Text('Your Library', style: TextStyle(color: Colors.white, fontSize: 12),))
      ],),
    );
  }
}
