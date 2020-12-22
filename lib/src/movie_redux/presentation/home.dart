import 'package:built_collection/built_collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apps/src/movie_redux/containers/movies_container.dart';
import 'package:flutter_apps/src/movie_redux/models/movie.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MoviesContainer(builder: (BuildContext context, BuiltList<Movie> movies) {
      return Scaffold(
        appBar: AppBar(),
        body: Builder(
          builder: (BuildContext context) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: movies.length,
              itemBuilder: (BuildContext context, int index) {
                final Movie movie = movies[index];

                return Stack(children: <Widget>[
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: Image.network(
                      movie.mediumCoverImage,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    child: Text(
                      movie.title,
                      style:
                          const TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0, backgroundColor: Colors.white),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ]);
              },
            );
          },
        ),
      );
    });
  }
}
