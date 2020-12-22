import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_apps/src/movie_redux/actions/get_movies.dart';
import 'package:flutter_apps/src/movie_redux/data/dwld_api.dart';
import 'package:flutter_apps/src/movie_redux/middleware/app_middleware.dart';
import 'package:flutter_apps/src/movie_redux/models/app_state.dart';
import 'package:flutter_apps/src/movie_redux/presentation/home.dart';
import 'package:flutter_apps/src/movie_redux/reducer/reducer.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';

void main() {
  final Client client = Client();
  final DwldApi dwldApi = DwldApi(client: client);
  final AppMiddleware middleware = AppMiddleware(dwldApi: dwldApi);
  final AppState initialState = AppState.initialState();
  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: initialState,
    middleware: middleware.middleware,
  );

  store.dispatch(const GetMovies());

  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key, @required this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
