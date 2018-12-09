import 'dart:convert' as json;

import 'package:blog_app/model/post.dart';

import 'serializers.dart';

List<Post> parsePosts (String jsonStr) {
  List<dynamic> parsed = json.jsonDecode(jsonStr);
  List<Post> posts = parsed.map((f) {
    return standardSerializers.deserializeWith(Post.serializer, f);
  }).toList();
//  Post post = standardSerializers.deserializeWith(Post.serializer, parsed.first);
  return posts;
}

//flutter packages pub run build_runner build

//serializer
//causes InternalLinkedHashMap<String, dynamic>' is not a subtype of type String'