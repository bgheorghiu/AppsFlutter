import 'package:built_collection/built_collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_apps/src/unsplashApp/containers/images_container.dart';
import 'package:flutter_apps/src/unsplashApp/containers/isloading_container.dart';
import 'package:flutter_apps/src/unsplashApp/containers/query_container.dart';
import 'package:flutter_apps/src/unsplashApp/containers/color_container.dart';
import 'package:flutter_apps/src/unsplashApp/containers/page_container.dart';
import 'package:flutter_apps/src/unsplashApp/actions/index.dart';
import 'package:flutter_apps/src/unsplashApp/models/index.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

String inputText;

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageContainer(builder: (BuildContext context, int page) {
      return IsLoadingContainer(
        builder: (BuildContext context, bool isLoading) {
          return Scaffold(
            backgroundColor: const Color(0xfff5f5f5),
            body: ListView(
              shrinkWrap: true,
              children: <Widget>[
                Container(
                  child: SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(32.0),
                          child: Column(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: <Widget>[
                               const Text(
                                'Explore colors',
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  color: Color(0xff424242),
                                  fontSize: 44,
                                  fontWeight: FontWeight.w900,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 500,
                          child: Builder(
                            builder: (BuildContext context) {
                              if (isLoading) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                              return ImagesContainer(builder: (BuildContext context, BuiltList<ImageSplash> images) {
                                return Swiper(
                                    itemCount: images.length,
                                    itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                                    layout: SwiperLayout.STACK,
                                    itemBuilder: (BuildContext context, int index) {
                                      final ImageSplash currImg = images[index];
                                      return Container(
                                        child: Column(
                                          children: <Widget>[
                                            Card(
                                              elevation: 8,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(32),
                                              ),
                                              color: Colors.white,
                                              child: Padding(
                                                padding: const EdgeInsets.all(32.0),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Container(
                                                      height: 200,
                                                      alignment: Alignment.center,
                                                      child: GestureDetector(
                                                        onTap: () async {
                                                          StoreProvider.of<AppState>(context)
                                                              .dispatch(SetSelectedImage(currImg.id));
                                                          Navigator.pushNamed(context, '/imageDetail');
                                                        },
                                                        child: Card(
                                                          elevation: 25,
                                                          shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(32),
                                                          ),
                                                          color: Colors.white,
                                                          child: Image(
                                                            image: NetworkImage(currImg.urls.small),
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    const Text(
                                                      'Swipe',
                                                      style: TextStyle(
                                                        fontFamily: 'Avenir',
                                                        fontSize: 44,
                                                        color: Color(0xff424242),
                                                        fontWeight: FontWeight.w900,
                                                      ),
                                                      textAlign: TextAlign.left,
                                                    ),
                                                    const Text(
                                                      'right for more',
                                                      style: TextStyle(
                                                        fontFamily: 'Avenir',
                                                        fontSize: 23,
                                                        color: Color(0xff424242),
                                                        fontWeight: FontWeight.w900,
                                                      ),
                                                      textAlign: TextAlign.left,
                                                    ),
                                                    FlatButton(
                                                      child: Row(
                                                        // ignore: prefer_const_literals_to_create_immutables
                                                        children: <Widget>[
                                                          const Text('touch to load',
                                                              style: TextStyle(
                                                                fontFamily: 'Avenir',
                                                                fontSize: 18,
                                                                color: Color(0xFFE4979E),
                                                                fontWeight: FontWeight.w500,
                                                              ),
                                                              textAlign: TextAlign.left),
                                                           const Icon(
                                                            Icons.arrow_circle_down,
                                                            color: Color(0xFFE4979E),
                                                          ),
                                                        ],
                                                      ),
                                                      onPressed: () {
                                                        StoreProvider.of<AppState>(context).dispatch(const GetImages());
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      );
                                    });
                              });
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                ColorContainer(
                  builder: (BuildContext context, String color) {
                    return Center(
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Colors.white),
                        child: DropdownButton<String>(
                          isExpanded: true,
                          hint: const Text('Choose your color'),
                          onChanged: (String value) {
                            StoreProvider.of<AppState>(context)
                              ..dispatch(UpdateColor(value))
                              ..dispatch(const GetImages());
                          },
                          value: color,
                          items: <String>[
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
                              child: Center(
                                child: Text(
                                  color,
                                  style: const TextStyle(
                                    fontFamily: 'Avenir',
                                    fontSize: 20,
                                    color: Color(0xff424242),
                                    fontWeight: FontWeight.w900,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              value: color,
                            );
                          }).toList(),
                          underline: const SizedBox(),
                        ),
                      ),
                    );
                  },
                ),
                QueryContainer(
                  builder: (BuildContext context, String query) {
                    return Row(
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                            decoration: const InputDecoration(
                              hintText: 'Enter your text',
                            ),
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
              ],
            ),
          );
        },
      );
    });
  }
}
