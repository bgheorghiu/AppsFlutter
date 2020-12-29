import 'package:flutter_apps/src/unsplashApp/models/imagesplash.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_apps/src/unsplashApp/models/app_state.dart';
import 'package:meta/meta.dart';
import 'package:redux/redux.dart';

class ImagesContainer extends StatelessWidget {
  const ImagesContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<BuiltList<ImageSplash>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, BuiltList<ImageSplash>>(
      converter: (Store<AppState> store) {
        return store.state.images;
      },
      builder: builder,
    );
  }
}
