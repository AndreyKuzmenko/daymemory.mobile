import 'package:daymemory/data/dtos/notebook_dto.dart';
import 'package:flutter/material.dart';

class SortNotebookListItem extends StatelessWidget {
  const SortNotebookListItem({Key? key, required this.notebook, required this.showDragIcon}) : super(key: key);

  final NotebookDto notebook;

  final bool showDragIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: double.infinity, child: Text(notebook.title, style: const TextStyle(fontSize: 16))),
              ],
            ),
          ),
          if (showDragIcon)
            const SizedBox(
              width: 40,
              child: Icon(
                Icons.drag_handle,
                color: Colors.grey,
              ),
            )
        ],
      ),
    );
  }
}
