import 'package:blog_app/model/comment.dart';
import 'package:blog_app/model/paragraph.dart';
import 'package:blog_app/model/tag.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post.g.dart';

abstract class Post implements Built<Post, PostBuilder> {
  static Serializer<Post> get serializer => _$postSerializer;

  String get id;

  String get title;

  @nullable
  String get subtitle;

  @nullable
  String get previewText;

  @nullable
  BuiltList<Paragraph> get paragraphs;

  @nullable
  DateTime get createdOn;

  @nullable
  String get author; //if a company
  @nullable
  String get writtenBy; // and write for company or organization
  @nullable
  int get likes;

  @nullable
  BuiltList<Comment> get comments;

  @nullable
  String get category;

  @nullable
  BuiltList<Tag> get tags;

  @nullable
  String get imageUrl;

  @nullable
  String get url;

  Post._();

  factory Post([updates (PostBuilder b)]) = _$Post;
}