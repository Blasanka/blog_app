
import 'package:blog_app/build_value/json_parsing.dart';
import 'package:test/test.dart';

void main() {
  test("parses posts.json", () {
    const jsonString = """[{"id":"post1","title":"this is"},{"id":"post2","title":"is"}]""";

    expect(parsePost(jsonString).id, 'post1');
  });
}