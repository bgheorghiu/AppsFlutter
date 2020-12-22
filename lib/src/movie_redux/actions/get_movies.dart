import 'package:flutter_apps/src/movie_redux/models/movie.dart';

class GetMovies {
  const GetMovies();
}

class GetMoviesSuccessful {
  const GetMoviesSuccessful(this.movies);

  final List<Movie> movies;
}

class GetMoviesFailed {
  const GetMoviesFailed(this.error);

  final dynamic error;
}
