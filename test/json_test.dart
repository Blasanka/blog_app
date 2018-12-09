import 'package:blog_app/built_value/json_parsing.dart';
import 'package:http/http.dart' as http;
import 'package:test/test.dart';

void main() {
//  test("parses posts.json", () {
//    const jsonString = """{"id":"post1","title":"this is"}""";
//
//    expect(parsePost(jsonString).id, "post1");
//  });
//
  test('posts myBlog repo', () async {
    final url = "https://blasanka.github.io/myBlog/data/posts.json";
    final res = await http.get(url);
    if (res.statusCode == 200) {
      expect(parsePosts(res.body)[0].id, "post1");
    }
  });
}