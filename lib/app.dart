import 'package:flutter/material.dart';
import 'model/post.dart';
import 'screens/singlepost_screen.dart';

class BlogApp extends StatelessWidget {
  final String title;
  const BlogApp(this.title);

  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        appBar: AppBar(title: Text(title), ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Post> _posts = posts;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _posts.map(_buildPost).toList(),
    );
  }

  Widget _buildPost(Post post) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: ListTile(
        title: Text(
          post.title,
          style: TextStyle(fontSize: 22.0)),
        subtitle: Text(
          post.subtitle,
        ),
        onTap: ()  {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailedPostScreen(post)),
          );
        },
      ),
    );
  }
}