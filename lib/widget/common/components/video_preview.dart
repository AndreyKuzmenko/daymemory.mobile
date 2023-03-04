import 'dart:io';
import 'package:daymemory/widget/common/components/video_is_not_supported.dart';
import 'package:daymemory/widget/common/file_view_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

class VideoPreview extends StatefulWidget {
  const VideoPreview({
    Key? key,
    required this.file,
    required this.quality,
  }) : super(key: key);

  final FileViewModel file;
  final int quality;

  @override
  State<VideoPreview> createState() => _VideoPreviewState();
}

class _VideoPreviewState extends State<VideoPreview> {
  Uint8List? _fileBytes;

  @override
  Widget build(BuildContext context) {
    if (!Platform.isAndroid && !Platform.isIOS) {
      return const VideoIsNotSupported();
    }

    if (_fileBytes != null) {
      return _PhotoPreview(
        bytes: _fileBytes!,
      );
    }
    return FutureBuilder(
        future: VideoThumbnail.thumbnailData(
          video: widget.file.filePath,
          imageFormat: ImageFormat.JPEG,
          quality: widget.quality,
        ),
        builder: (BuildContext context, AsyncSnapshot<Uint8List?> result) {
          if (!result.hasData || result.data == null) {
            return const SizedBox.shrink();
          }
          _fileBytes = result.data!;
          return _PhotoPreview(
            bytes: result.data!,
          );
        });
  }
}

class _PhotoPreview extends StatelessWidget {
  final Uint8List bytes;

  const _PhotoPreview({Key? key, required this.bytes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Image.memory(
            bytes,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.black.withAlpha(50),
          child: const Icon(
            Icons.play_circle_outline,
            color: Colors.white,
            size: 36,
          ),
        )
      ],
    );
  }
}
