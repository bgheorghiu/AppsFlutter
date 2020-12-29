import 'package:flutter_apps/src/unsplashApp/models/imagesplash.dart';
import 'package:flutter_apps/src/unsplashApp/data/unsplash_api.dart';
import 'package:flutter_apps/src/unsplashApp/models/app_state.dart';
import 'package:flutter_apps/src/unsplashApp/actions/get_images.dart';
import 'package:redux/redux.dart';
import 'package:meta/meta.dart';

class AppMiddleware {
  AppMiddleware({@required UnsplashApi unsplashApi})
      : assert(unsplashApi != null),
        _unsplashApi = unsplashApi;

  final UnsplashApi _unsplashApi;

  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[
      _getImages,
    ];
  }

  Future<void> _getImages(Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);

    if (action is GetImagesStart) {
      try {
        print("incerc");
        final List<ImageSplash> photos = await _unsplashApi.getImages(
          store.state.query,
          store.state.page,
          store.state.color,
        );
        final GetImagesSuccessful successful = GetImages.successful(photos);
        store.dispatch(successful);
      } catch (e) {
        final GetImagesError error = GetImages.error(e);
        store.dispatch(error);
      }
    }
  }
}
