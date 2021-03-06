import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_apps/src/unsplashApp/models/index.dart';
import 'package:redux/redux.dart';
import 'package:meta/meta.dart';

class ColorContainer extends StatelessWidget {
  const ColorContainer({Key key, @required this.builder}) : super(key: key);
  final ViewModelBuilder<String> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, String>(
      converter: (Store<AppState> store) {
        return store.state.color;
      },
      builder: builder,
    );
  }
}
