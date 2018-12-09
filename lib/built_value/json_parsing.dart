import 'dart:convert' as json;

import 'package:blog_app/model/comment.dart';
import 'package:blog_app/model/paragraph.dart';
import 'package:blog_app/model/post.dart';
import 'package:blog_app/model/tag.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

List<Post> parsePosts (String jsonStr) {
  List<dynamic> parsed = json.jsonDecode(jsonStr);
  List<Post> posts = parsed.map((f) {
    for (Serializer<Object> obj in [
      Comment.serializer, Tag.serializer, Paragraph.serializer
    ]) {
      standardSerializers.deserializeWith(obj, f);
    }
    return standardSerializers.deserializeWith(Post.serializer, f);
  }).toList();
  return posts;
}


//  Post post = standardSerializers.deserializeWith(Post.serializer, parsed.first);

//flutter packages pub run build_runner build

//serializer
//causes InternalLinkedHashMap<String, dynamic>' is not a subtype of type String'