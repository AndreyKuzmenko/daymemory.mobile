import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:image/image.dart' as img;

abstract class IImageResizerService {
  Future resize(String sourceFilePath, String destinationFilePath, int maxWidthSize, int quality);
}

class ImageResizerService implements IImageResizerService {
  @override
  Future resize(String sourceFilePath, String destinationFilePath, int maxWidthSize, int quality) async {
    img.Image? image = await img.decodeImageFile(sourceFilePath);

    if (image == null || image.width < maxWidthSize) {
      return;
    }

    img.Image resized = img.copyResize(image, width: maxWidthSize);
    Uint8List resizedImg = Uint8List.fromList(img.encodeJpg(resized, quality: quality));

    var file = File(destinationFilePath);
    await file.writeAsBytes(resizedImg);
  }
}
