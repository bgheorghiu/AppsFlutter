import 'package:built_collection/built_collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_apps/src/unsplashApp/containers/images_container.dart';
import 'package:flutter_apps/src/unsplashApp/containers/isloading_container.dart';
import 'package:flutter_apps/src/unsplashApp/containers/query_container.dart';
import 'package:flutter_apps/src/unsplashApp/containers/color_container.dart';
import 'package:flutter_apps/src/unsplashApp/containers/page_container.dart';
import 'package:flutter_apps/src/unsplashApp/actions/get_images.dart';
import 'package:flutter_apps/src/unsplashApp/actions/set_selected_image.dart';
import 'package:flutter_apps/src/unsplashApp/actions/update_color.dart';
import 'package:flutter_apps/src/unsplashApp/actions/update_query.dart';
import 'package:flutter_apps/src/unsplashApp/models/imagesplash.dart';
import 'package:flutter_apps/src/unsplashApp/models/app_state.dart';

String inputText;

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageContainer(builder: (BuildContext context, int page) {
      return IsLoadingContainer(
        builder: (BuildContext context, bool isLoading) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Page no: ${page - 1}'),
            ),
            body: Column(
              children: <Widget>[
                ColorContainer(
                  builder: (BuildContext context, String color) {
                    return DropdownButton<String>(
                      onChanged: (String value) {
                        StoreProvider.of<AppState>(context)..dispatch(UpdateColor(value))..dispatch(const GetImages());
                      },
                      value: color,
                      items: <String>[
                        'any',
                        'black',
                        'white',
                        'yellow',
                        'orange',
                        'red',
                        'purple',
                        'magenta',
                        'green',
                        'teal',
                        'blue'
                      ].map((String color) {
                        return DropdownMenuItem<String>(
                          child: Text(color),
                          value: color,
                        );
                      }).toList(),
                    );
                  },
                ),
                QueryContainer(
                  builder: (BuildContext context, String query) {
                    return Row(
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                            onChanged: (String value) {
                              inputText = value;
                            },
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            StoreProvider.of<AppState>(context)
                              ..dispatch(UpdateQuery(inputText))
                              ..dispatch(UpdateQuery(StoreProvider.of<AppState>(context).state.query))
                              ..dispatch(const GetImages());
                          },
                          icon: const Icon(Icons.search),
                        ),
                      ],
                    );
                  },
                ),
                Expanded(
                  child: Builder(
                    builder: (BuildContext context) {
                      if (isLoading) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }

                      return ImagesContainer(
                        builder: (BuildContext context, BuiltList<ImageSplash> images) {
                          return Column(
                            children: <Widget>[
                              Expanded(
                                child: GridView.builder(
                                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                    mainAxisSpacing: 4.0,
                                    crossAxisSpacing: 4.0,
                                    crossAxisCount: 3,
                                  ),
                                  itemCount: images.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    final ImageSplash currImg = images[index];
                                    return GestureDetector(
                                      onTap: () async {
                                        StoreProvider.of<AppState>(context).dispatch(SetSelectedImage(currImg.id));
                                        Navigator.pushNamed(context, '/imageDetail');
                                      },
                                      child: GridTile(
                                        child: Image.network(currImg.urls.regular),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              FlatButton(
                                child: const Text('Load more'),
                                onPressed: () {
                                  StoreProvider.of<AppState>(context).dispatch(const GetImages());
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      );
    });
  }
}
