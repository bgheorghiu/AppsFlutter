// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GetImagesTearOff {
  const _$GetImagesTearOff();

// ignore: unused_element
  GetImagesStart call() {
    return const GetImagesStart();
  }

// ignore: unused_element
  GetImagesSuccessful successful(List<ImageSplash> images) {
    return GetImagesSuccessful(
      images,
    );
  }

// ignore: unused_element
  GetImagesError error(dynamic error) {
    return GetImagesError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetImages = _$GetImagesTearOff();

/// @nodoc
mixin _$GetImages {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<ImageSplash> images),
    @required Result error(dynamic error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<ImageSplash> images),
    Result error(dynamic error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetImagesStart value), {
    @required Result successful(GetImagesSuccessful value),
    @required Result error(GetImagesError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetImagesStart value), {
    Result successful(GetImagesSuccessful value),
    Result error(GetImagesError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetImagesCopyWith<$Res> {
  factory $GetImagesCopyWith(GetImages value, $Res Function(GetImages) then) = _$GetImagesCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetImagesCopyWithImpl<$Res> implements $GetImagesCopyWith<$Res> {
  _$GetImagesCopyWithImpl(this._value, this._then);

  final GetImages _value;
  // ignore: unused_field
  final $Res Function(GetImages) _then;
}

/// @nodoc
abstract class $GetImagesStartCopyWith<$Res> {
  factory $GetImagesStartCopyWith(GetImagesStart value, $Res Function(GetImagesStart) then) =
      _$GetImagesStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetImagesStartCopyWithImpl<$Res> extends _$GetImagesCopyWithImpl<$Res>
    implements $GetImagesStartCopyWith<$Res> {
  _$GetImagesStartCopyWithImpl(GetImagesStart _value, $Res Function(GetImagesStart) _then)
      : super(_value, (v) => _then(v as GetImagesStart));

  @override
  GetImagesStart get _value => super._value as GetImagesStart;
}

/// @nodoc
class _$GetImagesStart implements GetImagesStart {
  const _$GetImagesStart();

  @override
  String toString() {
    return 'GetImages()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetImagesStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<ImageSplash> images),
    @required Result error(dynamic error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<ImageSplash> images),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetImagesStart value), {
    @required Result successful(GetImagesSuccessful value),
    @required Result error(GetImagesError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetImagesStart value), {
    Result successful(GetImagesSuccessful value),
    Result error(GetImagesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetImagesStart implements GetImages {
  const factory GetImagesStart() = _$GetImagesStart;
}

/// @nodoc
abstract class $GetImagesSuccessfulCopyWith<$Res> {
  factory $GetImagesSuccessfulCopyWith(GetImagesSuccessful value, $Res Function(GetImagesSuccessful) then) =
      _$GetImagesSuccessfulCopyWithImpl<$Res>;
  $Res call({List<ImageSplash> images});
}

/// @nodoc
class _$GetImagesSuccessfulCopyWithImpl<$Res> extends _$GetImagesCopyWithImpl<$Res>
    implements $GetImagesSuccessfulCopyWith<$Res> {
  _$GetImagesSuccessfulCopyWithImpl(GetImagesSuccessful _value, $Res Function(GetImagesSuccessful) _then)
      : super(_value, (v) => _then(v as GetImagesSuccessful));

  @override
  GetImagesSuccessful get _value => super._value as GetImagesSuccessful;

  @override
  $Res call({
    Object images = freezed,
  }) {
    return _then(GetImagesSuccessful(
      images == freezed ? _value.images : images as List<ImageSplash>,
    ));
  }
}

/// @nodoc
class _$GetImagesSuccessful implements GetImagesSuccessful {
  const _$GetImagesSuccessful(this.images) : assert(images != null);

  @override
  final List<ImageSplash> images;

  @override
  String toString() {
    return 'GetImages.successful(images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetImagesSuccessful &&
            (identical(other.images, images) || const DeepCollectionEquality().equals(other.images, images)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(images);

  @override
  $GetImagesSuccessfulCopyWith<GetImagesSuccessful> get copyWith =>
      _$GetImagesSuccessfulCopyWithImpl<GetImagesSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<ImageSplash> images),
    @required Result error(dynamic error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(images);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<ImageSplash> images),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetImagesStart value), {
    @required Result successful(GetImagesSuccessful value),
    @required Result error(GetImagesError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetImagesStart value), {
    Result successful(GetImagesSuccessful value),
    Result error(GetImagesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetImagesSuccessful implements GetImages {
  const factory GetImagesSuccessful(List<ImageSplash> images) = _$GetImagesSuccessful;

  List<ImageSplash> get images;
  $GetImagesSuccessfulCopyWith<GetImagesSuccessful> get copyWith;
}

/// @nodoc
abstract class $GetImagesErrorCopyWith<$Res> {
  factory $GetImagesErrorCopyWith(GetImagesError value, $Res Function(GetImagesError) then) =
      _$GetImagesErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class _$GetImagesErrorCopyWithImpl<$Res> extends _$GetImagesCopyWithImpl<$Res>
    implements $GetImagesErrorCopyWith<$Res> {
  _$GetImagesErrorCopyWithImpl(GetImagesError _value, $Res Function(GetImagesError) _then)
      : super(_value, (v) => _then(v as GetImagesError));

  @override
  GetImagesError get _value => super._value as GetImagesError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetImagesError(
      error == freezed ? _value.error : error as dynamic,
    ));
  }
}

/// @nodoc
class _$GetImagesError implements GetImagesError {
  const _$GetImagesError(this.error) : assert(error != null);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'GetImages.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetImagesError &&
            (identical(other.error, error) || const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetImagesErrorCopyWith<GetImagesError> get copyWith =>
      _$GetImagesErrorCopyWithImpl<GetImagesError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<ImageSplash> images),
    @required Result error(dynamic error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<ImageSplash> images),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetImagesStart value), {
    @required Result successful(GetImagesSuccessful value),
    @required Result error(GetImagesError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetImagesStart value), {
    Result successful(GetImagesSuccessful value),
    Result error(GetImagesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetImagesError implements GetImages {
  const factory GetImagesError(dynamic error) = _$GetImagesError;

  dynamic get error;
  $GetImagesErrorCopyWith<GetImagesError> get copyWith;
}

/// @nodoc
class _$SetSelectedImageTearOff {
  const _$SetSelectedImageTearOff();

// ignore: unused_element
  SetSelectedImage$ call(String imageId) {
    return SetSelectedImage$(
      imageId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SetSelectedImage = _$SetSelectedImageTearOff();

/// @nodoc
mixin _$SetSelectedImage {
  String get imageId;

  $SetSelectedImageCopyWith<SetSelectedImage> get copyWith;
}

/// @nodoc
abstract class $SetSelectedImageCopyWith<$Res> {
  factory $SetSelectedImageCopyWith(SetSelectedImage value, $Res Function(SetSelectedImage) then) =
      _$SetSelectedImageCopyWithImpl<$Res>;
  $Res call({String imageId});
}

/// @nodoc
class _$SetSelectedImageCopyWithImpl<$Res> implements $SetSelectedImageCopyWith<$Res> {
  _$SetSelectedImageCopyWithImpl(this._value, this._then);

  final SetSelectedImage _value;
  // ignore: unused_field
  final $Res Function(SetSelectedImage) _then;

  @override
  $Res call({
    Object imageId = freezed,
  }) {
    return _then(_value.copyWith(
      imageId: imageId == freezed ? _value.imageId : imageId as String,
    ));
  }
}

/// @nodoc
abstract class $SetSelectedImage$CopyWith<$Res> implements $SetSelectedImageCopyWith<$Res> {
  factory $SetSelectedImage$CopyWith(SetSelectedImage$ value, $Res Function(SetSelectedImage$) then) =
      _$SetSelectedImage$CopyWithImpl<$Res>;
  @override
  $Res call({String imageId});
}

/// @nodoc
class _$SetSelectedImage$CopyWithImpl<$Res> extends _$SetSelectedImageCopyWithImpl<$Res>
    implements $SetSelectedImage$CopyWith<$Res> {
  _$SetSelectedImage$CopyWithImpl(SetSelectedImage$ _value, $Res Function(SetSelectedImage$) _then)
      : super(_value, (v) => _then(v as SetSelectedImage$));

  @override
  SetSelectedImage$ get _value => super._value as SetSelectedImage$;

  @override
  $Res call({
    Object imageId = freezed,
  }) {
    return _then(SetSelectedImage$(
      imageId == freezed ? _value.imageId : imageId as String,
    ));
  }
}

/// @nodoc
class _$SetSelectedImage$ implements SetSelectedImage$ {
  const _$SetSelectedImage$(this.imageId) : assert(imageId != null);

  @override
  final String imageId;

  @override
  String toString() {
    return 'SetSelectedImage(imageId: $imageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetSelectedImage$ &&
            (identical(other.imageId, imageId) || const DeepCollectionEquality().equals(other.imageId, imageId)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(imageId);

  @override
  $SetSelectedImage$CopyWith<SetSelectedImage$> get copyWith =>
      _$SetSelectedImage$CopyWithImpl<SetSelectedImage$>(this, _$identity);
}

abstract class SetSelectedImage$ implements SetSelectedImage {
  const factory SetSelectedImage$(String imageId) = _$SetSelectedImage$;

  @override
  String get imageId;
  @override
  $SetSelectedImage$CopyWith<SetSelectedImage$> get copyWith;
}

/// @nodoc
class _$UpdateColorTearOff {
  const _$UpdateColorTearOff();

// ignore: unused_element
  _UpdateColor call(String color) {
    return _UpdateColor(
      color,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateColor = _$UpdateColorTearOff();

/// @nodoc
mixin _$UpdateColor {
  String get color;

  $UpdateColorCopyWith<UpdateColor> get copyWith;
}

/// @nodoc
abstract class $UpdateColorCopyWith<$Res> {
  factory $UpdateColorCopyWith(UpdateColor value, $Res Function(UpdateColor) then) = _$UpdateColorCopyWithImpl<$Res>;
  $Res call({String color});
}

/// @nodoc
class _$UpdateColorCopyWithImpl<$Res> implements $UpdateColorCopyWith<$Res> {
  _$UpdateColorCopyWithImpl(this._value, this._then);

  final UpdateColor _value;
  // ignore: unused_field
  final $Res Function(UpdateColor) _then;

  @override
  $Res call({
    Object color = freezed,
  }) {
    return _then(_value.copyWith(
      color: color == freezed ? _value.color : color as String,
    ));
  }
}

/// @nodoc
abstract class _$UpdateColorCopyWith<$Res> implements $UpdateColorCopyWith<$Res> {
  factory _$UpdateColorCopyWith(_UpdateColor value, $Res Function(_UpdateColor) then) =
      __$UpdateColorCopyWithImpl<$Res>;
  @override
  $Res call({String color});
}

/// @nodoc
class __$UpdateColorCopyWithImpl<$Res> extends _$UpdateColorCopyWithImpl<$Res> implements _$UpdateColorCopyWith<$Res> {
  __$UpdateColorCopyWithImpl(_UpdateColor _value, $Res Function(_UpdateColor) _then)
      : super(_value, (v) => _then(v as _UpdateColor));

  @override
  _UpdateColor get _value => super._value as _UpdateColor;

  @override
  $Res call({
    Object color = freezed,
  }) {
    return _then(_UpdateColor(
      color == freezed ? _value.color : color as String,
    ));
  }
}

/// @nodoc
class _$_UpdateColor implements _UpdateColor {
  const _$_UpdateColor(this.color) : assert(color != null);

  @override
  final String color;

  @override
  String toString() {
    return 'UpdateColor(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateColor &&
            (identical(other.color, color) || const DeepCollectionEquality().equals(other.color, color)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(color);

  @override
  _$UpdateColorCopyWith<_UpdateColor> get copyWith => __$UpdateColorCopyWithImpl<_UpdateColor>(this, _$identity);
}

abstract class _UpdateColor implements UpdateColor {
  const factory _UpdateColor(String color) = _$_UpdateColor;

  @override
  String get color;
  @override
  _$UpdateColorCopyWith<_UpdateColor> get copyWith;
}

/// @nodoc
class _$UpdateQueryTearOff {
  const _$UpdateQueryTearOff();

// ignore: unused_element
  _UpdateQuery call(String query) {
    return _UpdateQuery(
      query,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateQuery = _$UpdateQueryTearOff();

/// @nodoc
mixin _$UpdateQuery {
  String get query;

  $UpdateQueryCopyWith<UpdateQuery> get copyWith;
}

/// @nodoc
abstract class $UpdateQueryCopyWith<$Res> {
  factory $UpdateQueryCopyWith(UpdateQuery value, $Res Function(UpdateQuery) then) = _$UpdateQueryCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class _$UpdateQueryCopyWithImpl<$Res> implements $UpdateQueryCopyWith<$Res> {
  _$UpdateQueryCopyWithImpl(this._value, this._then);

  final UpdateQuery _value;
  // ignore: unused_field
  final $Res Function(UpdateQuery) _then;

  @override
  $Res call({
    Object query = freezed,
  }) {
    return _then(_value.copyWith(
      query: query == freezed ? _value.query : query as String,
    ));
  }
}

/// @nodoc
abstract class _$UpdateQueryCopyWith<$Res> implements $UpdateQueryCopyWith<$Res> {
  factory _$UpdateQueryCopyWith(_UpdateQuery value, $Res Function(_UpdateQuery) then) =
      __$UpdateQueryCopyWithImpl<$Res>;
  @override
  $Res call({String query});
}

/// @nodoc
class __$UpdateQueryCopyWithImpl<$Res> extends _$UpdateQueryCopyWithImpl<$Res> implements _$UpdateQueryCopyWith<$Res> {
  __$UpdateQueryCopyWithImpl(_UpdateQuery _value, $Res Function(_UpdateQuery) _then)
      : super(_value, (v) => _then(v as _UpdateQuery));

  @override
  _UpdateQuery get _value => super._value as _UpdateQuery;

  @override
  $Res call({
    Object query = freezed,
  }) {
    return _then(_UpdateQuery(
      query == freezed ? _value.query : query as String,
    ));
  }
}

/// @nodoc
class _$_UpdateQuery implements _UpdateQuery {
  const _$_UpdateQuery(this.query) : assert(query != null);

  @override
  final String query;

  @override
  String toString() {
    return 'UpdateQuery(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateQuery &&
            (identical(other.query, query) || const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @override
  _$UpdateQueryCopyWith<_UpdateQuery> get copyWith => __$UpdateQueryCopyWithImpl<_UpdateQuery>(this, _$identity);
}

abstract class _UpdateQuery implements UpdateQuery {
  const factory _UpdateQuery(String query) = _$_UpdateQuery;

  @override
  String get query;
  @override
  _$UpdateQueryCopyWith<_UpdateQuery> get copyWith;
}
