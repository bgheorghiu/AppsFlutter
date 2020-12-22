library movie;

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'serializers.dart';

part 'movie.g.dart';

abstract class Movie implements Built<Movie, MovieBuilder> {
  factory Movie([void Function(MovieBuilder) updates]) = _$Movie;

  factory Movie.fromJson(dynamic json) {
    return serializers.deserializeWith(serializer, json);
  }

  Movie._();

  String get title;

  @BuiltValueField(wireName: 'medium_cover_image')
  String get mediumCoverImage;

  static Serializer<Movie> get serializer => _$movieSerializer;
}
