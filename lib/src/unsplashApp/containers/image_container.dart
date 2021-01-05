import 'package:flutter/cupertino.dart';
import 'package:flutter_apps/src/unsplashApp/models/index.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:meta/meta.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({Key key, @required this.builder}) : super(key: key);
  final ViewModelBuilder<ImageSplash> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ImageSplash>(
      converter: (Store<AppState> store) {
        return store.state.images.firstWhere((ImageSplash currImg) => currImg.id == store.state.selectedImage);
      },
      builder: builder,
    );
  }
}
