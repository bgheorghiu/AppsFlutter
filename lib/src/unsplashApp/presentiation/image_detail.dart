import 'package:flutter/material.dart';
import 'package:flutter_apps/src/unsplashApp/containers/image_container.dart';
import 'package:flutter_apps/src/unsplashApp/models/index.dart';

class ImageDetail extends StatelessWidget {
  const ImageDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageContainer(
      builder: (BuildContext context, ImageSplash currImg) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Get Back',
            ),
            backgroundColor: Colors.black12,
          ),
          body: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  currImg.altDescription.toUpperCase(),
                  style: const TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 18,
                    color: Color(0xff424242),
                    fontWeight: FontWeight.w900,
                  ),
                  textAlign: TextAlign.center,
                ),
                Card(
                  elevation: 25,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  color: Colors.white,
                  child: Image(
                    image: NetworkImage(currImg.urls.small),
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
