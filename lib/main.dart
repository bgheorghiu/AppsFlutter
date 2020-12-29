import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_apps/src/unsplashApp/actions/get_images.dart';
import 'package:flutter_apps/src/unsplashApp/data/unsplash_api.dart';
import 'package:flutter_apps/src/unsplashApp/middleware/app_middleware.dart';
import 'package:flutter_apps/src/unsplashApp/models/app_state.dart';
import 'package:flutter_apps/src/unsplashApp/presentiation/home.dart';
import 'package:flutter_apps/src/unsplashApp/presentiation/image_detail.dart';
import 'package:flutter_apps/src/unsplashApp/reducer/reducer.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';

void main() {
  final Client client = Client();
  final UnsplashApi unsplashApi = UnsplashApi(client: client);
  final AppMiddleware middleware = AppMiddleware(unsplashApi: unsplashApi);
  final AppState initialState = AppState.initialState();
  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: initialState,
    middleware: middleware.middleware,
  );

  store.dispatch(const GetImages());

  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key, @required this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        home: const HomePage(),
        routes: <String, WidgetBuilder>{
          '/imageDetail': (BuildContext context) => const ImageDetail(),
        },
      ),
    );
  }
}
