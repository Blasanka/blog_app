// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paragraph.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_catches_without_on_clauses
// ignore_for_file: avoid_returning_this
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first
// ignore_for_file: unnecessary_const
// ignore_for_file: unnecessary_new
// ignore_for_file: test_types_in_equals

Serializer<Paragraph> _$paragraphSerializer = new _$ParagraphSerializer();

class _$ParagraphSerializer implements StructuredSerializer<Paragraph> {
  @override
  final Iterable<Type> types = const [Paragraph, _$Paragraph];
  @override
  final String wireName = 'Paragraph';

  @override
  Iterable serialize(Serializers serializers, Paragraph object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.text != null) {
      result
        ..add('text')
        ..add(serializers.serialize(object.text,
            specifiedType: const FullType(String)));
    }
    if (object.code != null) {
      result
        ..add('code')
        ..add(serializers.serialize(object.code,
            specifiedType: const FullType(String)));
    }
    if (object.imageUrl != null) {
      result
        ..add('imageUrl')
        ..add(serializers.serialize(object.imageUrl,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Paragraph deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParagraphBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imageUrl':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Paragraph extends Paragraph {
  @override
  final String text;
  @override
  final String code;
  @override
  final String imageUrl;

  factory _$Paragraph([void updates(ParagraphBuilder b)]) =>
      (new ParagraphBuilder()..update(updates)).build();

  _$Paragraph._({this.text, this.code, this.imageUrl}) : super._();

  @override
  Paragraph rebuild(void updates(ParagraphBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ParagraphBuilder toBuilder() => new ParagraphBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Paragraph &&
        text == other.text &&
        code == other.code &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, text.hashCode), code.hashCode), imageUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Paragraph')
          ..add('text', text)
          ..add('code', code)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class ParagraphBuilder implements Builder<Paragraph, ParagraphBuilder> {
  _$Paragraph _$v;

  String _text;

  String get text => _$this._text;

  set text(String text) => _$this._text = text;

  String _code;

  String get code => _$this._code;

  set code(String code) => _$this._code = code;

  String _imageUrl;

  String get imageUrl => _$this._imageUrl;

  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  ParagraphBuilder();

  ParagraphBuilder get _$this {
    if (_$v != null) {
      _text = _$v.text;
      _code = _$v.code;
      _imageUrl = _$v.imageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Paragraph other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Paragraph;
  }

  @override
  void update(void updates(ParagraphBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Paragraph build() {
    final _$result =
        _$v ?? new _$Paragraph._(text: text, code: code, imageUrl: imageUrl);
    replace(_$result);
    return _$result;
  }
}
