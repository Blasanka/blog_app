//import 'package:blog_app/model/post.dart';
import 'dart:convert' as json;
import 'package:blog_app/model/comment.dart';
import 'package:blog_app/model/paragraph.dart';
import 'package:blog_app/model/tag.dart';
import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'serializer.dart';

part 'json_parsing.g.dart';

abstract class Post implements Built<Post, PostBuilder> {
  static Serializer<Post> get serializer => _$postSerializer;

  String get id;
  String get title;
  @nullable
  String get subtitle;
  @nullable
  String get previewText;
  @nullable
  List<Paragraph> get paragraphs;
  @nullable
  DateTime get createdOn;
  @nullable
  String get author;//if a company
  @nullable
  String get writtenBy;// and write for company or organization
  @nullable
  int get likes;
  @nullable
  List<Comment> get comments;
  @nullable
  String get category;
  @nullable
  List<Tag> get tags;
  @nullable
  String get imageUrl;
  @nullable
  String get url;

  Post._();
  factory Post([updates (PostBuilder b)]) = _$Post;
}

List<int> parseTopStories(String jsonStr) {
//  final parsed = json.jsonDecode(jsonStr);
//  final listOfIds = List<int>.from(parsed);
//  return listOfIds;
  return null;
}

Post parsePost(String jsonStr) {
  final parsed = json.jsonDecode(jsonStr);
  Post post = standardSerializers.deserializeWith(Post.serializer, parsed);
  //serializer
  //causes InternalLinkedHashMap<String, dynamic>' is not a subtype of type String'
  return post;
}

//flutter packages pub run build_runner build