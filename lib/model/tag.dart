import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tag.g.dart';

abstract class Tag implements Built<Tag, TagBuilder> {
  static Serializer<Tag> get serializer => _$tagSerializer;

  @nullable
  String get name;

  @nullable
  String get url;

  Tag._();

  factory Tag([updates (TagBuilder b)]) = _$Tag;
}