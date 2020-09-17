import 'dart:ui';

import 'package:flutter/material.dart';

class TopCard extends StatefulWidget {
  final Color color;
  final String title;
  final String image;

  TopCard(this.title, this.color, this.image);
  @override
  TopCardState createState() => TopCardState();
}

class TopCardState extends State<TopCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            child: Image.asset(this.widget.image),
            color: this.widget.color,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              this.widget.title,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}

class SecondCard extends StatefulWidget {
  final Color color;
  final String title;
  final String subtitle;
  final String image;

  SecondCard(this.title, this.subtitle, this.color, this.image);
  @override
  SecondCardState createState() => SecondCardState();
}

class SecondCardState extends State<SecondCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 200,
            height: 200,
            child: Image.asset(this.widget.image),
            color: this.widget.color,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
            child: Text(
              this.widget.title,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text(
              this.widget.subtitle,
              style: TextStyle(color: Colors.grey[500]),
            ),
          )
        ],
      ),
    );
  }
}
