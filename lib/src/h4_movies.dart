import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

String dropdownValue = 'Comedy';
String dropdownValue2 = '5';
String dropdownValue3 = '720p';
const String NotFoundURL =
    'https://user-images.githubusercontent.com/24848110/33519396-7e56363c-d79d-11e7-969b-09782f5ccbab.png';
int noOfGetMore = 1;
int listLength = 0;

Future<List<dynamic>> doInit() async {
  final List<dynamic> movies = <dynamic>[];
  int pageCounter = 1;
  while (movies.length < 50) {
    final Uri uri = Uri.parse('https://yts.mx/api/v2/list_movies.json');
    final String pageValue = pageCounter.toString();

    final Map<String, String> params = <String, String>{
      'minimum_rating': dropdownValue2,
      'genre': dropdownValue,
      'quality': dropdownValue3,
      'page': pageValue
    };
    final Uri newURI = uri.replace(queryParameters: params);
    final Response response = await get(newURI);
    final Map<dynamic, dynamic> decoder = jsonDecode(response.body);
    final List<dynamic> tempMovies = decoder['data']['movies'];
    print(decoder['data']['page_number']);
    print(movies.length);
    pageCounter += 1;
    if (pageCounter > 100) {
      break;
    }
    if (tempMovies == null) {
      continue;
    }
    for (int i = 0; i < tempMovies.length; i += 1) {
      movies.add(tempMovies[i]);
    }
  }
  if (movies.length < 10) {
    listLength = movies.length;
  } else {
    listLength = 10;
  }
  return movies;
}

void main() {
  runApp(MyApp());
}

const Color primaryColor = Color(0xFFb3e5fc);
const MaterialColor dropColor = Colors.blueGrey;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: primaryColor,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> moviesList = <dynamic>[];

  @override
  void initState() {
    doInit().then((List<dynamic> movies) {
      setState(() {
        moviesList = movies;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Choose ya movie!',
        ),
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_downward),
                iconSize: 32,
                elevation: 16,
                style: const TextStyle(color: dropColor),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue = newValue;
                  });
                },
                items: <String>[
                  'Action',
                  'Adventure',
                  'Animation',
                  'Biography',
                  'Comedy',
                  'Documentary',
                  'Drama',
                  'Horror',
                  'Mystery',
                  'Romance',
                  'Sci-Fi',
                  'Thriller'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              DropdownButton<String>(
                value: dropdownValue2,
                icon: const Icon(Icons.arrow_downward),
                iconSize: 32,
                elevation: 16,
                style: const TextStyle(color: dropColor),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue2 = newValue;
                  });
                },
                items: <String>['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              DropdownButton<String>(
                value: dropdownValue3,
                icon: const Icon(Icons.arrow_downward),
                iconSize: 32,
                elevation: 16,
                style: const TextStyle(color: dropColor),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue3 = newValue;
                  });
                },
                items: <String>['720p', '1080p', '2160p', '3D'].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ],
          ),
          if (listLength > 0)
            Expanded(
              flex: 1,
              child: GridView.builder(
                  itemCount: listLength,
                  gridDelegate:
                      // crossAxisCount stands for number of columns you want for displaying
                      const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  itemBuilder: (BuildContext context, int index) {
                    return Stack(children: <Widget>[
                      Container(
                        alignment: Alignment.topCenter,
                        child: Image.network(
                          moviesList[index]['medium_cover_image'],
                          height: 189,
                          width: 126,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          moviesList[index]['title'],
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ]);
                  }),
            )
          else
            const Center(
              child: CircularProgressIndicator(),
            ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: <Widget>[
            RaisedButton(
              child: const Text(
                ' Search! ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                setState(() {
                  noOfGetMore = 1;
                });
                doInit().then((List<dynamic> movies) {
                  setState(() {
                    moviesList = movies;
                  });
                });
              },
              color: primaryColor,
              padding: const EdgeInsets.all(20.0),
            ),
            RaisedButton(
              child: const Text(
                'Get more!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                setState(() {
                  noOfGetMore += 1;
                  if (moviesList.length < (10 * noOfGetMore)) {
                    listLength = moviesList.length;
                  } else {
                    listLength = 10 * noOfGetMore;
                  }
                });
              },
              color: primaryColor,
              padding: const EdgeInsets.all(20.0),
            ),
          ]),
        ],
      ),
    );
  }
}
