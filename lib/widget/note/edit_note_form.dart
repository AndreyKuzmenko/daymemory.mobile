import 'dart:convert';
import 'dart:io';
import 'package:daymemory/data/dtos/file_dto.dart';
import 'package:daymemory/data/dtos/note_dto.dart';
import 'package:daymemory/data/dtos/position_dto.dart';
import 'package:daymemory/services/logging/logging_service.dart';
import 'package:daymemory/widget/common/components/video/video_preview.dart';
import 'package:daymemory/widget/common/file_view_model.dart';
import 'package:daymemory/widget/note/toolbar.dart';
import 'package:daymemory/widget/note/editnote_view_model.dart';
import 'package:daymemory/widget/theme/theme_colors_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_quill/quill_delta.dart';
import 'package:get_it/get_it.dart';
import 'package:keyboard_actions/keyboard_actions.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// ignore: implementation_imports, library_prefixes
import 'package:flutter/src/widgets/text.dart' as Text;
// ignore: implementation_imports
import 'package:flutter_quill/src/models/documents/document.dart' as d;

class EditNoteForm extends StatefulWidget {
  const EditNoteForm({super.key, required this.viewModel});

  final EditNoteViewModel viewModel;

  @override
  State<EditNoteForm> createState() => _EditFormState();
}

class _EditFormState extends State<EditNoteForm> {
  late String _initialText;

  late bool _isNew;

  late bool _hasFocus = false;

  late FocusNode _nodeText;

  late LocationDto? _currentLocation;

  late ScrollController _scrollController;

  late QuillController _quillController;

  late ILoggingService _loggingService;

  @override
  void initState() {
    super.initState();
    _isNew = widget.viewModel.text == null || widget.viewModel.text!.isEmpty;
    _currentLocation = widget.viewModel.location;
    _initialText = widget.viewModel.text ?? "";
    _nodeText = FocusNode();
    _quillController = QuillController.basic();
    _scrollController = ScrollController();
    _loggingService = GetIt.I.get<ILoggingService>();

    _nodeText.addListener(() {
      if (!_hasFocus) {
        setState(() {
          _hasFocus = _nodeText.hasFocus;
        });
      }
    });

    _quillController.addListener(_updateText);

    if (_initialText.isNotEmpty) {
      _loadContent(_initialText);
    }
  }

  @override
  void dispose() {
    _quillController.removeListener(_updateText);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.viewModel.showToolbarOnTop) {
      return Column(
        children: [
          //if (_hasFocus)
          Container(
            height: 50,
            margin: const EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: Theme.of(context).extension<ThemeColors>()!.backgroundSecondaryColor,
            ),
            child: _createToolbar(),
          ),
          Expanded(child: _createEditForm()),
        ],
      );
    }
    return KeyboardActions(
      disableScroll: true,
      bottomAvoiderScrollPhysics: const BouncingScrollPhysics(),
      autoScroll: true,
      config: _buildConfig(context),
      keepFocusOnTappingNode: true,
      child: GestureDetector(
        onTap: () {
          if (!_nodeText.hasFocus) {
            _nodeText.requestFocus();
          }
        },
        child: _createEditForm(),
      ),
    );
  }

  void _loadContent(String content) {
    try {
      var json = jsonDecode(content);
      final doc = d.Document.fromJson(json);
      setState(() {
        _quillController = QuillController(document: doc, selection: const TextSelection.collapsed(offset: 0));
      });
      _quillController.addListener(() {
        _updateText();
      });
    } catch (error) {
      _loggingService.logError(error);
    }
  }

  String _quillDeltaToHtml(Delta delta) {
    var html = jsonEncode(delta.toJson());
    return html;
  }

  void _updateText() {
    final text = _quillDeltaToHtml(_quillController.document.toDelta());
    if (_initialText != text) {
      widget.viewModel.textChangedCommand.command(text);
    }
  }

  QuillEditor _createQuillEditor() {
    final defaultTextStyle = DefaultTextStyle.of(context);
    //const baseSpacing = Tuple2<double, double>(0, 0);
    final baseStyle = defaultTextStyle.style.copyWith(
      fontSize: 18,
      height: 1.3,
    );
    return QuillEditor(
      focusNode: _nodeText,
      scrollController: _scrollController,
      configurations: QuillEditorConfigurations(
        controller: _quillController,
        placeholder: widget.viewModel.textPlaceholder,
        padding: const EdgeInsets.all(0),
        readOnly: false,
        scrollable: false,
        autoFocus: _isNew,
        enableInteractiveSelection: true,
        expands: false,
        scrollBottomInset: 150,
        customStyles: DefaultStyles(
            lists: DefaultListBlockStyle(baseStyle.copyWith(), const VerticalSpacing(0, 5), const VerticalSpacing(10, 0), null, null),
            paragraph: DefaultTextBlockStyle(baseStyle.copyWith(), const VerticalSpacing(0, 20), const VerticalSpacing(0, 0), null),
            h2: DefaultTextBlockStyle(
                defaultTextStyle.style.copyWith(
                  fontSize: 22,
                  height: 1.5,
                  fontWeight: FontWeight.w700,
                ),
                const VerticalSpacing(5, 10),
                const VerticalSpacing(0, 0),
                null),
            h3: DefaultTextBlockStyle(
                defaultTextStyle.style.copyWith(
                  fontSize: 18,
                  height: 1.5,
                  fontWeight: FontWeight.w700,
                ),
                const VerticalSpacing(0, 10),
                const VerticalSpacing(0, 0),
                null)),
        // padding: const EdgeInsets.all(0),
        // readOnly: false,
        // scrollable: false,
        // autoFocus: _isNew,
        // placeholder: widget.viewModel.textPlaceholder,
        // enableInteractiveSelection: true,
        // expands: false,
        // scrollBottomInset: 150,
        // customStyles: DefaultStyles(
        //     lists: DefaultListBlockStyle(baseStyle.copyWith(), const VerticalSpacing(0, 5), const VerticalSpacing(10, 0), null, null),
        //     paragraph: DefaultTextBlockStyle(baseStyle.copyWith(), const VerticalSpacing(0, 20), const VerticalSpacing(0, 0), null),
        //     h2: DefaultTextBlockStyle(
        //         defaultTextStyle.style.copyWith(
        //           fontSize: 22,
        //           color: Colors.black,
        //           height: 1.5,
        //           fontWeight: FontWeight.w700,
        //         ),
        //         const VerticalSpacing(5, 10),
        //         const VerticalSpacing(0, 0),
        //         null),
        //     h3: DefaultTextBlockStyle(
        //         defaultTextStyle.style.copyWith(
        //           fontSize: 18,
        //           color: Colors.black,
        //           height: 1.5,
        //           fontWeight: FontWeight.w700,
        //         ),
        //         const VerticalSpacing(0, 10),
        //         const VerticalSpacing(0, 0),
        //         null)),
      ),
    );
  }

  Widget _createEditForm() {
    var quill = _createQuillEditor();
    return SingleChildScrollView(
      controller: _scrollController,
      padding: const EdgeInsets.fromLTRB(15, 10, 15, 100),
      primary: false,
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          if (widget.viewModel.questionText != null)
            Container(
              margin: const EdgeInsets.fromLTRB(5, 10, 5, 20),
              width: double.infinity,
              child: Text.Text(
                widget.viewModel.questionText!,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                textAlign: TextAlign.left,
              ),
            ),
          widget.viewModel.mediaFiles.isEmpty
              ? const SizedBox.shrink()
              : Container(
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 15),
                  height: 120,
                  child: ReorderableListView.builder(
                      itemCount: widget.viewModel.mediaFiles.length,
                      //buildDefaultDragHandles: false,
                      onReorder: (int start, int current) {
                        widget.viewModel.reorderCommand.command(ItemPositionDto(current, start));
                      },
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          key: Key(widget.viewModel.mediaFiles[index].id),
                          margin: const EdgeInsets.all(5),
                          child: _getFilePreview(widget.viewModel.mediaFiles[index]),
                        );
                      }),
                ),
          Container(
            margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: quill,
          ),
          // if (widget.viewModel.location != null && !_hasFocus)
          //   Container(
          //     margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          //     child: Row(
          //       children: [
          //         const Icon(
          //           Icons.location_on_outlined,
          //           size: 16,
          //           color: Colors.grey,
          //         ),
          //         Text.Text(
          //           widget.viewModel.location?.address ?? '',
          //           style: const TextStyle(color: Colors.grey, fontSize: 14),
          //         ),
          //       ],
          //     ),
          //   ),
        ],
      ),
    );
  }

  Widget _getFilePreview(FileViewModel fileItem) {
    return Stack(
      children: [
        if (fileItem.fileType == FileType.image)
          Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.black.withAlpha(15),
              ),
              child: Image(
                image: FileImage(File(fileItem.filePath)),
                fit: BoxFit.cover,
              )),
        if (fileItem.fileType == FileType.video)
          Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.black.withAlpha(15),
              ),
              child: VideoPreview(
                file: fileItem,
                quality: 10,
              )),
        Positioned(
          right: 5,
          top: 5,
          child: GestureDetector(
              child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    color: Colors.black.withAlpha(180),
                  ),
                  child: const Icon(
                    Icons.close,
                    color: Colors.white,
                  )),
              onTap: () async {
                if (widget.viewModel.deleteImageCommand != null) {
                  widget.viewModel.deleteImageCommand!.command(fileItem.id);
                }
              }),
        )
      ],
    );
  }

  KeyboardActionsConfig _buildConfig(BuildContext context) {
    var config = KeyboardActionsConfig(
      keyboardActionsPlatform: KeyboardActionsPlatform.ALL,
      keyboardBarColor: Theme.of(context).extension<ThemeColors>()!.backgroundSecondaryColor,
      keyboardBarElevation: 20,
      nextFocus: true,
      defaultDoneWidget: Text.Text(AppLocalizations.of(context)!.done_nav_button),
      actions: [
        KeyboardActionsItem(
            footerBuilder: (context) {
              return PreferredSize(
                preferredSize: const Size(double.infinity, 50),
                child: _createToolbar(),
              );
            },
            focusNode: _nodeText,
            displayArrows: false,
            displayActionBar: false),
      ],
    );

    return config;
  }

  Toolbar _createToolbar() {
    return Toolbar(
        focusNode: _nodeText,
        tags: widget.viewModel.tags,
        isImageEnabled: widget.viewModel.selectImagesCommand != null,
        isVideoEnabled: widget.viewModel.isVideoSupported,
        quillController: _quillController,
        location: _currentLocation,
        onOptionsClicked: () async {
          widget.viewModel.optionsCommand.command();
        },
        onImageSelectorClicked: widget.viewModel.selectImagesCommand == null
            ? null
            : () async {
                widget.viewModel.selectImagesCommand!.command();
                _nodeText.unfocus();
              },
        onVideoSelectorClicked: widget.viewModel.selectImagesCommand == null
            ? null
            : () async {
                widget.viewModel.selectVideoCommand!.command();
                _nodeText.unfocus();
              },
        onTagClicked: (String tagText) async {
          var tag = "#$tagText ";
          var index = _quillController.selection.baseOffset;
          final length = _quillController.selection.extentOffset - index;
          if (index > 0) {
            var prevSymbol = _quillController.document.getPlainText(index - 1, 1);
            if (prevSymbol == "#") {
              tag = tag.substring(1, tag.length);
            }
          }
          _quillController.replaceText(index, length, tag, null);
          _quillController.moveCursorToPosition(index + tag.length);
        });
  }
}
