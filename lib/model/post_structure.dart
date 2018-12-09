import './comment.dart';
import './paragraph.dart';
import './tag.dart';

class Post {
  final int id;
  final String title;
  final String subtitle;
  final String previewText;
  final List<Paragraph> paragraphs;
  final DateTime createdOn;
  final String author; //if a company
  final String writtenBy; // and write for company or organization
  final int likes;
  final List<Comment> comments;
  final String category;
  final List<Tag> tags;
  final String imageUrl;
  final String url;

  const Post(
      {this.id,
      this.title,
      this.subtitle,
      this.previewText,
      this.paragraphs,
      this.createdOn,
      this.author,
      this.writtenBy,
      this.likes = 0,
      this.comments,
      this.category,
      this.tags,
      this.imageUrl,
      this.url});

  factory Post.fromJson(Map<String, dynamic> json) {
    if (json == null) return null;

    return Post(
      tags: json['tags'] ?? '[tags]',
      title: json['title'] ?? '[title]',
      subtitle: json['subtitle'] ?? '[subtitle]',
    );
  }
}

final posts = [
  new Post(
      id: 1,
      title: 'Flutter crash course',
      subtitle: 'The complete guide to Flutter',
      previewText:
          'This is a course I have developed for beginners to learn flutter basics to advance with Firebase',
      paragraphs: <Paragraph>[
        new Paragraph(
            text:
                "Hello everyone, let's learn awesome Flutter. As a introduction to this course ...."),
        new Paragraph(
            text:
                "Okay, what is flutter? it is a lightweight UI framework develop to build cross platform mobile application using single codebase...",
            imageUrl: 'assets/images/flutter/owel.png')
      ],
      createdOn: DateTime.now(),
      author: 'Asanka B.L.',
      writtenBy: 'Asanka B.L.',
      comments: <Comment>[],
      category: 'Mobile App development',
      tags: <Tag>[
        new Tag(name: 'Flutter', url: 'posts/flutter/'),
        new Tag(name: 'App development', url: 'posts/development/'),
        new Tag(name: 'Mobile', url: 'posts/mobile/'),
        new Tag(name: 'Dart', url: 'posts/dart/'),
      ],
      imageUrl: 'assets/images/flutter.png',
      url: 'www.google.com' //posts/flutter/flutter_crash_course/
      ),
  new Post(
      id: 2,
      title: 'AngularJS is what?',
      subtitle: 'What is AngularJS and why do we still using it',
      previewText:
          'In this blogpost I have talked about, why people still use AngularJS rather than Angular2+',
      paragraphs: <Paragraph>[
        new Paragraph(
            text:
                "Hello devs, do you guys have hard time of understanding what the hack is going on??"),
        new Paragraph(
            text: "Okay, This is how I tried to help you guys understand..",
            imageUrl: 'assets/images/angularjs/conf.png')
      ],
      createdOn: DateTime.now(),
      author: 'Asanka B.L.',
      writtenBy: 'Asanka B.L.',
      comments: <Comment>[],
      category: 'Web Development',
      tags: <Tag>[
        new Tag(name: 'Web development', url: 'posts/web/'),
        new Tag(name: 'AngularJS', url: 'posts/angularjs/'),
        new Tag(name: 'Angular', url: 'posts/angular/'),
      ],
      imageUrl: 'assets/images/angularjs.png',
      url: 'posts/angularjs/why_still_angularjs/'),
];
