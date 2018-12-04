import 'package:http/http.dart' as http;
import 'dart:convert';

String title, subtitle, previewText;

Future<String> getPosts() async {
  var Response = await http.get(
    "https://github.com/Blasanka/myBlog/blob/master/data/posts.json",
    headers: {"Accept": "application/json"},
  );

  if (Response.statusCode == 200) {
    String responseBody = Response.body;
    var responseJSON = json.decode(responseBody);
    title = responseJSON['title'];
    subtitle = responseJSON['name'];
    previewText = responseJSON['avatar_url'];
    return title;
  } else {
    print('Something went wrong. \nResponse Code : ${Response.statusCode}');
    return title;
  }
}