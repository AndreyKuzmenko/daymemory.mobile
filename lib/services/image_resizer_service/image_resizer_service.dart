//import 'dart:io';

//import 'package:flutter/foundation.dart';
import 'package:image/image.dart' as img;
//import 'package:flutter_image_compress/flutter_image_compress.dart';

abstract class IImageResizerService {
  Future resize(String sourceFilePath, String destinationFilePath, int maxWidthSize, int quality);
}

class ImageResizerService implements IImageResizerService {
  @override
  Future resize(String sourceFilePath, String destinationFilePath, int maxWidthSize, int quality) async {
    final cmd = img.Command()
      // Decode the image file at the given path
      ..decodeImageFile(sourceFilePath)
      // Resize the image to a width of 64 pixels and a height that maintains the aspect ratio of the original.
      ..copyResize(width: maxWidthSize)
      // Write the image to a PNG file (determined by the suffix of the file path).
      ..writeToFile(destinationFilePath);
    // On platforms that support Isolates, execute the image commands asynchronously on an isolate thread.
    // Otherwise, the commands will be executed synchronously.
    await cmd.executeThread();
    //img.Image? image = await img.decodeImageFile(sourceFilePath);

    // if (image == null || image.width < maxWidthSize) {
    //   return;
    // }

    // var result = await FlutterImageCompress.compressWithFile(
    //   sourceFilePath,
    //   minWidth: 2300,
    //   minHeight: 1500,
    //   quality: quality,
    // );

    // // img.Image resized = img.copyResize(image, width: maxWidthSize);
    // //Uint8List resizedImg = Uint8List.fromList();

    // var file = File(destinationFilePath);
    // await file.writeAsBytes(result!.buffer.asUint8List());
  }
}
