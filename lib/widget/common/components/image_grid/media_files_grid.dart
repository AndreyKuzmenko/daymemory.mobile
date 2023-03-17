import 'dart:io';
import 'package:daymemory/data/dtos/file_dto.dart';
import 'package:daymemory/widget/common/components/video/video_preview.dart';
import 'package:daymemory/widget/common/file_view_model.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MediaFilesGrid extends StatefulWidget {
  final List<FileViewModel> mediaFiles;

  final TypedFunctionHolder<int>? imageClicked;

  const MediaFilesGrid({Key? key, required this.mediaFiles, this.imageClicked}) : super(key: key);

  @override
  State<MediaFilesGrid> createState() => _MediaFilesGridState();
}

class _MediaFilesGridState extends State<MediaFilesGrid> {
  // final images = <FileImage>[];

  // @override
  // void didChangeDependencies() {
  //   for (var image in widget.images) {
  //     var fileImage = FileImage(File(image.filePath));
  //     precacheImage(fileImage, context);
  //     images.add(fileImage);
  //   }
  //   super.didChangeDependencies();
  // }

  void openImageGallery(BuildContext context, final int index) {
    if (widget.imageClicked != null) {
      widget.imageClicked!.command(index);
    }
  }

  Widget getOneFilePreview(FileViewModel file) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      var height = file.height / file.width * constraints.maxWidth;
      return Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(horizontal: 0),
        //decoration: const BoxDecoration(color: Colors.transparent),
        child: GestureDetector(
            onTap: () {
              openImageGallery(context, 0);
            },
            child: getFilePreview(
              0,
              boxfit: BoxFit.fitWidth,
              height: height,
            )),
      );
    });
  }

  Widget getFilePreview(int index, {BoxFit boxfit = BoxFit.cover, double? height}) {
    final file = widget.mediaFiles[index];
    if (file.fileType == FileType.image) {
      return GestureDetector(
        key: Key(file.id),
        onTap: () {
          openImageGallery(context, index);
        },
        child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black.withAlpha(15),
            ),
            child: Image(
              image: FileImage(File(file.filePath)),
              gaplessPlayback: true,
              fit: boxfit,
              height: height,
            )),
      );
    }
    return GestureDetector(
      key: Key(file.id),
      onTap: () {
        openImageGallery(context, index);
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black.withAlpha(15),
        ),
        child: SizedBox(
          height: height,
          child: VideoPreview(
            file: file,
            quality: 10,
          ),
        ),
      ),
    );
  }

  Widget getFilePreviewWithMore(int index) {
    return GestureDetector(
      onTap: () {
        openImageGallery(context, index);
      },
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: getFilePreview(index),
          ),
          Positioned.fill(
            child: Container(
              alignment: Alignment.center,
              color: Colors.black54,
              child: Text(
                '+${widget.mediaFiles.length - 4}',
                style: const TextStyle(fontSize: 32, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.mediaFiles.length == 1) {
      return getOneFilePreview(widget.mediaFiles[0]);
    } else if (widget.mediaFiles.length == 2) {
      return StaggeredGrid.count(
        crossAxisCount: 2,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: [
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: getFilePreview(0),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: getFilePreview(1),
          ),
        ],
      );
    } else if (widget.mediaFiles.length == 3) {
      return StaggeredGrid.count(
        crossAxisCount: 3,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: [
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: getFilePreview(0),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: getFilePreview(1),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: getFilePreview(2),
          ),
        ],
      );
    } else if (widget.mediaFiles.length == 4) {
      return StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: [
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: getFilePreview(0),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: getFilePreview(1),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: getFilePreview(2),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: getFilePreview(3),
          ),
        ],
      );
    }

    return StaggeredGrid.count(
      crossAxisCount: 4,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: [
        StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 2,
          child: getFilePreview(0),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 1,
          child: getFilePreview(1),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: getFilePreview(2),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: getFilePreviewWithMore(3),
        ),
      ],
    );
  }
}
