// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Urls> _$urlsSerializer = new _$UrlsSerializer();
Serializer<ImageSplash> _$imageSplashSerializer = new _$ImageSplashSerializer();

class _$UrlsSerializer implements StructuredSerializer<Urls> {
  @override
  final Iterable<Type> types = const [Urls, _$Urls];
  @override
  final String wireName = 'Urls';

  @override
  Iterable<Object> serialize(Serializers serializers, Urls object, {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'raw',
      serializers.serialize(object.raw, specifiedType: const FullType(String)),
      'full',
      serializers.serialize(object.full, specifiedType: const FullType(String)),
      'regular',
      serializers.serialize(object.regular, specifiedType: const FullType(String)),
      'small',
      serializers.serialize(object.small, specifiedType: const FullType(String)),
      'thumb',
      serializers.serialize(object.thumb, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Urls deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UrlsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'raw':
          result.raw = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'full':
          result.full = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'regular':
          result.regular = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'small':
          result.small = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'thumb':
          result.thumb = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

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

class _$Urls extends Urls {
  @override
  final String raw;
  @override
  final String full;
  @override
  final String regular;
  @override
  final String small;
  @override
  final String thumb;

  factory _$Urls([void Function(UrlsBuilder) updates]) => (new UrlsBuilder()..update(updates)).build();

  _$Urls._({this.raw, this.full, this.regular, this.small, this.thumb}) : super._() {
    if (raw == null) {
      throw new BuiltValueNullFieldError('Urls', 'raw');
    }
    if (full == null) {
      throw new BuiltValueNullFieldError('Urls', 'full');
    }
    if (regular == null) {
      throw new BuiltValueNullFieldError('Urls', 'regular');
    }
    if (small == null) {
      throw new BuiltValueNullFieldError('Urls', 'small');
    }
    if (thumb == null) {
      throw new BuiltValueNullFieldError('Urls', 'thumb');
    }
  }

  @override
  Urls rebuild(void Function(UrlsBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  UrlsBuilder toBuilder() => new UrlsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Urls &&
        raw == other.raw &&
        full == other.full &&
        regular == other.regular &&
        small == other.small &&
        thumb == other.thumb;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc($jc($jc(0, raw.hashCode), full.hashCode), regular.hashCode), small.hashCode), thumb.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Urls')
          ..add('raw', raw)
          ..add('full', full)
          ..add('regular', regular)
          ..add('small', small)
          ..add('thumb', thumb))
        .toString();
  }
}

class UrlsBuilder implements Builder<Urls, UrlsBuilder> {
  _$Urls _$v;

  String _raw;
  String get raw => _$this._raw;
  set raw(String raw) => _$this._raw = raw;

  String _full;
  String get full => _$this._full;
  set full(String full) => _$this._full = full;

  String _regular;
  String get regular => _$this._regular;
  set regular(String regular) => _$this._regular = regular;

  String _small;
  String get small => _$this._small;
  set small(String small) => _$this._small = small;

  String _thumb;
  String get thumb => _$this._thumb;
  set thumb(String thumb) => _$this._thumb = thumb;

  UrlsBuilder();

  UrlsBuilder get _$this {
    if (_$v != null) {
      _raw = _$v.raw;
      _full = _$v.full;
      _regular = _$v.regular;
      _small = _$v.small;
      _thumb = _$v.thumb;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Urls other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Urls;
  }

  @override
  void update(void Function(UrlsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Urls build() {
    final _$result = _$v ?? new _$Urls._(raw: raw, full: full, regular: regular, small: small, thumb: thumb);
    replace(_$result);
    return _$result;
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

class _$AppState extends AppState {
  @override
  final int page;
  @override
  final String color;
  @override
  final String query;
  @override
  final bool isLoading;
  @override
  final BuiltList<ImageSplash> images;
  @override
  final String selectedImage;

  factory _$AppState([void Function(AppStateBuilder) updates]) => (new AppStateBuilder()..update(updates)).build();

  _$AppState._({this.page, this.color, this.query, this.isLoading, this.images, this.selectedImage}) : super._() {
    if (page == null) {
      throw new BuiltValueNullFieldError('AppState', 'page');
    }
    if (query == null) {
      throw new BuiltValueNullFieldError('AppState', 'query');
    }
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('AppState', 'isLoading');
    }
    if (images == null) {
      throw new BuiltValueNullFieldError('AppState', 'images');
    }
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        page == other.page &&
        color == other.color &&
        query == other.query &&
        isLoading == other.isLoading &&
        images == other.images &&
        selectedImage == other.selectedImage;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc($jc(0, page.hashCode), color.hashCode), query.hashCode), isLoading.hashCode), images.hashCode),
        selectedImage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('page', page)
          ..add('color', color)
          ..add('query', query)
          ..add('isLoading', isLoading)
          ..add('images', images)
          ..add('selectedImage', selectedImage))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  String _color;
  String get color => _$this._color;
  set color(String color) => _$this._color = color;

  String _query;
  String get query => _$this._query;
  set query(String query) => _$this._query = query;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  ListBuilder<ImageSplash> _images;
  ListBuilder<ImageSplash> get images => _$this._images ??= new ListBuilder<ImageSplash>();
  set images(ListBuilder<ImageSplash> images) => _$this._images = images;

  String _selectedImage;
  String get selectedImage => _$this._selectedImage;
  set selectedImage(String selectedImage) => _$this._selectedImage = selectedImage;

  AppStateBuilder();

  AppStateBuilder get _$this {
    if (_$v != null) {
      _page = _$v.page;
      _color = _$v.color;
      _query = _$v.query;
      _isLoading = _$v.isLoading;
      _images = _$v.images?.toBuilder();
      _selectedImage = _$v.selectedImage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              page: page,
              color: color,
              query: query,
              isLoading: isLoading,
              images: images.build(),
              selectedImage: selectedImage);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'images';
        images.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
