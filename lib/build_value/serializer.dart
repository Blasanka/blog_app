library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/serializer.dart';
import 'package:blog_app/model/comment.dart';
import 'package:blog_app/model/paragraph.dart';
import 'package:blog_app/model/tag.dart';
import 'package:blog_app/build_value/json_parsing.dart';

part 'serializer.g.dart';

/// Collection of generated serializers for the built_value chat example.
@SerializersFor(const [
  Post
])
final Serializers serializers = _$serializers;

Serializers standardSerializers =
  (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();