import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'comment.g.dart';

abstract class Comment implements Built<Comment, CommentBuilder> {
  static Serializer<Comment> get serializer => _$commentSerializer;

  @nullable
  String get text;

  @nullable
  String get by;

  @nullable
  DateTime get createdOn;

  @nullable
  int get likes;

  Comment._();

  factory Comment([updates (CommentBuilder b)]) = _$Comment;
}