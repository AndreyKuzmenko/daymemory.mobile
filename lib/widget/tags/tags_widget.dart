import 'package:daymemory/data/dtos/position_dto.dart';
import 'package:daymemory/widget/common/button/done_button.dart';
import 'package:daymemory/widget/common/edit_text_field.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/tags/tag_field_view_model.dart';
import 'package:daymemory/widget/tags/tags_view_model.dart';
import 'package:daymemory/widget/theme/theme_colors_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TagsWidget extends StatefulWidget {
  const TagsWidget({super.key, required this.viewModel});

  final TagsViewModel viewModel;

  @override
  State<TagsWidget> createState() => _TagsWidgetState();
}

class _TagsWidgetState extends State<TagsWidget> {
  final _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            DoneButton(
              height: 40,
              padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 5),
              click: widget.viewModel.isSaving
                  ? null
                  : FunctionHolder(() {
                      final isValid = _form.currentState!.validate();
                      if (!isValid) {
                        return;
                      }
                      widget.viewModel.saveCommand.command();
                    }),
              text: AppLocalizations.of(context)!.done_nav_button,
            ),
          ],
          title: Text(
            widget.viewModel.title,
          ),
          leading: GestureDetector(
            onTap: () {
              widget.viewModel.closeCommand.command();
            },
            child: const Icon(Icons.arrow_back_ios),
          ),
          centerTitle: true,
          backgroundColor: Theme.of(context).extension<ThemeColors>()!.backgroundSecondaryColor,
          elevation: 0,
        ),
        backgroundColor: Theme.of(context).extension<ThemeColors>()!.backgroundSecondaryColor,
        body: SafeArea(
          bottom: false,
          top: false,
          child: Form(key: _form, child: _getEditView()),
        ));
  }

  Widget _getEditView() {
    return ListView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
      children: [
        ReorderableListView.builder(
          shrinkWrap: true,
          primary: false,
          buildDefaultDragHandles: false,
          itemCount: widget.viewModel.items.length,
          itemBuilder: (BuildContext context, int index) {
            return _createItem(widget.viewModel.items[index], index);
          },
          onReorderStart: (index) {
            FocusScope.of(context).unfocus();
          },
          onReorder: (int start, int current) {
            widget.viewModel.reorderCommand.command(ItemPositionDto(current, start));
          },
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: TextButton(
            onPressed: () async {
              FocusScope.of(context).unfocus();
              widget.viewModel.addTagCommand.command();
            },
            child: Container(padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10), child: const Text("+ Add tag")),
          ),
        ),
      ],
    );
  }

  Widget _createItem(TagFieldViewModel model, int index) {
    return ListTile(
      key: Key(model.fieldId),
      leading: ReorderableDragStartListener(
        //key: ValueKey<int>(_items[index]),
        index: index,
        child: const Icon(Icons.drag_handle),
      ),
      title: EditTextField(
        text: model.text,
        placeholder: model.placeholder,
        textChangedCommand: model.textChangedCommand,
      ),
      trailing: GestureDetector(
          child: const Icon(Icons.delete_outline),
          onTap: () {
            if (model.deleteCommand != null) {
              model.deleteCommand!.command();
            }
          }),
    );
  }
}
