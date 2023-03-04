// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_question_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnswerQuestionViewModel extends AnswerQuestionViewModel {
  @override
  final String title;
  @override
  final bool isSaving;
  @override
  final EditNoteViewModel editViewModel;
  @override
  final FunctionHolder nextCommand;
  @override
  final FunctionHolder closeCommand;

  factory _$AnswerQuestionViewModel(
          [void Function(AnswerQuestionViewModelBuilder)? updates]) =>
      (new AnswerQuestionViewModelBuilder()..update(updates))._build();

  _$AnswerQuestionViewModel._(
      {required this.title,
      required this.isSaving,
      required this.editViewModel,
      required this.nextCommand,
      required this.closeCommand})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        title, r'AnswerQuestionViewModel', 'title');
    BuiltValueNullFieldError.checkNotNull(
        isSaving, r'AnswerQuestionViewModel', 'isSaving');
    BuiltValueNullFieldError.checkNotNull(
        editViewModel, r'AnswerQuestionViewModel', 'editViewModel');
    BuiltValueNullFieldError.checkNotNull(
        nextCommand, r'AnswerQuestionViewModel', 'nextCommand');
    BuiltValueNullFieldError.checkNotNull(
        closeCommand, r'AnswerQuestionViewModel', 'closeCommand');
  }

  @override
  AnswerQuestionViewModel rebuild(
          void Function(AnswerQuestionViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnswerQuestionViewModelBuilder toBuilder() =>
      new AnswerQuestionViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnswerQuestionViewModel &&
        title == other.title &&
        isSaving == other.isSaving &&
        editViewModel == other.editViewModel &&
        nextCommand == other.nextCommand &&
        closeCommand == other.closeCommand;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, isSaving.hashCode);
    _$hash = $jc(_$hash, editViewModel.hashCode);
    _$hash = $jc(_$hash, nextCommand.hashCode);
    _$hash = $jc(_$hash, closeCommand.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnswerQuestionViewModel')
          ..add('title', title)
          ..add('isSaving', isSaving)
          ..add('editViewModel', editViewModel)
          ..add('nextCommand', nextCommand)
          ..add('closeCommand', closeCommand))
        .toString();
  }
}

class AnswerQuestionViewModelBuilder
    implements
        Builder<AnswerQuestionViewModel, AnswerQuestionViewModelBuilder> {
  _$AnswerQuestionViewModel? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  bool? _isSaving;
  bool? get isSaving => _$this._isSaving;
  set isSaving(bool? isSaving) => _$this._isSaving = isSaving;

  EditNoteViewModelBuilder? _editViewModel;
  EditNoteViewModelBuilder get editViewModel =>
      _$this._editViewModel ??= new EditNoteViewModelBuilder();
  set editViewModel(EditNoteViewModelBuilder? editViewModel) =>
      _$this._editViewModel = editViewModel;

  FunctionHolder? _nextCommand;
  FunctionHolder? get nextCommand => _$this._nextCommand;
  set nextCommand(FunctionHolder? nextCommand) =>
      _$this._nextCommand = nextCommand;

  FunctionHolder? _closeCommand;
  FunctionHolder? get closeCommand => _$this._closeCommand;
  set closeCommand(FunctionHolder? closeCommand) =>
      _$this._closeCommand = closeCommand;

  AnswerQuestionViewModelBuilder();

  AnswerQuestionViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _isSaving = $v.isSaving;
      _editViewModel = $v.editViewModel.toBuilder();
      _nextCommand = $v.nextCommand;
      _closeCommand = $v.closeCommand;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnswerQuestionViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnswerQuestionViewModel;
  }

  @override
  void update(void Function(AnswerQuestionViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnswerQuestionViewModel build() => _build();

  _$AnswerQuestionViewModel _build() {
    _$AnswerQuestionViewModel _$result;
    try {
      _$result = _$v ??
          new _$AnswerQuestionViewModel._(
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'AnswerQuestionViewModel', 'title'),
              isSaving: BuiltValueNullFieldError.checkNotNull(
                  isSaving, r'AnswerQuestionViewModel', 'isSaving'),
              editViewModel: editViewModel.build(),
              nextCommand: BuiltValueNullFieldError.checkNotNull(
                  nextCommand, r'AnswerQuestionViewModel', 'nextCommand'),
              closeCommand: BuiltValueNullFieldError.checkNotNull(
                  closeCommand, r'AnswerQuestionViewModel', 'closeCommand'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'editViewModel';
        editViewModel.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AnswerQuestionViewModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
