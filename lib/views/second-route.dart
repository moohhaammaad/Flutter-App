import 'package:flutter/material.dart';
import 'third-route.dart';
import 'all-posts.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: SecondRoute(),
  ));
}

class SecondRoute extends StatefulWidget {
  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Post"),
      ),
      body: SizedBox(
        height: 400,
        child: Card(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Row(
                  children: [
                    Container(
                      width: 50.0,
                      height: 50.0,
                      margin: EdgeInsets.only(left: 20.0),
                      child: Image.network(
                          'https://yt3.ggpht.com/ytc/AAUvwnhqxIOAZQ5sa7VtGMUpY3lmRO8tMHDidWx0oqkr=s900-c-k-c0x00ffffff-no-rj'),
                    ),
                    Text(
                      'Introducing Flutter',
                      style: TextStyle(fontSize: 30.0),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200.0,
                color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ThirdRoute(),
                              ),
                            );
                          },
                          child: Image.network(
                            "https://picsum.photos/seed/picsum/200/300",
                          ),
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ThirdRoute(),
                              ),
                            );
                          },
                          child: Image.network(
                            "https://picsum.photos/seed/picsum/200/300",
                          ),
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ThirdRoute(),
                              ),
                            );
                          },
                          child: Image.network(
                            "https://picsum.photos/seed/picsum/200/300",
                          ),
                        ),
                        flex: 1,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.thumb_up,
                      color: Colors.blue,
                      size: 24.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text('Like'),
                    SizedBox(
                      width: 30.0,
                    ),
                    Icon(
                      Icons.comment,
                      color: Colors.black,
                      size: 24.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text('Comment'),
                  ],
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    //Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AllPosts(),
                      ),
                    );
                  },
                  child: Text('See All Posts'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class SecondRoute extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("First Post"),
//       ),
//       body: SizedBox(
//         height: 400,
//         child: Card(
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 10.0),
//                 child: Row(
//                   children: [
//                     Container(
//                       width: 50.0,
//                       height: 50.0,
//                       margin: EdgeInsets.only(left: 20.0),
//                       child: Image.network(
//                           'https://yt3.ggpht.com/ytc/AAUvwnhqxIOAZQ5sa7VtGMUpY3lmRO8tMHDidWx0oqkr=s900-c-k-c0x00ffffff-no-rj'),
//                     ),
//                     Text(
//                       'Introducing Flutter',
//                       style: TextStyle(fontSize: 30.0),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 height: 200.0,
//                 color: Colors.red,
//                 child: Row(
//                   children: <Widget>[
//                     Expanded(
//                       child: Container(
//                         child: FlatButton(
//                           onPressed: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => ThirdRoute(),
//                               ),
//                             );
//                           },
//                           child: Image.network(
//                             "https://picsum.photos/seed/picsum/200/300",
//                           ),
//                         ),
//                       ),
//                       flex: 1,
//                     ),
//                     Expanded(
//                       child: Container(
//                         child: FlatButton(
//                           onPressed: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => ThirdRoute(),
//                               ),
//                             );
//                           },
//                           child: Image.network(
//                             "https://picsum.photos/seed/picsum/200/300",
//                           ),
//                         ),
//                       ),
//                       flex: 1,
//                     ),
//                     Expanded(
//                       child: Container(
//                         child: FlatButton(
//                           onPressed: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => ThirdRoute(),
//                               ),
//                             );
//                           },
//                           child: Image.network(
//                             "https://picsum.photos/seed/picsum/200/300",
//                           ),
//                         ),
//                       ),
//                       flex: 1,
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 padding: EdgeInsets.all(10.0),
//                 child: Row(
//                   children: [
//                     Icon(
//                       Icons.thumb_up,
//                       color: Colors.blue,
//                       size: 24.0,
//                       semanticLabel: 'Text to announce in accessibility modes',
//                     ),
//                     SizedBox(
//                       width: 8.0,
//                     ),
//                     Text('Like'),
//                     SizedBox(
//                       width: 30.0,
//                     ),
//                     Icon(
//                       Icons.comment,
//                       color: Colors.black,
//                       size: 24.0,
//                       semanticLabel: 'Text to announce in accessibility modes',
//                     ),
//                     SizedBox(
//                       width: 8.0,
//                     ),
//                     Text('Comment'),
//                   ],
//                 ),
//               ),
//               Center(
//                 child: ElevatedButton(
//                   onPressed: () {
//                     //Navigator.pop(context);
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => AllPosts(),
//                       ),
//                     );
//                   },
//                   child: Text('See All Posts'),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
