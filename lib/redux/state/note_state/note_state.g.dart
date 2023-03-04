// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NoteState extends NoteState {
  @override
  final String? noteId;
  @override
  final String? notebookId;
  @override
  final String? text;
  @override
  final LocationDto? location;
  @override
  final BuiltList<FileDto> mediaFiles;
  @override
  final bool isImageDateUsed;
  @override
  final bool isSaving;
  @override
  final DateTime date;

  factory _$NoteState([void Function(NoteStateBuilder)? updates]) =>
      (new NoteStateBuilder()..update(updates))._build();

  _$NoteState._(
      {this.noteId,
      this.notebookId,
      this.text,
      this.location,
      required this.mediaFiles,
      required this.isImageDateUsed,
      required this.isSaving,
      required this.date})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        mediaFiles, r'NoteState', 'mediaFiles');
    BuiltValueNullFieldError.checkNotNull(
        isImageDateUsed, r'NoteState', 'isImageDateUsed');
    BuiltValueNullFieldError.checkNotNull(isSaving, r'NoteState', 'isSaving');
    BuiltValueNullFieldError.checkNotNull(date, r'NoteState', 'date');
  }

  @override
  NoteState rebuild(void Function(NoteStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoteStateBuilder toBuilder() => new NoteStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoteState &&
        noteId == other.noteId &&
        notebookId == other.notebookId &&
        text == other.text &&
        location == other.location &&
        mediaFiles == other.mediaFiles &&
        isImageDateUsed == other.isImageDateUsed &&
        isSaving == other.isSaving &&
        date == other.date;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, noteId.hashCode);
    _$hash = $jc(_$hash, notebookId.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, mediaFiles.hashCode);
    _$hash = $jc(_$hash, isImageDateUsed.hashCode);
    _$hash = $jc(_$hash, isSaving.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NoteState')
          ..add('noteId', noteId)
          ..add('notebookId', notebookId)
          ..add('text', text)
          ..add('location', location)
          ..add('mediaFiles', mediaFiles)
          ..add('isImageDateUsed', isImageDateUsed)
          ..add('isSaving', isSaving)
          ..add('date', date))
        .toString();
  }
}

class NoteStateBuilder implements Builder<NoteState, NoteStateBuilder> {
  _$NoteState? _$v;

  String? _noteId;
  String? get noteId => _$this._noteId;
  set noteId(String? noteId) => _$this._noteId = noteId;

  String? _notebookId;
  String? get notebookId => _$this._notebookId;
  set notebookId(String? notebookId) => _$this._notebookId = notebookId;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  LocationDto? _location;
  LocationDto? get location => _$this._location;
  set location(LocationDto? location) => _$this._location = location;

  ListBuilder<FileDto>? _mediaFiles;
  ListBuilder<FileDto> get mediaFiles =>
      _$this._mediaFiles ??= new ListBuilder<FileDto>();
  set mediaFiles(ListBuilder<FileDto>? mediaFiles) =>
      _$this._mediaFiles = mediaFiles;

  bool? _isImageDateUsed;
  bool? get isImageDateUsed => _$this._isImageDateUsed;
  set isImageDateUsed(bool? isImageDateUsed) =>
      _$this._isImageDateUsed = isImageDateUsed;

  bool? _isSaving;
  bool? get isSaving => _$this._isSaving;
  set isSaving(bool? isSaving) => _$this._isSaving = isSaving;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  NoteStateBuilder();

  NoteStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _noteId = $v.noteId;
      _notebookId = $v.notebookId;
      _text = $v.text;
      _location = $v.location;
      _mediaFiles = $v.mediaFiles.toBuilder();
      _isImageDateUsed = $v.isImageDateUsed;
      _isSaving = $v.isSaving;
      _date = $v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NoteState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NoteState;
  }

  @override
  void update(void Function(NoteStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NoteState build() => _build();

  _$NoteState _build() {
    _$NoteState _$result;
    try {
      _$result = _$v ??
          new _$NoteState._(
              noteId: noteId,
              notebookId: notebookId,
              text: text,
              location: location,
              mediaFiles: mediaFiles.build(),
              isImageDateUsed: BuiltValueNullFieldError.checkNotNull(
                  isImageDateUsed, r'NoteState', 'isImageDateUsed'),
              isSaving: BuiltValueNullFieldError.checkNotNull(
                  isSaving, r'NoteState', 'isSaving'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'NoteState', 'date'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mediaFiles';
        mediaFiles.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NoteState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
