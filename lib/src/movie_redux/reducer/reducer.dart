import 'package:flutter_apps/src/movie_redux/actions/get_movies.dart';
import 'package:flutter_apps/src/movie_redux/models/app_state.dart';

AppState reducer(AppState state, dynamic action) {
  print('action: $action');
  final AppStateBuilder builder = state.toBuilder();

  if (action is GetMoviesSuccessful) {
    builder.movies.addAll(action.movies);
  }

  return builder.build();
}
