import 'package:flutter_apps/src/unsplashApp/data/unsplash_api.dart';
import 'package:flutter_apps/src/unsplashApp/models/index.dart';
import 'package:flutter_apps/src/unsplashApp/actions/index.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';
import 'package:redux_epics/redux_epics.dart';

class AppEpics {
  AppEpics({@required UnsplashApi unsplashApi})
      : assert(unsplashApi != null),
        _unsplashApi = unsplashApi;

  final UnsplashApi _unsplashApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GetImagesStart>(_getImagesStart),
    ]);
  }

  Stream<dynamic> _getImagesStart(Stream<GetImagesStart> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((GetImagesStart event) => _unsplashApi.getImages(
              store.state.query,
              store.state.page,
              store.state.color,
            ))
        .map((List<ImageSplash> event) => GetImages.successful(event))
        .onErrorReturnWith((dynamic error) => GetImages.error(error));
  }
}
