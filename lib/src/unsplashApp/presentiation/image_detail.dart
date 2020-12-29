import 'package:flutter/material.dart';
import 'package:flutter_apps/src/unsplashApp/containers/image_container.dart';
import 'package:flutter_apps/src/unsplashApp/models/imagesplash.dart';

class ImageDetail extends StatelessWidget {
  const ImageDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageContainer(
      builder: (BuildContext context, ImageSplash currImg) {
        return Scaffold(
          appBar: AppBar(
            title: Text(currImg.altDescription),
          ),
          body: Image.network(currImg.urls.regular),
        );
      },
    );
  }
}
