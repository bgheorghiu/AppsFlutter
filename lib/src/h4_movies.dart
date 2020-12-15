import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:async';
import 'dart:convert';

String dropdownValue = 'Comedy';
String dropdownValue2 = '5';
String dropdownValue3 = '720p';
final NotFoundURL = "https://user-images.githubusercontent.com/24848110/33519396-7e56363c-d79d-11e7-969b-09782f5ccbab.png";
int NoOfGetMore = 1;
var ListLength = 0;
doInit() async {

  var movies = [];
  int pageCounter = 1;
  while(movies.length < 50) {
    Uri uri = Uri.parse("https://yts.mx/api/v2/list_movies.json");
    var pageValue = pageCounter.toString();
    final params = {
      "minimum_rating": dropdownValue2,
      "genre": dropdownValue,
      "quality": dropdownValue3,
      "page": pageValue
    };
    final newURI = uri.replace(queryParameters: params);
    final Response response = await get(newURI);
    final String data = response.body;
    final decoder = jsonDecode(response.body);
    final tempMovies = decoder["data"]["movies"];
    print(decoder["data"]["page_number"]);
    print(movies.length);
    pageCounter += 1;
    if(pageCounter > 100){
      break;
    }
    if (tempMovies == null) {
      continue;
    }
    for(int i = 0; i < tempMovies.length ; i+= 1) {
      movies.add(tempMovies[i]);
    }
  }
  if (movies.length < 10){
    ListLength = movies.length;
  }
  else{
    ListLength = 10;
  }
  return movies;
}

void main() {
  runApp(MyApp());
}
const primaryColor = const Color(0xFFb3e5fc);
const dropColor = Colors.blueGrey;
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
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

  var filme = [];

  @override
  void initState() {
    doInit().then((movies){
      setState(() {
        filme = movies;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose ya movie!',
        ),
      ),
      body: new Column(
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new DropdownButton<String>(
                value: dropdownValue,
                icon: Icon(Icons.arrow_downward),
                iconSize: 32,
                elevation: 16,
                style: TextStyle(color: dropColor),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue = newValue;
                  });
                },
                items: <String>[
                  "Action", "Adventure", "Animation", "Biography", "Comedy", "Documentary",
                  "Drama", "Horror", "Mystery", "Romance", "Sci-Fi", "Thriller"]
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
               new DropdownButton<String>(
                 value: dropdownValue2,
                 icon: Icon(Icons.arrow_downward),
                 iconSize: 32,
                 elevation: 16,
                 style: TextStyle(color: dropColor),
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
               new DropdownButton<String>(
                 value: dropdownValue3,
                 icon: Icon(Icons.arrow_downward),
                 iconSize: 32,
                 elevation: 16,
                 style: TextStyle(color: dropColor),
                 onChanged: (String newValue) {
                   setState(() {
                     dropdownValue3 = newValue;
                   });
                 },
                 items: <String>['720p', '1080p', '2160p', '3D']
                     .map<DropdownMenuItem<String>>((String value) {
                   return DropdownMenuItem<String>(
                     value: value,
                     child: Text(value),
                   );
                 }).toList(),
               ),
             ],
            ),
          ListLength > 0 ?
          new Expanded(
            flex: 1,
            child: GridView.builder(
                itemCount: ListLength,
                gridDelegate:
                // crossAxisCount stands for number of columns you want for displaying
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) {
                  return FittedBox(
                    child: Image.network(filme[index]["medium_cover_image"],
                    fit: BoxFit.fitHeight,
                  ),
                );
              }
            ),
          )
          :
          Center(
            child: CircularProgressIndicator(),
          ),
      new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
              new RaisedButton(
                child: new Text(
                  " Search! ",
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: (){
                  setState(() {
                    NoOfGetMore = 1;
                  });
                  doInit().then((movies){
                    setState(() {
                      filme = movies;
                      if(filme == null) {
                        filme = [{"medium_cover_image": NotFoundURL}];
                      }
                    });
                  });
                },
                color: primaryColor,
                padding: const EdgeInsets.all(20.0),
              ),
              new RaisedButton(
                child: new Text(
                  "Get more!",
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: (){
                  setState(() {
                    NoOfGetMore += 1;
                    if (filme.length < (10 * NoOfGetMore)){
                      ListLength = filme.length;
                    }
                    else{
                      ListLength = 10 * NoOfGetMore;
                    }
                  });
                },
                color: primaryColor,
                padding: const EdgeInsets.all(20.0),
              ),
            ]
          ),
        ],
      ),
    );
  }
}
