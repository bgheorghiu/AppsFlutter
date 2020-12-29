library app_state;

import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_apps/src/unsplashApp/models/imagesplash.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState([void Function(AppStateBuilder) updates]) = _$AppState;

  factory AppState.initialState() {
    final AppStateBuilder builder = AppStateBuilder();
    builder
      ..isLoading = true
      ..page = 1
      ..query = 'animals';
    return builder.build();
  }

  AppState._();

  int get page;

  @nullable
  String get color;

  String get query;

  bool get isLoading;

  BuiltList<ImageSplash> get images;

  @nullable
  String get selectedImage;
}
