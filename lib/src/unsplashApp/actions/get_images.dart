library get_images;

import 'package:flutter_apps/src/unsplashApp/models/imagesplash.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_images.freezed.dart';

@freezed
abstract class GetImages with _$GetImages {
  const factory GetImages() = GetImagesStart;

  const factory GetImages.successful(List<ImageSplash> images) = GetImagesSuccessful;

  const factory GetImages.error(dynamic error) = GetImagesError;
}
