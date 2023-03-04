// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_notebook_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SelectedNotebookState extends SelectedNotebookState {
  @override
  final String? notebookId;
  @override
  final String? notebookTitle;
  @override
  final int orderRank;
  @override
  final bool showInReview;
  @override
  final SortingType sortingType;

  factory _$SelectedNotebookState(
          [void Function(SelectedNotebookStateBuilder)? updates]) =>
      (new SelectedNotebookStateBuilder()..update(updates))._build();

  _$SelectedNotebookState._(
      {this.notebookId,
      this.notebookTitle,
      required this.orderRank,
      required this.showInReview,
      required this.sortingType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        orderRank, r'SelectedNotebookState', 'orderRank');
    BuiltValueNullFieldError.checkNotNull(
        showInReview, r'SelectedNotebookState', 'showInReview');
    BuiltValueNullFieldError.checkNotNull(
        sortingType, r'SelectedNotebookState', 'sortingType');
  }

  @override
  SelectedNotebookState rebuild(
          void Function(SelectedNotebookStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SelectedNotebookStateBuilder toBuilder() =>
      new SelectedNotebookStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SelectedNotebookState &&
        notebookId == other.notebookId &&
        notebookTitle == other.notebookTitle &&
        orderRank == other.orderRank &&
        showInReview == other.showInReview &&
        sortingType == other.sortingType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, notebookId.hashCode);
    _$hash = $jc(_$hash, notebookTitle.hashCode);
    _$hash = $jc(_$hash, orderRank.hashCode);
    _$hash = $jc(_$hash, showInReview.hashCode);
    _$hash = $jc(_$hash, sortingType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SelectedNotebookState')
          ..add('notebookId', notebookId)
          ..add('notebookTitle', notebookTitle)
          ..add('orderRank', orderRank)
          ..add('showInReview', showInReview)
          ..add('sortingType', sortingType))
        .toString();
  }
}

class SelectedNotebookStateBuilder
    implements Builder<SelectedNotebookState, SelectedNotebookStateBuilder> {
  _$SelectedNotebookState? _$v;

  String? _notebookId;
  String? get notebookId => _$this._notebookId;
  set notebookId(String? notebookId) => _$this._notebookId = notebookId;

  String? _notebookTitle;
  String? get notebookTitle => _$this._notebookTitle;
  set notebookTitle(String? notebookTitle) =>
      _$this._notebookTitle = notebookTitle;

  int? _orderRank;
  int? get orderRank => _$this._orderRank;
  set orderRank(int? orderRank) => _$this._orderRank = orderRank;

  bool? _showInReview;
  bool? get showInReview => _$this._showInReview;
  set showInReview(bool? showInReview) => _$this._showInReview = showInReview;

  SortingType? _sortingType;
  SortingType? get sortingType => _$this._sortingType;
  set sortingType(SortingType? sortingType) =>
      _$this._sortingType = sortingType;

  SelectedNotebookStateBuilder();

  SelectedNotebookStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _notebookId = $v.notebookId;
      _notebookTitle = $v.notebookTitle;
      _orderRank = $v.orderRank;
      _showInReview = $v.showInReview;
      _sortingType = $v.sortingType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelectedNotebookState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SelectedNotebookState;
  }

  @override
  void update(void Function(SelectedNotebookStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SelectedNotebookState build() => _build();

  _$SelectedNotebookState _build() {
    final _$result = _$v ??
        new _$SelectedNotebookState._(
            notebookId: notebookId,
            notebookTitle: notebookTitle,
            orderRank: BuiltValueNullFieldError.checkNotNull(
                orderRank, r'SelectedNotebookState', 'orderRank'),
            showInReview: BuiltValueNullFieldError.checkNotNull(
                showInReview, r'SelectedNotebookState', 'showInReview'),
            sortingType: BuiltValueNullFieldError.checkNotNull(
                sortingType, r'SelectedNotebookState', 'sortingType'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
