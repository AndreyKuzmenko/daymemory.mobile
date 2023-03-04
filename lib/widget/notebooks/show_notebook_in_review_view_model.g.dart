// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_notebook_in_review_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ShowNotebookInReviewViewModel extends ShowNotebookInReviewViewModel {
  @override
  final TypedFunctionHolder<bool> switchShowInReviewCommand;
  @override
  final String notebookId;
  @override
  final String notebookTitle;
  @override
  final bool isEnabled;

  factory _$ShowNotebookInReviewViewModel(
          [void Function(ShowNotebookInReviewViewModelBuilder)? updates]) =>
      (new ShowNotebookInReviewViewModelBuilder()..update(updates))._build();

  _$ShowNotebookInReviewViewModel._(
      {required this.switchShowInReviewCommand,
      required this.notebookId,
      required this.notebookTitle,
      required this.isEnabled})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(switchShowInReviewCommand,
        r'ShowNotebookInReviewViewModel', 'switchShowInReviewCommand');
    BuiltValueNullFieldError.checkNotNull(
        notebookId, r'ShowNotebookInReviewViewModel', 'notebookId');
    BuiltValueNullFieldError.checkNotNull(
        notebookTitle, r'ShowNotebookInReviewViewModel', 'notebookTitle');
    BuiltValueNullFieldError.checkNotNull(
        isEnabled, r'ShowNotebookInReviewViewModel', 'isEnabled');
  }

  @override
  ShowNotebookInReviewViewModel rebuild(
          void Function(ShowNotebookInReviewViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShowNotebookInReviewViewModelBuilder toBuilder() =>
      new ShowNotebookInReviewViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShowNotebookInReviewViewModel &&
        switchShowInReviewCommand == other.switchShowInReviewCommand &&
        notebookId == other.notebookId &&
        notebookTitle == other.notebookTitle &&
        isEnabled == other.isEnabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, switchShowInReviewCommand.hashCode);
    _$hash = $jc(_$hash, notebookId.hashCode);
    _$hash = $jc(_$hash, notebookTitle.hashCode);
    _$hash = $jc(_$hash, isEnabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ShowNotebookInReviewViewModel')
          ..add('switchShowInReviewCommand', switchShowInReviewCommand)
          ..add('notebookId', notebookId)
          ..add('notebookTitle', notebookTitle)
          ..add('isEnabled', isEnabled))
        .toString();
  }
}

class ShowNotebookInReviewViewModelBuilder
    implements
        Builder<ShowNotebookInReviewViewModel,
            ShowNotebookInReviewViewModelBuilder> {
  _$ShowNotebookInReviewViewModel? _$v;

  TypedFunctionHolder<bool>? _switchShowInReviewCommand;
  TypedFunctionHolder<bool>? get switchShowInReviewCommand =>
      _$this._switchShowInReviewCommand;
  set switchShowInReviewCommand(
          TypedFunctionHolder<bool>? switchShowInReviewCommand) =>
      _$this._switchShowInReviewCommand = switchShowInReviewCommand;

  String? _notebookId;
  String? get notebookId => _$this._notebookId;
  set notebookId(String? notebookId) => _$this._notebookId = notebookId;

  String? _notebookTitle;
  String? get notebookTitle => _$this._notebookTitle;
  set notebookTitle(String? notebookTitle) =>
      _$this._notebookTitle = notebookTitle;

  bool? _isEnabled;
  bool? get isEnabled => _$this._isEnabled;
  set isEnabled(bool? isEnabled) => _$this._isEnabled = isEnabled;

  ShowNotebookInReviewViewModelBuilder();

  ShowNotebookInReviewViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _switchShowInReviewCommand = $v.switchShowInReviewCommand;
      _notebookId = $v.notebookId;
      _notebookTitle = $v.notebookTitle;
      _isEnabled = $v.isEnabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShowNotebookInReviewViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ShowNotebookInReviewViewModel;
  }

  @override
  void update(void Function(ShowNotebookInReviewViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ShowNotebookInReviewViewModel build() => _build();

  _$ShowNotebookInReviewViewModel _build() {
    final _$result = _$v ??
        new _$ShowNotebookInReviewViewModel._(
            switchShowInReviewCommand: BuiltValueNullFieldError.checkNotNull(
                switchShowInReviewCommand,
                r'ShowNotebookInReviewViewModel',
                'switchShowInReviewCommand'),
            notebookId: BuiltValueNullFieldError.checkNotNull(
                notebookId, r'ShowNotebookInReviewViewModel', 'notebookId'),
            notebookTitle: BuiltValueNullFieldError.checkNotNull(notebookTitle,
                r'ShowNotebookInReviewViewModel', 'notebookTitle'),
            isEnabled: BuiltValueNullFieldError.checkNotNull(
                isEnabled, r'ShowNotebookInReviewViewModel', 'isEnabled'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
