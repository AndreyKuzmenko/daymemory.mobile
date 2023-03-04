// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_notebooks_in_review_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ShowNotebooksInReviewViewModel extends ShowNotebooksInReviewViewModel {
  @override
  final String title;
  @override
  final List<ShowNotebookInReviewViewModel> notebooks;
  @override
  final String noNotebooks;
  @override
  final FunctionHolder? backCommand;

  factory _$ShowNotebooksInReviewViewModel(
          [void Function(ShowNotebooksInReviewViewModelBuilder)? updates]) =>
      (new ShowNotebooksInReviewViewModelBuilder()..update(updates))._build();

  _$ShowNotebooksInReviewViewModel._(
      {required this.title,
      required this.notebooks,
      required this.noNotebooks,
      this.backCommand})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        title, r'ShowNotebooksInReviewViewModel', 'title');
    BuiltValueNullFieldError.checkNotNull(
        notebooks, r'ShowNotebooksInReviewViewModel', 'notebooks');
    BuiltValueNullFieldError.checkNotNull(
        noNotebooks, r'ShowNotebooksInReviewViewModel', 'noNotebooks');
  }

  @override
  ShowNotebooksInReviewViewModel rebuild(
          void Function(ShowNotebooksInReviewViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShowNotebooksInReviewViewModelBuilder toBuilder() =>
      new ShowNotebooksInReviewViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShowNotebooksInReviewViewModel &&
        title == other.title &&
        notebooks == other.notebooks &&
        noNotebooks == other.noNotebooks &&
        backCommand == other.backCommand;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, notebooks.hashCode);
    _$hash = $jc(_$hash, noNotebooks.hashCode);
    _$hash = $jc(_$hash, backCommand.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ShowNotebooksInReviewViewModel')
          ..add('title', title)
          ..add('notebooks', notebooks)
          ..add('noNotebooks', noNotebooks)
          ..add('backCommand', backCommand))
        .toString();
  }
}

class ShowNotebooksInReviewViewModelBuilder
    implements
        Builder<ShowNotebooksInReviewViewModel,
            ShowNotebooksInReviewViewModelBuilder> {
  _$ShowNotebooksInReviewViewModel? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  List<ShowNotebookInReviewViewModel>? _notebooks;
  List<ShowNotebookInReviewViewModel>? get notebooks => _$this._notebooks;
  set notebooks(List<ShowNotebookInReviewViewModel>? notebooks) =>
      _$this._notebooks = notebooks;

  String? _noNotebooks;
  String? get noNotebooks => _$this._noNotebooks;
  set noNotebooks(String? noNotebooks) => _$this._noNotebooks = noNotebooks;

  FunctionHolder? _backCommand;
  FunctionHolder? get backCommand => _$this._backCommand;
  set backCommand(FunctionHolder? backCommand) =>
      _$this._backCommand = backCommand;

  ShowNotebooksInReviewViewModelBuilder();

  ShowNotebooksInReviewViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _notebooks = $v.notebooks;
      _noNotebooks = $v.noNotebooks;
      _backCommand = $v.backCommand;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShowNotebooksInReviewViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ShowNotebooksInReviewViewModel;
  }

  @override
  void update(void Function(ShowNotebooksInReviewViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ShowNotebooksInReviewViewModel build() => _build();

  _$ShowNotebooksInReviewViewModel _build() {
    final _$result = _$v ??
        new _$ShowNotebooksInReviewViewModel._(
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'ShowNotebooksInReviewViewModel', 'title'),
            notebooks: BuiltValueNullFieldError.checkNotNull(
                notebooks, r'ShowNotebooksInReviewViewModel', 'notebooks'),
            noNotebooks: BuiltValueNullFieldError.checkNotNull(
                noNotebooks, r'ShowNotebooksInReviewViewModel', 'noNotebooks'),
            backCommand: backCommand);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
