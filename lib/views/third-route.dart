import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: ThirdRoute(),
  ));
}

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Route"),
      ),
      body: Column(
        children: [
          Center(
            child: Image.network(
              "https://picsum.photos/seed/picsum/200/300",
            ),
          ),
        ],
      ),
    );
  }
}
