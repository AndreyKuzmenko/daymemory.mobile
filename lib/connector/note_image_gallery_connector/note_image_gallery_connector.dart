import 'package:daymemory/connector/note_image_gallery_connector/note_image_gallery_converter.dart';
import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/services/device_info_service/device_info_service.dart';
import 'package:daymemory/widget/notes/note_image_gallery_view_model.dart';
import 'package:daymemory/widget/notes/note_image_gallery_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../redux/state/states.dart';

class NoteImageGalleryConnector extends PageConnector<NoteImageGalleryViewModel, NoteImageGalleryConverter> {
  const NoteImageGalleryConnector({super.key});

  @override
  Widget buildWidget(BuildContext context, NoteImageGalleryViewModel viewModel) => NoteImageGalleryWidget(viewModel: viewModel);

  @override
  NoteImageGalleryConverter prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch) {
    final converter = NoteImageGalleryConverter(
      dispatch: dispatch,
      showNavigation: state.deviceState.deviceType == DeviceType.desktop,
      locale: AppLocalizations.of(context)!,
      images: state.noteImageGalleryState.images,
      index: state.noteImageGalleryState.index,
    );
    return converter;
  }
}
