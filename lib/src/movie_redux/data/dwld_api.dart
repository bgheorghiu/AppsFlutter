import 'dart:convert';

import 'package:flutter_apps/src/movie_redux/models/movie.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';

class DwldApi {
  const DwldApi({@required Client client})
      : assert(client != null),
        _client = client;

  final Client _client;

  Future<List<Movie>> getMovies() async {
    final Response response = await _client.get('https://yts.mx/api/v2/list_movies.json?limit=150');
    final List<dynamic> dataList = jsonDecode(response.body)['data']['movies'];

    return dataList.map((dynamic json) => Movie.fromJson(json)).toList();
  }
}
