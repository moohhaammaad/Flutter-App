import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostDetails extends StatefulWidget {
  String postTilte;
  String postBody;
  PostDetails({this.postBody, this.postTilte});
  @override
  _PostDetailsState createState() => _PostDetailsState();
}

class _PostDetailsState extends State<PostDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Post Details",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              child: Text(
                widget.postTilte,
                style: TextStyle(color: Colors.amber, fontSize: 30),
              ),
            ),
            Card(
              color: Colors.blueGrey[800],
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  widget.postBody,
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
