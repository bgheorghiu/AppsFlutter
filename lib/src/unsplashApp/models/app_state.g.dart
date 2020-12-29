// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

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
