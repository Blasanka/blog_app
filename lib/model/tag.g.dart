// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag.dart';

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

Serializer<Tag> _$tagSerializer = new _$TagSerializer();

class _$TagSerializer implements StructuredSerializer<Tag> {
  @override
  final Iterable<Type> types = const [Tag, _$Tag];
  @override
  final String wireName = 'Tag';

  @override
  Iterable serialize(Serializers serializers, Tag object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Tag deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TagBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Tag extends Tag {
  @override
  final String name;
  @override
  final String url;

  factory _$Tag([void updates(TagBuilder b)]) =>
      (new TagBuilder()..update(updates)).build();

  _$Tag._({this.name, this.url}) : super._();

  @override
  Tag rebuild(void updates(TagBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  TagBuilder toBuilder() => new TagBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Tag && name == other.name && url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Tag')
          ..add('name', name)
          ..add('url', url))
        .toString();
  }
}

class TagBuilder implements Builder<Tag, TagBuilder> {
  _$Tag _$v;

  String _name;

  String get name => _$this._name;

  set name(String name) => _$this._name = name;

  String _url;

  String get url => _$this._url;

  set url(String url) => _$this._url = url;

  TagBuilder();

  TagBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Tag other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Tag;
  }

  @override
  void update(void updates(TagBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Tag build() {
    final _$result = _$v ?? new _$Tag._(name: name, url: url);
    replace(_$result);
    return _$result;
  }
}
