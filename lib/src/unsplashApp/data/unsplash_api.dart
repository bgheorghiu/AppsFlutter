import 'dart:convert';

import 'package:flutter_apps/src/unsplashApp/models/index.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';

class UnsplashApi {
  const UnsplashApi({@required Client client})
      : assert(client != null),
        _client = client;

  final Client _client;

  Future<List<ImageSplash>> getImages(
    String query,
    int page,
    String color,
  ) async {
    final Uri url = Uri(
      scheme: 'https',
      host: 'api.unsplash.com',
      pathSegments: <String>['search', 'photos'],
      queryParameters: <String, String>{
        'page': '$page',
        'query': query,
        if (color != null) 'color': color,
      },
    );

    final Map<String, String> headers = <String, String>{
      'Authorization': 'Client-ID jBwBkjVPMdhIZUyMDACE0ipi2gUG87toCL5v2QwVGGk'
    };
    print(url);
    final Response response = await _client.get(url, headers: headers);
    final String body = response.body;
    final List<dynamic> list = jsonDecode(body)['results'];
    print(list);
    print(list //
        .map((dynamic json) => ImageSplash.fromJson(json))
        .toList());
    return list //
        .map((dynamic json) => ImageSplash.fromJson(json))
        .toList();
  }
}
