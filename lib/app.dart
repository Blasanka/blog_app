import 'package:blog_app/api/get_posts.dart';
import 'package:blog_app/model/post.dart';
import 'package:flutter/material.dart';

import 'screens/singlepost_screen.dart';

class BlogApp extends StatelessWidget {
  final String title;
  const BlogApp(this.title);

  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Post>>(
        future: getPosts(),
        builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                  children: snapshot.data.map(_buildPost).toList()
              ),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        }
    );
  }

  Widget _buildPost(Post post) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: ListTile( //TODO: create an ExpansionTile
        title: Text(
            post.title,
          style: TextStyle(fontSize: 22.0)),
        subtitle: Text(
          post.subtitle,
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailedPostScreen(post)),
          );
        },
      ),
    );
  }
}
