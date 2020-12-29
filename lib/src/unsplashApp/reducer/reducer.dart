import 'package:flutter_apps/src/unsplashApp/actions/set_selected_image.dart';
import 'package:flutter_apps/src/unsplashApp/actions/update_color.dart';
import 'package:flutter_apps/src/unsplashApp/actions/update_query.dart';
import 'package:flutter_apps/src/unsplashApp/models/app_state.dart';
import 'package:flutter_apps/src/unsplashApp/actions/get_images.dart';

AppState reducer(AppState state, dynamic action) {
  print('action: $action');
  final AppStateBuilder builder = state.toBuilder();

  if (action is GetImagesStart) {
    builder.isLoading = true;
  } else if (action is GetImagesSuccessful) {
    builder
      ..page = builder.page + 1
      ..images.addAll(action.images)
      ..isLoading = false;
  } else if (action is GetImagesError) {
    builder.isLoading = false;
  } else if (action is UpdateColor) {
    builder
      ..images.clear()
      ..page = 1
      ..color = action.color;
  } else if (action is UpdateQuery) {
    builder
      ..images.clear()
      ..page = 1
      ..query = action.query;
  } else if (action is SetSelectedImage) {
    builder.selectedImage = action.imageId;
  }
  print(state);
  return builder.build();
}
