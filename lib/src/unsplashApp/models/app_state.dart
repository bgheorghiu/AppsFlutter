part of models;

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState([void Function(AppStateBuilder) updates]) = _$AppState;

  factory AppState.initialState() {
    final AppStateBuilder builder = AppStateBuilder();
    builder
      ..isLoading = true
      ..page = 1
      ..query = 'blue fruits';
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
