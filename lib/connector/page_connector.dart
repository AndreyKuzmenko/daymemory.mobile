import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/redux/state/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

abstract class PageConnector<V, B extends ViewModelConverter<V>> extends StatelessWidget {
  const PageConnector({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, V>(
      onInit: (store) {
        onInit(context, store.state, store.dispatch);
      },
      onDispose: (store) {
        onDispose(context, store.state, store.dispatch);
      },
      distinct: true,
      converter: (store) {
        final converter = prepareConverter(context, store.state, store.dispatch);
        return converter.build();
      },
      builder: buildWidget,
    );
  }

  B prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch);

  Widget buildWidget(BuildContext context, V viewModel);

  void onInit(BuildContext context, AppState state, Function dispatch) {}

  void onDispose(BuildContext context, AppState state, Function dispatch) {}
}
