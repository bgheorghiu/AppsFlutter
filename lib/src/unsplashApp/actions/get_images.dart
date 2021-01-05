part of actions;

@freezed
abstract class GetImages with _$GetImages {
  const factory GetImages() = GetImagesStart;

  const factory GetImages.successful(List<ImageSplash> images) = GetImagesSuccessful;

  const factory GetImages.error(dynamic error) = GetImagesError;
}
