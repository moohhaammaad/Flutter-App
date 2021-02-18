import 'package:dio/dio.dart';
import 'package:flutter_app/models/post.dart';

class PostService {
  String url = "https://jsonplaceholder.typicode.com/posts";

  Future<List<Post>> getPosts() async {
    List<Post> posts = new List();

    var dio = Dio();
    Response response = await dio.get(url);
    var data = response.data;
    print(data);
    data.forEach((value) {
      posts.add(Post.fromJson(value));
    });
    return posts;
    //print(response.data.toString());
  }
}
