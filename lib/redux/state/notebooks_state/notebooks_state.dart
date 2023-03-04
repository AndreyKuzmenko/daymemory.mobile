import 'package:built_value/built_value.dart';
import 'package:daymemory/data/dtos/notebook_dto.dart';

part 'notebooks_state.g.dart';

abstract class NotebooksState implements Built<NotebooksState, NotebooksStateBuilder> {
  List<NotebookDto> get items;

  NotebooksState._();

  factory NotebooksState([void Function(NotebooksStateBuilder) updates]) = _$NotebooksState;

  factory NotebooksState.initial() => NotebooksState((b) => b..items = []);
}
