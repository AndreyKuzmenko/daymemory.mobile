import 'package:daymemory/widget/common/buttons/nav_button_widget.dart';
import 'package:daymemory/widget/common/components/image_grid/gallery_photo.dart';
import 'package:daymemory/widget/common/loading_indicator/loading_indicator.dart';
import 'package:daymemory/widget/notes/note_image_gallery_view_model.dart';

import 'package:flutter/material.dart';

class NoteImageGalleryWidget extends StatefulWidget {
  final NoteImageGalleryViewModel viewModel;

  const NoteImageGalleryWidget({
    super.key,
    required this.viewModel,
  });

  @override
  State<NoteImageGalleryWidget> createState() => _NoteImageGalleryWidgetState();
}

class _NoteImageGalleryWidgetState extends State<NoteImageGalleryWidget> {
  Offset startDragPosition = Offset.zero;

  Offset endDragPosition = Offset.zero;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        top: false,
        child: Stack(children: [
          GalleryPhoto(
            galleryItems: widget.viewModel.images,
            showNavigation: widget.viewModel.showImageNavigation,
            loadingBuilder: (context, event) {
              return const LoadingIndicator();
            },
            backgroundDecoration: const BoxDecoration(
              color: Colors.black,
            ),
            initialIndex: widget.viewModel.index,
            scrollDirection: Axis.horizontal,
          ),
          Positioned(
            top: 40,
            left: 15,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                color: Colors.black.withAlpha(180),
              ),
              child: NavButtonWidget(
                onPressed: widget.viewModel.closeCommand,
                icon: Icons.close,
                //color: Colors.white,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
