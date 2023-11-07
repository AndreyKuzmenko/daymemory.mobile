import 'package:daymemory/connector/notes_connector/notes_connector.dart';
import 'package:daymemory/connector/question_lists_connector/question_lists_connector.dart';
import 'package:daymemory/widget/tabs/tabs_view_model.dart';
import 'package:flutter/material.dart';

class TabsWidget extends StatelessWidget {
  final TabsViewModel viewModel;

  const TabsWidget({
    super.key,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: viewModel.selectedTabIndex,
        selectedFontSize: 12,
        onTap: (value) {
          viewModel.tabSelectCommand.command(value);
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: viewModel.tabTimeline,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.list),
            label: viewModel.tabQuestions,
          )
        ],
      ),
      body: IndexedStack(index: viewModel.selectedTabIndex, children: const [NotesConnector(), QuestionListsConnector()]),
    );
  }
}
