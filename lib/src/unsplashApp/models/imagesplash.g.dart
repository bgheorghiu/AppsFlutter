// GENERATED CODE - DO NOT MODIFY BY HAND

part of imagesplash;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ImageSplash> _$imageSplashSerializer = new _$ImageSplashSerializer();

class _$ImageSplashSerializer implements StructuredSerializer<ImageSplash> {
  @override
  final Iterable<Type> types = const [ImageSplash, _$ImageSplash];
  @override
  final String wireName = 'ImageSplash';

  @override
  Iterable<Object> serialize(Serializers serializers, ImageSplash object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'color',
      serializers.serialize(object.color, specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'urls',
      serializers.serialize(object.urls, specifiedType: const FullType(Urls)),
    ];
    if (object.altDescription != null) {
      result
        ..add('alt_description')
        ..add(serializers.serialize(object.altDescription, specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ImageSplash deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImageSplashBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'color':
          result.color = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'alt_description':
          result.altDescription = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'urls':
          result.urls.replace(serializers.deserialize(value, specifiedType: const FullType(Urls)) as Urls);
          break;
      }
    }

    return result.build();
  }
}

class _$ImageSplash extends ImageSplash {
  @override
  final String color;
  @override
  final String id;
  @override
  final String altDescription;
  @override
  final Urls urls;

  factory _$ImageSplash([void Function(ImageSplashBuilder) updates]) =>
      (new ImageSplashBuilder()..update(updates)).build();

  _$ImageSplash._({this.color, this.id, this.altDescription, this.urls}) : super._() {
    if (color == null) {
      throw new BuiltValueNullFieldError('ImageSplash', 'color');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('ImageSplash', 'id');
    }
    if (urls == null) {
      throw new BuiltValueNullFieldError('ImageSplash', 'urls');
    }
  }

  @override
  ImageSplash rebuild(void Function(ImageSplashBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  ImageSplashBuilder toBuilder() => new ImageSplashBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImageSplash &&
        color == other.color &&
        id == other.id &&
        altDescription == other.altDescription &&
        urls == other.urls;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, color.hashCode), id.hashCode), altDescription.hashCode), urls.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ImageSplash')
          ..add('color', color)
          ..add('id', id)
          ..add('altDescription', altDescription)
          ..add('urls', urls))
        .toString();
  }
}

class ImageSplashBuilder implements Builder<ImageSplash, ImageSplashBuilder> {
  _$ImageSplash _$v;

  String _color;
  String get color => _$this._color;
  set color(String color) => _$this._color = color;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _altDescription;
  String get altDescription => _$this._altDescription;
  set altDescription(String altDescription) => _$this._altDescription = altDescription;

  UrlsBuilder _urls;
  UrlsBuilder get urls => _$this._urls ??= new UrlsBuilder();
  set urls(UrlsBuilder urls) => _$this._urls = urls;

  ImageSplashBuilder();

  ImageSplashBuilder get _$this {
    if (_$v != null) {
      _color = _$v.color;
      _id = _$v.id;
      _altDescription = _$v.altDescription;
      _urls = _$v.urls?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImageSplash other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ImageSplash;
  }

  @override
  void update(void Function(ImageSplashBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ImageSplash build() {
    _$ImageSplash _$result;
    try {
      _$result = _$v ?? new _$ImageSplash._(color: color, id: id, altDescription: altDescription, urls: urls.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'urls';
        urls.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('ImageSplash', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
