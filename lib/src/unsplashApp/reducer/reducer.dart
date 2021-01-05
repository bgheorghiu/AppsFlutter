import 'package:flutter_apps/src/unsplashApp/actions/index.dart';
import 'package:flutter_apps/src/unsplashApp/models/index.dart';
import 'package:redux/redux.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  TypedReducer<AppState, GetImagesStart>(_getImagesStart),
  TypedReducer<AppState, GetImagesSuccessful>(_getImagesSuccessful),
  TypedReducer<AppState, GetImagesError>(_getImagesError),
  TypedReducer<AppState, UpdateQuery>(_updateQuery),
  TypedReducer<AppState, UpdateColor>(_updateColor),
  TypedReducer<AppState, SetSelectedImage>(_setSelectedImage),
]);

AppState _getImagesStart(AppState state, GetImagesStart action) {
  return state.rebuild((AppStateBuilder b) => b.isLoading = true);
}

AppState _getImagesSuccessful(AppState state, GetImagesSuccessful action) {
  return state.rebuild((AppStateBuilder b) => b
    ..page = b.page + 1
    ..images.addAll(action.images)
    ..isLoading = false);
}

AppState _getImagesError(AppState state, GetImagesError action) {
  return state.rebuild((AppStateBuilder b) => b.isLoading = false);
}

AppState _updateQuery(AppState state, UpdateQuery action) {
  return state.rebuild((AppStateBuilder b) => b
    ..images.clear()
    ..page = 1
    ..query = action.query);
}

AppState _updateColor(AppState state, UpdateColor action) {
  return state.rebuild((AppStateBuilder b) => b
    ..images.clear()
    ..page = 1
    ..color = action.color);
}

AppState _setSelectedImage(AppState state, SetSelectedImage action) {
  return state.rebuild((AppStateBuilder b) => b.selectedImage = action.imageId);
}
