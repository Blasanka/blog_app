import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'paragraph.g.dart';

abstract class Paragraph implements Built<Paragraph, ParagraphBuilder> {
  static Serializer<Paragraph> get serializer => _$paragraphSerializer;

  @nullable
  String get text;

  @nullable
  String get code;

  @nullable
  String get imageUrl;

  Paragraph._();

  factory Paragraph([updates (ParagraphBuilder b)]) = _$Paragraph;
}