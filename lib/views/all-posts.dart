import 'package:flutter/material.dart';
import 'package:flutter_app/models/post.dart';
import 'package:flutter_app/services/postsService.dart';
//import 'package:flutter_app/views/post-details.dart';
import 'package:flutter_app/views/my-card.dart';
import 'package:flutter_app/views/post-details.dart';

class AllPosts extends StatefulWidget {
  @override
  _AllPostsState createState() => _AllPostsState();
}

class _AllPostsState extends State<AllPosts> {
  List<Post> postList = new List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPostsFromServer();
  }

  getPostsFromServer() async {
    postList = await PostService().getPosts();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "All Posts",
        ),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: postList.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PostDetails(
                      postBody: postList[index].body,
                      postTilte: postList[index].title,
                    ),
                  ),
                );
              },
              child: MyCard(
                text: postList[index].title,
                postBody: postList[index].body,
              ),
            );
          }),
    );
  }
}
