import 'package:flutter_apps/src/movie_redux/actions/get_movies.dart';
import 'package:flutter_apps/src/movie_redux/data/dwld_api.dart';
import 'package:flutter_apps/src/movie_redux/models/app_state.dart';
import 'package:flutter_apps/src/movie_redux/models/movie.dart';
import 'package:redux/redux.dart';
import 'package:meta/meta.dart';

class AppMiddleware {
  AppMiddleware({@required DwldApi dwldApi})
      : assert(dwldApi != null),
        _dwldApi = dwldApi;

  final DwldApi _dwldApi;

  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[
      _getMovieMiddleware,
    ];
  }

  Future<void> _getMovieMiddleware(Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);
    try {
      final List<Movie> movies = await _dwldApi.getMovies();
      final GetMoviesSuccessful successful = GetMoviesSuccessful(movies);

      store.dispatch(successful);
    } catch (e) {
      final GetMoviesFailed failed = GetMoviesFailed(e);

      store.dispatch(failed);
    }
  }
}
