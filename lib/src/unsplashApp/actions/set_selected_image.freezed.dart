// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of set_selected_movie;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

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
