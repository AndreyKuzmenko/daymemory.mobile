// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NoteViewModel extends NoteViewModel {
  @override
  final String noteId;
  @override
  final String text;
  @override
  final String displayDate;
  @override
  final List<String> tags;
  @override
  final String? notebookName;
  @override
  final LocationDto? location;
  @override
  final List<FileViewModel> mediaFiles;
  @override
  final bool isFullscreen;
  @override
  final String menuEdit;
  @override
  final String menuDelete;
  @override
  final String menuCancel;
  @override
  final bool showContextMenu;
  @override
  final String showMoreText;
  @override
  final FunctionHolder openNoteCommand;
  @override
  final TypedFunctionHolder<int> openGalleryCommand;
  @override
  final TypedFunctionHolder<String> openTagCommand;
  @override
  final FunctionHolder deleteNoteCommand;

  factory _$NoteViewModel([void Function(NoteViewModelBuilder)? updates]) =>
      (new NoteViewModelBuilder()..update(updates))._build();

  _$NoteViewModel._(
      {required this.noteId,
      required this.text,
      required this.displayDate,
      required this.tags,
      this.notebookName,
      this.location,
      required this.mediaFiles,
      required this.isFullscreen,
      required this.menuEdit,
      required this.menuDelete,
      required this.menuCancel,
      required this.showContextMenu,
      required this.showMoreText,
      required this.openNoteCommand,
      required this.openGalleryCommand,
      required this.openTagCommand,
      required this.deleteNoteCommand})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(noteId, r'NoteViewModel', 'noteId');
    BuiltValueNullFieldError.checkNotNull(text, r'NoteViewModel', 'text');
    BuiltValueNullFieldError.checkNotNull(
        displayDate, r'NoteViewModel', 'displayDate');
    BuiltValueNullFieldError.checkNotNull(tags, r'NoteViewModel', 'tags');
    BuiltValueNullFieldError.checkNotNull(
        mediaFiles, r'NoteViewModel', 'mediaFiles');
    BuiltValueNullFieldError.checkNotNull(
        isFullscreen, r'NoteViewModel', 'isFullscreen');
    BuiltValueNullFieldError.checkNotNull(
        menuEdit, r'NoteViewModel', 'menuEdit');
    BuiltValueNullFieldError.checkNotNull(
        menuDelete, r'NoteViewModel', 'menuDelete');
    BuiltValueNullFieldError.checkNotNull(
        menuCancel, r'NoteViewModel', 'menuCancel');
    BuiltValueNullFieldError.checkNotNull(
        showContextMenu, r'NoteViewModel', 'showContextMenu');
    BuiltValueNullFieldError.checkNotNull(
        showMoreText, r'NoteViewModel', 'showMoreText');
    BuiltValueNullFieldError.checkNotNull(
        openNoteCommand, r'NoteViewModel', 'openNoteCommand');
    BuiltValueNullFieldError.checkNotNull(
        openGalleryCommand, r'NoteViewModel', 'openGalleryCommand');
    BuiltValueNullFieldError.checkNotNull(
        openTagCommand, r'NoteViewModel', 'openTagCommand');
    BuiltValueNullFieldError.checkNotNull(
        deleteNoteCommand, r'NoteViewModel', 'deleteNoteCommand');
  }

  @override
  NoteViewModel rebuild(void Function(NoteViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoteViewModelBuilder toBuilder() => new NoteViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoteViewModel &&
        noteId == other.noteId &&
        text == other.text &&
        displayDate == other.displayDate &&
        tags == other.tags &&
        notebookName == other.notebookName &&
        location == other.location &&
        mediaFiles == other.mediaFiles &&
        isFullscreen == other.isFullscreen &&
        menuEdit == other.menuEdit &&
        menuDelete == other.menuDelete &&
        menuCancel == other.menuCancel &&
        showContextMenu == other.showContextMenu &&
        showMoreText == other.showMoreText &&
        openNoteCommand == other.openNoteCommand &&
        openGalleryCommand == other.openGalleryCommand &&
        openTagCommand == other.openTagCommand &&
        deleteNoteCommand == other.deleteNoteCommand;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, noteId.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, displayDate.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, notebookName.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, mediaFiles.hashCode);
    _$hash = $jc(_$hash, isFullscreen.hashCode);
    _$hash = $jc(_$hash, menuEdit.hashCode);
    _$hash = $jc(_$hash, menuDelete.hashCode);
    _$hash = $jc(_$hash, menuCancel.hashCode);
    _$hash = $jc(_$hash, showContextMenu.hashCode);
    _$hash = $jc(_$hash, showMoreText.hashCode);
    _$hash = $jc(_$hash, openNoteCommand.hashCode);
    _$hash = $jc(_$hash, openGalleryCommand.hashCode);
    _$hash = $jc(_$hash, openTagCommand.hashCode);
    _$hash = $jc(_$hash, deleteNoteCommand.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NoteViewModel')
          ..add('noteId', noteId)
          ..add('text', text)
          ..add('displayDate', displayDate)
          ..add('tags', tags)
          ..add('notebookName', notebookName)
          ..add('location', location)
          ..add('mediaFiles', mediaFiles)
          ..add('isFullscreen', isFullscreen)
          ..add('menuEdit', menuEdit)
          ..add('menuDelete', menuDelete)
          ..add('menuCancel', menuCancel)
          ..add('showContextMenu', showContextMenu)
          ..add('showMoreText', showMoreText)
          ..add('openNoteCommand', openNoteCommand)
          ..add('openGalleryCommand', openGalleryCommand)
          ..add('openTagCommand', openTagCommand)
          ..add('deleteNoteCommand', deleteNoteCommand))
        .toString();
  }
}

class NoteViewModelBuilder
    implements Builder<NoteViewModel, NoteViewModelBuilder> {
  _$NoteViewModel? _$v;

  String? _noteId;
  String? get noteId => _$this._noteId;
  set noteId(String? noteId) => _$this._noteId = noteId;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  String? _displayDate;
  String? get displayDate => _$this._displayDate;
  set displayDate(String? displayDate) => _$this._displayDate = displayDate;

  List<String>? _tags;
  List<String>? get tags => _$this._tags;
  set tags(List<String>? tags) => _$this._tags = tags;

  String? _notebookName;
  String? get notebookName => _$this._notebookName;
  set notebookName(String? notebookName) => _$this._notebookName = notebookName;

  LocationDto? _location;
  LocationDto? get location => _$this._location;
  set location(LocationDto? location) => _$this._location = location;

  List<FileViewModel>? _mediaFiles;
  List<FileViewModel>? get mediaFiles => _$this._mediaFiles;
  set mediaFiles(List<FileViewModel>? mediaFiles) =>
      _$this._mediaFiles = mediaFiles;

  bool? _isFullscreen;
  bool? get isFullscreen => _$this._isFullscreen;
  set isFullscreen(bool? isFullscreen) => _$this._isFullscreen = isFullscreen;

  String? _menuEdit;
  String? get menuEdit => _$this._menuEdit;
  set menuEdit(String? menuEdit) => _$this._menuEdit = menuEdit;

  String? _menuDelete;
  String? get menuDelete => _$this._menuDelete;
  set menuDelete(String? menuDelete) => _$this._menuDelete = menuDelete;

  String? _menuCancel;
  String? get menuCancel => _$this._menuCancel;
  set menuCancel(String? menuCancel) => _$this._menuCancel = menuCancel;

  bool? _showContextMenu;
  bool? get showContextMenu => _$this._showContextMenu;
  set showContextMenu(bool? showContextMenu) =>
      _$this._showContextMenu = showContextMenu;

  String? _showMoreText;
  String? get showMoreText => _$this._showMoreText;
  set showMoreText(String? showMoreText) => _$this._showMoreText = showMoreText;

  FunctionHolder? _openNoteCommand;
  FunctionHolder? get openNoteCommand => _$this._openNoteCommand;
  set openNoteCommand(FunctionHolder? openNoteCommand) =>
      _$this._openNoteCommand = openNoteCommand;

  TypedFunctionHolder<int>? _openGalleryCommand;
  TypedFunctionHolder<int>? get openGalleryCommand =>
      _$this._openGalleryCommand;
  set openGalleryCommand(TypedFunctionHolder<int>? openGalleryCommand) =>
      _$this._openGalleryCommand = openGalleryCommand;

  TypedFunctionHolder<String>? _openTagCommand;
  TypedFunctionHolder<String>? get openTagCommand => _$this._openTagCommand;
  set openTagCommand(TypedFunctionHolder<String>? openTagCommand) =>
      _$this._openTagCommand = openTagCommand;

  FunctionHolder? _deleteNoteCommand;
  FunctionHolder? get deleteNoteCommand => _$this._deleteNoteCommand;
  set deleteNoteCommand(FunctionHolder? deleteNoteCommand) =>
      _$this._deleteNoteCommand = deleteNoteCommand;

  NoteViewModelBuilder();

  NoteViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _noteId = $v.noteId;
      _text = $v.text;
      _displayDate = $v.displayDate;
      _tags = $v.tags;
      _notebookName = $v.notebookName;
      _location = $v.location;
      _mediaFiles = $v.mediaFiles;
      _isFullscreen = $v.isFullscreen;
      _menuEdit = $v.menuEdit;
      _menuDelete = $v.menuDelete;
      _menuCancel = $v.menuCancel;
      _showContextMenu = $v.showContextMenu;
      _showMoreText = $v.showMoreText;
      _openNoteCommand = $v.openNoteCommand;
      _openGalleryCommand = $v.openGalleryCommand;
      _openTagCommand = $v.openTagCommand;
      _deleteNoteCommand = $v.deleteNoteCommand;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NoteViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NoteViewModel;
  }

  @override
  void update(void Function(NoteViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NoteViewModel build() => _build();

  _$NoteViewModel _build() {
    final _$result = _$v ??
        new _$NoteViewModel._(
            noteId: BuiltValueNullFieldError.checkNotNull(
                noteId, r'NoteViewModel', 'noteId'),
            text: BuiltValueNullFieldError.checkNotNull(
                text, r'NoteViewModel', 'text'),
            displayDate: BuiltValueNullFieldError.checkNotNull(
                displayDate, r'NoteViewModel', 'displayDate'),
            tags: BuiltValueNullFieldError.checkNotNull(
                tags, r'NoteViewModel', 'tags'),
            notebookName: notebookName,
            location: location,
            mediaFiles: BuiltValueNullFieldError.checkNotNull(
                mediaFiles, r'NoteViewModel', 'mediaFiles'),
            isFullscreen: BuiltValueNullFieldError.checkNotNull(
                isFullscreen, r'NoteViewModel', 'isFullscreen'),
            menuEdit: BuiltValueNullFieldError.checkNotNull(
                menuEdit, r'NoteViewModel', 'menuEdit'),
            menuDelete: BuiltValueNullFieldError.checkNotNull(
                menuDelete, r'NoteViewModel', 'menuDelete'),
            menuCancel: BuiltValueNullFieldError.checkNotNull(
                menuCancel, r'NoteViewModel', 'menuCancel'),
            showContextMenu: BuiltValueNullFieldError.checkNotNull(showContextMenu, r'NoteViewModel', 'showContextMenu'),
            showMoreText: BuiltValueNullFieldError.checkNotNull(showMoreText, r'NoteViewModel', 'showMoreText'),
            openNoteCommand: BuiltValueNullFieldError.checkNotNull(openNoteCommand, r'NoteViewModel', 'openNoteCommand'),
            openGalleryCommand: BuiltValueNullFieldError.checkNotNull(openGalleryCommand, r'NoteViewModel', 'openGalleryCommand'),
            openTagCommand: BuiltValueNullFieldError.checkNotNull(openTagCommand, r'NoteViewModel', 'openTagCommand'),
            deleteNoteCommand: BuiltValueNullFieldError.checkNotNull(deleteNoteCommand, r'NoteViewModel', 'deleteNoteCommand'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
