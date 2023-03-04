// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotesState extends NotesState {
  @override
  final bool isLoading;
  @override
  final bool hasLoadedAll;
  @override
  final bool isLoadingMore;
  @override
  final int? lastItemDateTime;
  @override
  final SortingType sortingType;
  @override
  final List<NoteDto> notes;
  @override
  final String? notebookId;
  @override
  final String? tag;

  factory _$NotesState([void Function(NotesStateBuilder)? updates]) =>
      (new NotesStateBuilder()..update(updates))._build();

  _$NotesState._(
      {required this.isLoading,
      required this.hasLoadedAll,
      required this.isLoadingMore,
      this.lastItemDateTime,
      required this.sortingType,
      required this.notes,
      this.notebookId,
      this.tag})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'NotesState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(
        hasLoadedAll, r'NotesState', 'hasLoadedAll');
    BuiltValueNullFieldError.checkNotNull(
        isLoadingMore, r'NotesState', 'isLoadingMore');
    BuiltValueNullFieldError.checkNotNull(
        sortingType, r'NotesState', 'sortingType');
    BuiltValueNullFieldError.checkNotNull(notes, r'NotesState', 'notes');
  }

  @override
  NotesState rebuild(void Function(NotesStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotesStateBuilder toBuilder() => new NotesStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotesState &&
        isLoading == other.isLoading &&
        hasLoadedAll == other.hasLoadedAll &&
        isLoadingMore == other.isLoadingMore &&
        lastItemDateTime == other.lastItemDateTime &&
        sortingType == other.sortingType &&
        notes == other.notes &&
        notebookId == other.notebookId &&
        tag == other.tag;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, hasLoadedAll.hashCode);
    _$hash = $jc(_$hash, isLoadingMore.hashCode);
    _$hash = $jc(_$hash, lastItemDateTime.hashCode);
    _$hash = $jc(_$hash, sortingType.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jc(_$hash, notebookId.hashCode);
    _$hash = $jc(_$hash, tag.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotesState')
          ..add('isLoading', isLoading)
          ..add('hasLoadedAll', hasLoadedAll)
          ..add('isLoadingMore', isLoadingMore)
          ..add('lastItemDateTime', lastItemDateTime)
          ..add('sortingType', sortingType)
          ..add('notes', notes)
          ..add('notebookId', notebookId)
          ..add('tag', tag))
        .toString();
  }
}

class NotesStateBuilder implements Builder<NotesState, NotesStateBuilder> {
  _$NotesState? _$v;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _hasLoadedAll;
  bool? get hasLoadedAll => _$this._hasLoadedAll;
  set hasLoadedAll(bool? hasLoadedAll) => _$this._hasLoadedAll = hasLoadedAll;

  bool? _isLoadingMore;
  bool? get isLoadingMore => _$this._isLoadingMore;
  set isLoadingMore(bool? isLoadingMore) =>
      _$this._isLoadingMore = isLoadingMore;

  int? _lastItemDateTime;
  int? get lastItemDateTime => _$this._lastItemDateTime;
  set lastItemDateTime(int? lastItemDateTime) =>
      _$this._lastItemDateTime = lastItemDateTime;

  SortingType? _sortingType;
  SortingType? get sortingType => _$this._sortingType;
  set sortingType(SortingType? sortingType) =>
      _$this._sortingType = sortingType;

  List<NoteDto>? _notes;
  List<NoteDto>? get notes => _$this._notes;
  set notes(List<NoteDto>? notes) => _$this._notes = notes;

  String? _notebookId;
  String? get notebookId => _$this._notebookId;
  set notebookId(String? notebookId) => _$this._notebookId = notebookId;

  String? _tag;
  String? get tag => _$this._tag;
  set tag(String? tag) => _$this._tag = tag;

  NotesStateBuilder();

  NotesStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isLoading = $v.isLoading;
      _hasLoadedAll = $v.hasLoadedAll;
      _isLoadingMore = $v.isLoadingMore;
      _lastItemDateTime = $v.lastItemDateTime;
      _sortingType = $v.sortingType;
      _notes = $v.notes;
      _notebookId = $v.notebookId;
      _tag = $v.tag;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotesState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotesState;
  }

  @override
  void update(void Function(NotesStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotesState build() => _build();

  _$NotesState _build() {
    final _$result = _$v ??
        new _$NotesState._(
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, r'NotesState', 'isLoading'),
            hasLoadedAll: BuiltValueNullFieldError.checkNotNull(
                hasLoadedAll, r'NotesState', 'hasLoadedAll'),
            isLoadingMore: BuiltValueNullFieldError.checkNotNull(
                isLoadingMore, r'NotesState', 'isLoadingMore'),
            lastItemDateTime: lastItemDateTime,
            sortingType: BuiltValueNullFieldError.checkNotNull(
                sortingType, r'NotesState', 'sortingType'),
            notes: BuiltValueNullFieldError.checkNotNull(
                notes, r'NotesState', 'notes'),
            notebookId: notebookId,
            tag: tag);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
