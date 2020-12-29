library set_selected_movie;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_selected_image.freezed.dart';

@freezed
abstract class SetSelectedImage with _$SetSelectedImage {
  const factory SetSelectedImage(String imageId) = SetSelectedImage$;
}
