// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_notebook_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EditNotebookState extends EditNotebookState {
  @override
  final String? notebookId;
  @override
  final String title;
  @override
  final bool showInReview;
  @override
  final int orderRank;
  @override
  final SortingType sortingType;
  @override
  final bool isSaving;

  factory _$EditNotebookState(
          [void Function(EditNotebookStateBuilder)? updates]) =>
      (new EditNotebookStateBuilder()..update(updates))._build();

  _$EditNotebookState._(
      {this.notebookId,
      required this.title,
      required this.showInReview,
      required this.orderRank,
      required this.sortingType,
      required this.isSaving})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, r'EditNotebookState', 'title');
    BuiltValueNullFieldError.checkNotNull(
        showInReview, r'EditNotebookState', 'showInReview');
    BuiltValueNullFieldError.checkNotNull(
        orderRank, r'EditNotebookState', 'orderRank');
    BuiltValueNullFieldError.checkNotNull(
        sortingType, r'EditNotebookState', 'sortingType');
    BuiltValueNullFieldError.checkNotNull(
        isSaving, r'EditNotebookState', 'isSaving');
  }

  @override
  EditNotebookState rebuild(void Function(EditNotebookStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EditNotebookStateBuilder toBuilder() =>
      new EditNotebookStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EditNotebookState &&
        notebookId == other.notebookId &&
        title == other.title &&
        showInReview == other.showInReview &&
        orderRank == other.orderRank &&
        sortingType == other.sortingType &&
        isSaving == other.isSaving;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, notebookId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, showInReview.hashCode);
    _$hash = $jc(_$hash, orderRank.hashCode);
    _$hash = $jc(_$hash, sortingType.hashCode);
    _$hash = $jc(_$hash, isSaving.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EditNotebookState')
          ..add('notebookId', notebookId)
          ..add('title', title)
          ..add('showInReview', showInReview)
          ..add('orderRank', orderRank)
          ..add('sortingType', sortingType)
          ..add('isSaving', isSaving))
        .toString();
  }
}

class EditNotebookStateBuilder
    implements Builder<EditNotebookState, EditNotebookStateBuilder> {
  _$EditNotebookState? _$v;

  String? _notebookId;
  String? get notebookId => _$this._notebookId;
  set notebookId(String? notebookId) => _$this._notebookId = notebookId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  bool? _showInReview;
  bool? get showInReview => _$this._showInReview;
  set showInReview(bool? showInReview) => _$this._showInReview = showInReview;

  int? _orderRank;
  int? get orderRank => _$this._orderRank;
  set orderRank(int? orderRank) => _$this._orderRank = orderRank;

  SortingType? _sortingType;
  SortingType? get sortingType => _$this._sortingType;
  set sortingType(SortingType? sortingType) =>
      _$this._sortingType = sortingType;

  bool? _isSaving;
  bool? get isSaving => _$this._isSaving;
  set isSaving(bool? isSaving) => _$this._isSaving = isSaving;

  EditNotebookStateBuilder();

  EditNotebookStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _notebookId = $v.notebookId;
      _title = $v.title;
      _showInReview = $v.showInReview;
      _orderRank = $v.orderRank;
      _sortingType = $v.sortingType;
      _isSaving = $v.isSaving;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EditNotebookState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EditNotebookState;
  }

  @override
  void update(void Function(EditNotebookStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EditNotebookState build() => _build();

  _$EditNotebookState _build() {
    final _$result = _$v ??
        new _$EditNotebookState._(
            notebookId: notebookId,
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'EditNotebookState', 'title'),
            showInReview: BuiltValueNullFieldError.checkNotNull(
                showInReview, r'EditNotebookState', 'showInReview'),
            orderRank: BuiltValueNullFieldError.checkNotNull(
                orderRank, r'EditNotebookState', 'orderRank'),
            sortingType: BuiltValueNullFieldError.checkNotNull(
                sortingType, r'EditNotebookState', 'sortingType'),
            isSaving: BuiltValueNullFieldError.checkNotNull(
                isSaving, r'EditNotebookState', 'isSaving'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
