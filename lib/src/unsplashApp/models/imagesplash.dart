part of models;

abstract class ImageSplash implements Built<ImageSplash, ImageSplashBuilder> {
  factory ImageSplash([void Function(ImageSplashBuilder) updates]) = _$ImageSplash;

  factory ImageSplash.fromJson(dynamic json) {
    return serializers.deserializeWith(serializer, json);
  }

  ImageSplash._();

  String get color;

  String get id;

  @BuiltValueField(wireName: 'alt_description')
  @nullable
  String get altDescription;

  Urls get urls;

  static Serializer<ImageSplash> get serializer => _$imageSplashSerializer;
}
