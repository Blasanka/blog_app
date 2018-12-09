import 'dart:async';

import 'package:blog_app/built_value/json_parsing.dart';
import 'package:blog_app/model/post.dart';
import 'package:http/http.dart' as http;

Future<List<Post>> getPosts() async {
  final url = "https://blasanka.github.io/myBlog/data/posts.json";
  final res = await http.get(url);
  if (res.statusCode == 200) {
    return parsePosts(res.body);
  }
}
