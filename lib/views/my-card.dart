import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  String text;
  String postBody;
  MyCard({this.text, this.postBody});
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey[900],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Stack(
            children: [
              Text(
                widget.text,
                style: TextStyle(color: Colors.amber, fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
