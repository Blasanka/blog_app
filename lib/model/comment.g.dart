// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

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

Serializer<Comment> _$commentSerializer = new _$CommentSerializer();

class _$CommentSerializer implements StructuredSerializer<Comment> {
  @override
  final Iterable<Type> types = const [Comment, _$Comment];
  @override
  final String wireName = 'Comment';

  @override
  Iterable serialize(Serializers serializers, Comment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.text != null) {
      result
        ..add('text')
        ..add(serializers.serialize(object.text,
            specifiedType: const FullType(String)));
    }
    if (object.by != null) {
      result
        ..add('by')
        ..add(serializers.serialize(object.by,
            specifiedType: const FullType(String)));
    }
    if (object.createdOn != null) {
      result
        ..add('createdOn')
        ..add(serializers.serialize(object.createdOn,
            specifiedType: const FullType(DateTime)));
    }
    if (object.likes != null) {
      result
        ..add('likes')
        ..add(serializers.serialize(object.likes,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  Comment deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommentBuilder();

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
        case 'by':
          result.by = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdOn':
          result.createdOn = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'likes':
          result.likes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Comment extends Comment {
  @override
  final String text;
  @override
  final String by;
  @override
  final DateTime createdOn;
  @override
  final int likes;

  factory _$Comment([void updates(CommentBuilder b)]) =>
      (new CommentBuilder()..update(updates)).build();

  _$Comment._({this.text, this.by, this.createdOn, this.likes}) : super._();

  @override
  Comment rebuild(void updates(CommentBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentBuilder toBuilder() => new CommentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Comment &&
        text == other.text &&
        by == other.by &&
        createdOn == other.createdOn &&
        likes == other.likes;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, text.hashCode), by.hashCode), createdOn.hashCode),
        likes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Comment')
          ..add('text', text)
          ..add('by', by)
          ..add('createdOn', createdOn)
          ..add('likes', likes))
        .toString();
  }
}

class CommentBuilder implements Builder<Comment, CommentBuilder> {
  _$Comment _$v;

  String _text;

  String get text => _$this._text;

  set text(String text) => _$this._text = text;

  String _by;

  String get by => _$this._by;

  set by(String by) => _$this._by = by;

  DateTime _createdOn;

  DateTime get createdOn => _$this._createdOn;

  set createdOn(DateTime createdOn) => _$this._createdOn = createdOn;

  int _likes;

  int get likes => _$this._likes;

  set likes(int likes) => _$this._likes = likes;

  CommentBuilder();

  CommentBuilder get _$this {
    if (_$v != null) {
      _text = _$v.text;
      _by = _$v.by;
      _createdOn = _$v.createdOn;
      _likes = _$v.likes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Comment other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Comment;
  }

  @override
  void update(void updates(CommentBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Comment build() {
    final _$result = _$v ??
        new _$Comment._(text: text, by: by, createdOn: createdOn, likes: likes);
    replace(_$result);
    return _$result;
  }
}
