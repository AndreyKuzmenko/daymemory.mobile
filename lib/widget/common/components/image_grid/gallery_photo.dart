import 'dart:io';
import 'package:daymemory/data/dtos/file_dto.dart';
import 'package:daymemory/widget/common/components/page_navigation.dart';
import 'package:daymemory/widget/common/components/video/desktop_mobile_video_player.dart';
import 'package:daymemory/widget/common/components/video/mobile_video_player.dart';
import 'package:daymemory/widget/common/components/video/video_is_not_supported.dart';
import 'package:daymemory/widget/common/file_view_model.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class GalleryPhoto extends StatefulWidget {
  const GalleryPhoto({
    super.key,
    this.loadingBuilder,
    this.backgroundDecoration,
    this.minScale,
    this.maxScale,
    this.initialIndex = 0,
    this.showNavigation = false,
    required this.galleryItems,
    this.scrollDirection = Axis.horizontal,
  });

  final LoadingBuilder? loadingBuilder;
  final BoxDecoration? backgroundDecoration;
  final dynamic minScale;
  final dynamic maxScale;
  final int initialIndex;
  final bool showNavigation;
  final List<FileViewModel> galleryItems;
  final Axis scrollDirection;

  @override
  State<StatefulWidget> createState() {
    return _GalleryPhotoState();
  }
}

class _GalleryPhotoState extends State<GalleryPhoto> {
  late int currentIndex = widget.initialIndex;
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: widget.initialIndex);
    super.initState();
  }

  void onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Container(
          decoration: widget.backgroundDecoration,
          constraints: BoxConstraints.expand(
            height: MediaQuery.of(context).size.height,
          ),
          child: Stack(
            children: [
              PhotoViewGallery.builder(
                scrollPhysics: const BouncingScrollPhysics(),
                builder: _buildItem,
                gaplessPlayback: true,
                itemCount: widget.galleryItems.length,
                loadingBuilder: widget.loadingBuilder,
                backgroundDecoration: widget.backgroundDecoration,
                pageController: pageController,
                onPageChanged: onPageChanged,
                scrollDirection: widget.scrollDirection,
              ),
              if (widget.galleryItems.length > 1 && widget.showNavigation)
                PageNavigation(
                  pageController: pageController,
                  pageIndex: currentIndex,
                  pageCount: widget.galleryItems.length,
                )
            ],
          ),
        ),
      ),
    );
  }

  PhotoViewGalleryPageOptions _buildItem(BuildContext context, int index) {
    final item = widget.galleryItems[index];

    if (item.fileType == FileType.video) {
      if (Platform.isWindows) {
        return PhotoViewGalleryPageOptions.customChild(
          child: DesktopVideoFilePlayer(file: item),
        );
      }
      if (Platform.isAndroid || Platform.isIOS) {
        return PhotoViewGalleryPageOptions.customChild(
          child: MobileVideoFilePlayer(file: item),
          //heroAttributes: PhotoViewHeroAttributes(tag: item.id),
        );
      }
      return PhotoViewGalleryPageOptions.customChild(
        child: const VideoIsNotSupported(),
        //heroAttributes: PhotoViewHeroAttributes(tag: item.id),
      );
    }

    return PhotoViewGalleryPageOptions(
      imageProvider: FileImage(File(item.filePath)),
      initialScale: PhotoViewComputedScale.contained,
      minScale: PhotoViewComputedScale.contained,
      maxScale: PhotoViewComputedScale.covered * 4.1,
      //heroAttributes: PhotoViewHeroAttributes(tag: item.id),
    );
  }
}
