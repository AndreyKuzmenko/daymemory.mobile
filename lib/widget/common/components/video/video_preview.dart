import 'dart:io';
import 'package:daymemory/services/video_thumbnail_service/video_thumbnail_service.dart';
import 'package:daymemory/widget/common/components/video/video_is_not_supported.dart';
import 'package:daymemory/widget/common/file_view_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

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
  late IVideoThumbnailService _videoThumbnailService;

  @override
  void initState() {
    super.initState();
    _videoThumbnailService = GetIt.I.get<IVideoThumbnailService>();
  }

  @override
  Widget build(BuildContext context) {
    if (_fileBytes != null) {
      return _PhotoPreview(
        bytes: _fileBytes!,
      );
    }
    return FutureBuilder(
        future: _videoThumbnailService.makeThumbnail(widget.file.filePath),
        builder: (BuildContext context, AsyncSnapshot<Uint8List?> result) {
          if (!result.hasData || result.data == null) {
            if (Platform.isWindows) {
              return const _VideoPlayButton(
                iconSize: 64,
              );
            }
            return const VideoIsNotSupported();
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
        const _VideoPlayButton(
          iconSize: 36,
        )
      ],
    );
  }
}

class _VideoPlayButton extends StatelessWidget {
  final double iconSize;

  const _VideoPlayButton({required this.iconSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black.withAlpha(50),
      child: Icon(
        Icons.play_circle_outline,
        color: Colors.white,
        size: iconSize,
      ),
    );
  }
}
