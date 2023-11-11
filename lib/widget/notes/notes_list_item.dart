import 'package:daymemory/widget/common/components/html_viewer.dart';
import 'package:daymemory/widget/common/components/image_grid/media_files_grid.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/notes/note_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotesListItem extends StatelessWidget {
  const NotesListItem({super.key, required this.viewModel});

  final NoteViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(viewModel.isFullscreen ? 0 : 10, 5, viewModel.isFullscreen ? 0 : 20, 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                viewModel.openNoteCommand.command();
              },
              child: Container(
                  constraints: const BoxConstraints(
                    minHeight: 50.0,
                  ),
                  margin: EdgeInsets.fromLTRB(viewModel.isFullscreen ? 0 : 10, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Row(
                            children: [
                              Text(viewModel.displayDate, style: const TextStyle(color: Colors.grey, fontSize: 14)),
                              const Spacer(),
                              if (viewModel.showContextMenu) _showPopupMenuButton(),
                              if (!viewModel.showContextMenu)
                                IconButton(
                                  icon: const Icon(
                                    Icons.more_horiz,
                                    color: Colors.grey,
                                  ),
                                  splashRadius: 20,
                                  onPressed: () {
                                    _showContextMenu(context);
                                  },
                                ),
                            ],
                          )),
                      if (viewModel.mediaFiles.isNotEmpty)
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: MediaFilesGrid(
                              mediaFiles: viewModel.mediaFiles,
                              imageClicked: TypedFunctionHolder<int>((index) {
                                viewModel.openGalleryCommand.command(index);
                              })),
                        ),
                      if (viewModel.text.isNotEmpty)
                        Container(
                            width: double.infinity,
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: HtmlViewer(
                              viewModel.text,
                              scaleFactor: 1,
                              showMoreText: viewModel.showMoreText,
                              onHashTagPressed: (text) {
                                viewModel.openTagCommand.command(text.replaceAll("#", ""));
                              },
                            )),
                      //if (viewModel.location != null && viewModel.location!.address != null) _LocationWidget(viewModel: viewModel)
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }

  Widget _showPopupMenuButton() {
    return PopupMenuButton(
      tooltip: "",
      splashRadius: 20,
      icon: const Icon(
        Icons.more_horiz,
        color: Colors.grey,
      ),
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: Text(viewModel.menuEdit),
          onTap: () {
            Future.delayed(const Duration(milliseconds: 0), () {
              viewModel.openNoteCommand.command();
            });
          },
        ),
        PopupMenuItem(
          value: 2,
          child: Text(viewModel.menuDelete),
          onTap: () {
            viewModel.deleteNoteCommand.command();
          },
        ),
      ],
    );
  }

  void _showContextMenu(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        cancelButton: CupertinoActionSheetAction(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(viewModel.menuCancel),
        ),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
              viewModel.openNoteCommand.command();
            },
            child: Text(viewModel.menuEdit),
          ),
          CupertinoActionSheetAction(
            onPressed: () async {
              Navigator.pop(context);
              viewModel.deleteNoteCommand.command();
            },
            isDestructiveAction: true,
            child: Text(viewModel.menuDelete),
          ),
        ],
      ),
    );
  }
}

class _LocationWidget extends StatelessWidget {
  const _LocationWidget({
    required this.viewModel,
  });

  final NoteViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 5, 0, 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(
            Icons.location_on_outlined,
            color: Colors.grey,
            size: 18,
          ),
          Flexible(
            child: Text(
              viewModel.location!.address!,
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 14,
              ),
              overflow: TextOverflow.ellipsis,
              softWrap: true,
            ),
          )
        ],
      ),
    );
  }
}
