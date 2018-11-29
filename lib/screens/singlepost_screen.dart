import 'package:flutter/material.dart';
import 'package:blog_app/model/post.dart';

class DetailedPostScreen extends StatelessWidget {
  final Post post;
  DetailedPostScreen(this.post);

  @override
  Widget build(BuildContext context) {
    String formattedDate = '${post.createdOn.year}:${post.createdOn.month}:${post.createdOn.day}  ${post.createdOn.hour}:${post.createdOn.minute}';

    return Scaffold(
      appBar: AppBar(
        title: Text(post.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(post.title, style: TextStyle(fontSize: 30.0),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
              child: Text(post.subtitle, style: TextStyle(fontSize: 20.0, color: Color(0xFF666666)),),
            ),
            Column(children: post.paragraphs.map(buildPara).toList()),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: post.tags.map(buildTag).toList(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('By ${post.author}  On  $formattedDate', style: TextStyle(fontSize: 12.0),),
            ),
          ],
        ),
      ),
    );
  }
  
  Widget buildPara(para) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text.rich(TextSpan(text: para.text), style: TextStyle(fontSize: 16.0, color: Color(0xFF333333)),),
    );
  }

  Widget buildTag(tag) {
    return Flexible(
      child: Container(
        margin: const EdgeInsets.only(right: 4.0),
        child: Chip(
          label: Text(tag.name),
          padding: const EdgeInsets.all(8.0),
        ),
      ),
    );
  }
}