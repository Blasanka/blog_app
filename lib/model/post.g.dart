// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

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

Serializer<Post> _$postSerializer = new _$PostSerializer();

class _$PostSerializer implements StructuredSerializer<Post> {
  @override
  final Iterable<Type> types = const [Post, _$Post];
  @override
  final String wireName = 'Post';

  @override
  Iterable serialize(Serializers serializers, Post object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
    ];
    if (object.subtitle != null) {
      result
        ..add('subtitle')
        ..add(serializers.serialize(object.subtitle,
            specifiedType: const FullType(String)));
    }
    if (object.previewText != null) {
      result
        ..add('previewText')
        ..add(serializers.serialize(object.previewText,
            specifiedType: const FullType(String)));
    }
    if (object.paragraphs != null) {
      result
        ..add('paragraphs')
        ..add(serializers.serialize(object.paragraphs,
            specifiedType:
            const FullType(BuiltList, const [const FullType(Paragraph)])));
    }
    if (object.createdOn != null) {
      result
        ..add('createdOn')
        ..add(serializers.serialize(object.createdOn,
            specifiedType: const FullType(DateTime)));
    }
    if (object.author != null) {
      result
        ..add('author')
        ..add(serializers.serialize(object.author,
            specifiedType: const FullType(String)));
    }
    if (object.writtenBy != null) {
      result
        ..add('writtenBy')
        ..add(serializers.serialize(object.writtenBy,
            specifiedType: const FullType(String)));
    }
    if (object.likes != null) {
      result
        ..add('likes')
        ..add(serializers.serialize(object.likes,
            specifiedType: const FullType(int)));
    }
    if (object.comments != null) {
      result
        ..add('comments')
        ..add(serializers.serialize(object.comments,
            specifiedType:
            const FullType(BuiltList, const [const FullType(Comment)])));
    }
    if (object.category != null) {
      result
        ..add('category')
        ..add(serializers.serialize(object.category,
            specifiedType: const FullType(String)));
    }
    if (object.tags != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(object.tags,
            specifiedType:
            const FullType(BuiltList, const [const FullType(Tag)])));
    }
    if (object.imageUrl != null) {
      result
        ..add('imageUrl')
        ..add(serializers.serialize(object.imageUrl,
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
  Post deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subtitle':
          result.subtitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'previewText':
          result.previewText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'paragraphs':
          result.paragraphs.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(Paragraph)])) as BuiltList);
          break;
        case 'createdOn':
          result.createdOn = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'author':
          result.author = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'writtenBy':
          result.writtenBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'likes':
          result.likes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'comments':
          result.comments.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(Comment)])) as BuiltList);
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType:
                  const FullType(BuiltList, const [const FullType(Tag)]))
          as BuiltList);
          break;
        case 'imageUrl':
          result.imageUrl = serializers.deserialize(value,
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

class _$Post extends Post {
  @override
  final String id;
  @override
  final String title;
  @override
  final String subtitle;
  @override
  final String previewText;
  @override
  final BuiltList<Paragraph> paragraphs;
  @override
  final DateTime createdOn;
  @override
  final String author;
  @override
  final String writtenBy;
  @override
  final int likes;
  @override
  final BuiltList<Comment> comments;
  @override
  final String category;
  @override
  final BuiltList<Tag> tags;
  @override
  final String imageUrl;
  @override
  final String url;

  factory _$Post([void updates(PostBuilder b)]) =>
      (new PostBuilder()..update(updates)).build();

  _$Post._(
      {this.id,
      this.title,
      this.subtitle,
      this.previewText,
      this.paragraphs,
      this.createdOn,
      this.author,
      this.writtenBy,
      this.likes,
      this.comments,
      this.category,
      this.tags,
      this.imageUrl,
      this.url})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Post', 'id');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('Post', 'title');
    }
  }

  @override
  Post rebuild(void updates(PostBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  PostBuilder toBuilder() => new PostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Post &&
        id == other.id &&
        title == other.title &&
        subtitle == other.subtitle &&
        previewText == other.previewText &&
        paragraphs == other.paragraphs &&
        createdOn == other.createdOn &&
        author == other.author &&
        writtenBy == other.writtenBy &&
        likes == other.likes &&
        comments == other.comments &&
        category == other.category &&
        tags == other.tags &&
        imageUrl == other.imageUrl &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc($jc(0, id.hashCode),
                                                        title.hashCode),
                                                    subtitle.hashCode),
                                                previewText.hashCode),
                                            paragraphs.hashCode),
                                        createdOn.hashCode),
                                    author.hashCode),
                                writtenBy.hashCode),
                            likes.hashCode),
                        comments.hashCode),
                    category.hashCode),
                tags.hashCode),
            imageUrl.hashCode),
        url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Post')
          ..add('id', id)
          ..add('title', title)
          ..add('subtitle', subtitle)
          ..add('previewText', previewText)
          ..add('paragraphs', paragraphs)
          ..add('createdOn', createdOn)
          ..add('author', author)
          ..add('writtenBy', writtenBy)
          ..add('likes', likes)
          ..add('comments', comments)
          ..add('category', category)
          ..add('tags', tags)
          ..add('imageUrl', imageUrl)
          ..add('url', url))
        .toString();
  }
}

class PostBuilder implements Builder<Post, PostBuilder> {
  _$Post _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _subtitle;
  String get subtitle => _$this._subtitle;
  set subtitle(String subtitle) => _$this._subtitle = subtitle;

  String _previewText;
  String get previewText => _$this._previewText;
  set previewText(String previewText) => _$this._previewText = previewText;

  ListBuilder<Paragraph> _paragraphs;

  ListBuilder<Paragraph> get paragraphs =>
      _$this._paragraphs ??= new ListBuilder<Paragraph>();

  set paragraphs (ListBuilder<Paragraph> paragraphs) =>
      _$this._paragraphs = paragraphs;

  DateTime _createdOn;
  DateTime get createdOn => _$this._createdOn;
  set createdOn(DateTime createdOn) => _$this._createdOn = createdOn;

  String _author;
  String get author => _$this._author;
  set author(String author) => _$this._author = author;

  String _writtenBy;
  String get writtenBy => _$this._writtenBy;
  set writtenBy(String writtenBy) => _$this._writtenBy = writtenBy;

  int _likes;
  int get likes => _$this._likes;
  set likes(int likes) => _$this._likes = likes;

  ListBuilder<Comment> _comments;

  ListBuilder<Comment> get comments =>
      _$this._comments ??= new ListBuilder<Comment>();

  set comments (ListBuilder<Comment> comments) => _$this._comments = comments;

  String _category;
  String get category => _$this._category;
  set category(String category) => _$this._category = category;

  ListBuilder<Tag> _tags;

  ListBuilder<Tag> get tags => _$this._tags ??= new ListBuilder<Tag>();

  set tags (ListBuilder<Tag> tags) => _$this._tags = tags;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  PostBuilder();

  PostBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _title = _$v.title;
      _subtitle = _$v.subtitle;
      _previewText = _$v.previewText;
      _paragraphs = _$v.paragraphs?.toBuilder();
      _createdOn = _$v.createdOn;
      _author = _$v.author;
      _writtenBy = _$v.writtenBy;
      _likes = _$v.likes;
      _comments = _$v.comments?.toBuilder();
      _category = _$v.category;
      _tags = _$v.tags?.toBuilder();
      _imageUrl = _$v.imageUrl;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Post other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Post;
  }

  @override
  void update(void updates(PostBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Post build() {
    _$Post _$result;
    try {
      _$result = _$v ??
          new _$Post._(
              id: id,
              title: title,
              subtitle: subtitle,
              previewText: previewText,
              paragraphs: _paragraphs?.build(),
              createdOn: createdOn,
              author: author,
              writtenBy: writtenBy,
              likes: likes,
              comments: _comments?.build(),
              category: category,
              tags: _tags?.build(),
              imageUrl: imageUrl,
              url: url);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'paragraphs';
        _paragraphs?.build();

        _$failedField = 'comments';
        _comments?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Post', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
