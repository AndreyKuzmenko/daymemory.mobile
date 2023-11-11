// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editnote_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EditNoteViewModel extends EditNoteViewModel {
  @override
  final String? noteId;
  @override
  final String? text;
  @override
  final String notebookTitle;
  @override
  final String notebookId;
  @override
  final String? questionText;
  @override
  final String textPlaceholder;
  @override
  final String doneButtonText;
  @override
  final bool isSaving;
  @override
  final bool hasChanged;
  @override
  final LocationDto? location;
  @override
  final BuiltList<FileViewModel> mediaFiles;
  @override
  final List<TagDto> tags;
  @override
  final DateTime date;
  @override
  final bool showToolbarOnTop;
  @override
  final bool isVideoSupported;
  @override
  final FunctionHolder saveCommand;
  @override
  final TypedFunctionHolder<ItemPositionDto> reorderCommand;
  @override
  final FunctionHolder optionsCommand;
  @override
  final FunctionHolder closeCommand;
  @override
  final TypedFunctionHolder<String>? deleteImageCommand;
  @override
  final FunctionHolder? selectImagesCommand;
  @override
  final FunctionHolder? selectVideoCommand;
  @override
  final FunctionHolder selectNotebookCommand;
  @override
  final TypedFunctionHolder<String> textChangedCommand;
  @override
  final TypedFunctionHolder<DateTime> dateChangedCommand;

  factory _$EditNoteViewModel(
          [void Function(EditNoteViewModelBuilder)? updates]) =>
      (new EditNoteViewModelBuilder()..update(updates))._build();

  _$EditNoteViewModel._(
      {this.noteId,
      this.text,
      required this.notebookTitle,
      required this.notebookId,
      this.questionText,
      required this.textPlaceholder,
      required this.doneButtonText,
      required this.isSaving,
      required this.hasChanged,
      this.location,
      required this.mediaFiles,
      required this.tags,
      required this.date,
      required this.showToolbarOnTop,
      required this.isVideoSupported,
      required this.saveCommand,
      required this.reorderCommand,
      required this.optionsCommand,
      required this.closeCommand,
      this.deleteImageCommand,
      this.selectImagesCommand,
      this.selectVideoCommand,
      required this.selectNotebookCommand,
      required this.textChangedCommand,
      required this.dateChangedCommand})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        notebookTitle, r'EditNoteViewModel', 'notebookTitle');
    BuiltValueNullFieldError.checkNotNull(
        notebookId, r'EditNoteViewModel', 'notebookId');
    BuiltValueNullFieldError.checkNotNull(
        textPlaceholder, r'EditNoteViewModel', 'textPlaceholder');
    BuiltValueNullFieldError.checkNotNull(
        doneButtonText, r'EditNoteViewModel', 'doneButtonText');
    BuiltValueNullFieldError.checkNotNull(
        isSaving, r'EditNoteViewModel', 'isSaving');
    BuiltValueNullFieldError.checkNotNull(
        hasChanged, r'EditNoteViewModel', 'hasChanged');
    BuiltValueNullFieldError.checkNotNull(
        mediaFiles, r'EditNoteViewModel', 'mediaFiles');
    BuiltValueNullFieldError.checkNotNull(tags, r'EditNoteViewModel', 'tags');
    BuiltValueNullFieldError.checkNotNull(date, r'EditNoteViewModel', 'date');
    BuiltValueNullFieldError.checkNotNull(
        showToolbarOnTop, r'EditNoteViewModel', 'showToolbarOnTop');
    BuiltValueNullFieldError.checkNotNull(
        isVideoSupported, r'EditNoteViewModel', 'isVideoSupported');
    BuiltValueNullFieldError.checkNotNull(
        saveCommand, r'EditNoteViewModel', 'saveCommand');
    BuiltValueNullFieldError.checkNotNull(
        reorderCommand, r'EditNoteViewModel', 'reorderCommand');
    BuiltValueNullFieldError.checkNotNull(
        optionsCommand, r'EditNoteViewModel', 'optionsCommand');
    BuiltValueNullFieldError.checkNotNull(
        closeCommand, r'EditNoteViewModel', 'closeCommand');
    BuiltValueNullFieldError.checkNotNull(
        selectNotebookCommand, r'EditNoteViewModel', 'selectNotebookCommand');
    BuiltValueNullFieldError.checkNotNull(
        textChangedCommand, r'EditNoteViewModel', 'textChangedCommand');
    BuiltValueNullFieldError.checkNotNull(
        dateChangedCommand, r'EditNoteViewModel', 'dateChangedCommand');
  }

  @override
  EditNoteViewModel rebuild(void Function(EditNoteViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EditNoteViewModelBuilder toBuilder() =>
      new EditNoteViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EditNoteViewModel &&
        noteId == other.noteId &&
        text == other.text &&
        notebookTitle == other.notebookTitle &&
        notebookId == other.notebookId &&
        questionText == other.questionText &&
        textPlaceholder == other.textPlaceholder &&
        doneButtonText == other.doneButtonText &&
        isSaving == other.isSaving &&
        hasChanged == other.hasChanged &&
        location == other.location &&
        mediaFiles == other.mediaFiles &&
        tags == other.tags &&
        date == other.date &&
        showToolbarOnTop == other.showToolbarOnTop &&
        isVideoSupported == other.isVideoSupported &&
        saveCommand == other.saveCommand &&
        reorderCommand == other.reorderCommand &&
        optionsCommand == other.optionsCommand &&
        closeCommand == other.closeCommand &&
        deleteImageCommand == other.deleteImageCommand &&
        selectImagesCommand == other.selectImagesCommand &&
        selectVideoCommand == other.selectVideoCommand &&
        selectNotebookCommand == other.selectNotebookCommand &&
        textChangedCommand == other.textChangedCommand &&
        dateChangedCommand == other.dateChangedCommand;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, noteId.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, notebookTitle.hashCode);
    _$hash = $jc(_$hash, notebookId.hashCode);
    _$hash = $jc(_$hash, questionText.hashCode);
    _$hash = $jc(_$hash, textPlaceholder.hashCode);
    _$hash = $jc(_$hash, doneButtonText.hashCode);
    _$hash = $jc(_$hash, isSaving.hashCode);
    _$hash = $jc(_$hash, hasChanged.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, mediaFiles.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, showToolbarOnTop.hashCode);
    _$hash = $jc(_$hash, isVideoSupported.hashCode);
    _$hash = $jc(_$hash, saveCommand.hashCode);
    _$hash = $jc(_$hash, reorderCommand.hashCode);
    _$hash = $jc(_$hash, optionsCommand.hashCode);
    _$hash = $jc(_$hash, closeCommand.hashCode);
    _$hash = $jc(_$hash, deleteImageCommand.hashCode);
    _$hash = $jc(_$hash, selectImagesCommand.hashCode);
    _$hash = $jc(_$hash, selectVideoCommand.hashCode);
    _$hash = $jc(_$hash, selectNotebookCommand.hashCode);
    _$hash = $jc(_$hash, textChangedCommand.hashCode);
    _$hash = $jc(_$hash, dateChangedCommand.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EditNoteViewModel')
          ..add('noteId', noteId)
          ..add('text', text)
          ..add('notebookTitle', notebookTitle)
          ..add('notebookId', notebookId)
          ..add('questionText', questionText)
          ..add('textPlaceholder', textPlaceholder)
          ..add('doneButtonText', doneButtonText)
          ..add('isSaving', isSaving)
          ..add('hasChanged', hasChanged)
          ..add('location', location)
          ..add('mediaFiles', mediaFiles)
          ..add('tags', tags)
          ..add('date', date)
          ..add('showToolbarOnTop', showToolbarOnTop)
          ..add('isVideoSupported', isVideoSupported)
          ..add('saveCommand', saveCommand)
          ..add('reorderCommand', reorderCommand)
          ..add('optionsCommand', optionsCommand)
          ..add('closeCommand', closeCommand)
          ..add('deleteImageCommand', deleteImageCommand)
          ..add('selectImagesCommand', selectImagesCommand)
          ..add('selectVideoCommand', selectVideoCommand)
          ..add('selectNotebookCommand', selectNotebookCommand)
          ..add('textChangedCommand', textChangedCommand)
          ..add('dateChangedCommand', dateChangedCommand))
        .toString();
  }
}

class EditNoteViewModelBuilder
    implements Builder<EditNoteViewModel, EditNoteViewModelBuilder> {
  _$EditNoteViewModel? _$v;

  String? _noteId;
  String? get noteId => _$this._noteId;
  set noteId(String? noteId) => _$this._noteId = noteId;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  String? _notebookTitle;
  String? get notebookTitle => _$this._notebookTitle;
  set notebookTitle(String? notebookTitle) =>
      _$this._notebookTitle = notebookTitle;

  String? _notebookId;
  String? get notebookId => _$this._notebookId;
  set notebookId(String? notebookId) => _$this._notebookId = notebookId;

  String? _questionText;
  String? get questionText => _$this._questionText;
  set questionText(String? questionText) => _$this._questionText = questionText;

  String? _textPlaceholder;
  String? get textPlaceholder => _$this._textPlaceholder;
  set textPlaceholder(String? textPlaceholder) =>
      _$this._textPlaceholder = textPlaceholder;

  String? _doneButtonText;
  String? get doneButtonText => _$this._doneButtonText;
  set doneButtonText(String? doneButtonText) =>
      _$this._doneButtonText = doneButtonText;

  bool? _isSaving;
  bool? get isSaving => _$this._isSaving;
  set isSaving(bool? isSaving) => _$this._isSaving = isSaving;

  bool? _hasChanged;
  bool? get hasChanged => _$this._hasChanged;
  set hasChanged(bool? hasChanged) => _$this._hasChanged = hasChanged;

  LocationDto? _location;
  LocationDto? get location => _$this._location;
  set location(LocationDto? location) => _$this._location = location;

  ListBuilder<FileViewModel>? _mediaFiles;
  ListBuilder<FileViewModel> get mediaFiles =>
      _$this._mediaFiles ??= new ListBuilder<FileViewModel>();
  set mediaFiles(ListBuilder<FileViewModel>? mediaFiles) =>
      _$this._mediaFiles = mediaFiles;

  List<TagDto>? _tags;
  List<TagDto>? get tags => _$this._tags;
  set tags(List<TagDto>? tags) => _$this._tags = tags;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  bool? _showToolbarOnTop;
  bool? get showToolbarOnTop => _$this._showToolbarOnTop;
  set showToolbarOnTop(bool? showToolbarOnTop) =>
      _$this._showToolbarOnTop = showToolbarOnTop;

  bool? _isVideoSupported;
  bool? get isVideoSupported => _$this._isVideoSupported;
  set isVideoSupported(bool? isVideoSupported) =>
      _$this._isVideoSupported = isVideoSupported;

  FunctionHolder? _saveCommand;
  FunctionHolder? get saveCommand => _$this._saveCommand;
  set saveCommand(FunctionHolder? saveCommand) =>
      _$this._saveCommand = saveCommand;

  TypedFunctionHolder<ItemPositionDto>? _reorderCommand;
  TypedFunctionHolder<ItemPositionDto>? get reorderCommand =>
      _$this._reorderCommand;
  set reorderCommand(TypedFunctionHolder<ItemPositionDto>? reorderCommand) =>
      _$this._reorderCommand = reorderCommand;

  FunctionHolder? _optionsCommand;
  FunctionHolder? get optionsCommand => _$this._optionsCommand;
  set optionsCommand(FunctionHolder? optionsCommand) =>
      _$this._optionsCommand = optionsCommand;

  FunctionHolder? _closeCommand;
  FunctionHolder? get closeCommand => _$this._closeCommand;
  set closeCommand(FunctionHolder? closeCommand) =>
      _$this._closeCommand = closeCommand;

  TypedFunctionHolder<String>? _deleteImageCommand;
  TypedFunctionHolder<String>? get deleteImageCommand =>
      _$this._deleteImageCommand;
  set deleteImageCommand(TypedFunctionHolder<String>? deleteImageCommand) =>
      _$this._deleteImageCommand = deleteImageCommand;

  FunctionHolder? _selectImagesCommand;
  FunctionHolder? get selectImagesCommand => _$this._selectImagesCommand;
  set selectImagesCommand(FunctionHolder? selectImagesCommand) =>
      _$this._selectImagesCommand = selectImagesCommand;

  FunctionHolder? _selectVideoCommand;
  FunctionHolder? get selectVideoCommand => _$this._selectVideoCommand;
  set selectVideoCommand(FunctionHolder? selectVideoCommand) =>
      _$this._selectVideoCommand = selectVideoCommand;

  FunctionHolder? _selectNotebookCommand;
  FunctionHolder? get selectNotebookCommand => _$this._selectNotebookCommand;
  set selectNotebookCommand(FunctionHolder? selectNotebookCommand) =>
      _$this._selectNotebookCommand = selectNotebookCommand;

  TypedFunctionHolder<String>? _textChangedCommand;
  TypedFunctionHolder<String>? get textChangedCommand =>
      _$this._textChangedCommand;
  set textChangedCommand(TypedFunctionHolder<String>? textChangedCommand) =>
      _$this._textChangedCommand = textChangedCommand;

  TypedFunctionHolder<DateTime>? _dateChangedCommand;
  TypedFunctionHolder<DateTime>? get dateChangedCommand =>
      _$this._dateChangedCommand;
  set dateChangedCommand(TypedFunctionHolder<DateTime>? dateChangedCommand) =>
      _$this._dateChangedCommand = dateChangedCommand;

  EditNoteViewModelBuilder();

  EditNoteViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _noteId = $v.noteId;
      _text = $v.text;
      _notebookTitle = $v.notebookTitle;
      _notebookId = $v.notebookId;
      _questionText = $v.questionText;
      _textPlaceholder = $v.textPlaceholder;
      _doneButtonText = $v.doneButtonText;
      _isSaving = $v.isSaving;
      _hasChanged = $v.hasChanged;
      _location = $v.location;
      _mediaFiles = $v.mediaFiles.toBuilder();
      _tags = $v.tags;
      _date = $v.date;
      _showToolbarOnTop = $v.showToolbarOnTop;
      _isVideoSupported = $v.isVideoSupported;
      _saveCommand = $v.saveCommand;
      _reorderCommand = $v.reorderCommand;
      _optionsCommand = $v.optionsCommand;
      _closeCommand = $v.closeCommand;
      _deleteImageCommand = $v.deleteImageCommand;
      _selectImagesCommand = $v.selectImagesCommand;
      _selectVideoCommand = $v.selectVideoCommand;
      _selectNotebookCommand = $v.selectNotebookCommand;
      _textChangedCommand = $v.textChangedCommand;
      _dateChangedCommand = $v.dateChangedCommand;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EditNoteViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EditNoteViewModel;
  }

  @override
  void update(void Function(EditNoteViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EditNoteViewModel build() => _build();

  _$EditNoteViewModel _build() {
    _$EditNoteViewModel _$result;
    try {
      _$result = _$v ??
          new _$EditNoteViewModel._(
              noteId: noteId,
              text: text,
              notebookTitle: BuiltValueNullFieldError.checkNotNull(
                  notebookTitle, r'EditNoteViewModel', 'notebookTitle'),
              notebookId: BuiltValueNullFieldError.checkNotNull(
                  notebookId, r'EditNoteViewModel', 'notebookId'),
              questionText: questionText,
              textPlaceholder: BuiltValueNullFieldError.checkNotNull(
                  textPlaceholder, r'EditNoteViewModel', 'textPlaceholder'),
              doneButtonText: BuiltValueNullFieldError.checkNotNull(
                  doneButtonText, r'EditNoteViewModel', 'doneButtonText'),
              isSaving: BuiltValueNullFieldError.checkNotNull(
                  isSaving, r'EditNoteViewModel', 'isSaving'),
              hasChanged: BuiltValueNullFieldError.checkNotNull(
                  hasChanged, r'EditNoteViewModel', 'hasChanged'),
              location: location,
              mediaFiles: mediaFiles.build(),
              tags: BuiltValueNullFieldError.checkNotNull(
                  tags, r'EditNoteViewModel', 'tags'),
              date:
                  BuiltValueNullFieldError.checkNotNull(date, r'EditNoteViewModel', 'date'),
              showToolbarOnTop: BuiltValueNullFieldError.checkNotNull(showToolbarOnTop, r'EditNoteViewModel', 'showToolbarOnTop'),
              isVideoSupported: BuiltValueNullFieldError.checkNotNull(isVideoSupported, r'EditNoteViewModel', 'isVideoSupported'),
              saveCommand: BuiltValueNullFieldError.checkNotNull(saveCommand, r'EditNoteViewModel', 'saveCommand'),
              reorderCommand: BuiltValueNullFieldError.checkNotNull(reorderCommand, r'EditNoteViewModel', 'reorderCommand'),
              optionsCommand: BuiltValueNullFieldError.checkNotNull(optionsCommand, r'EditNoteViewModel', 'optionsCommand'),
              closeCommand: BuiltValueNullFieldError.checkNotNull(closeCommand, r'EditNoteViewModel', 'closeCommand'),
              deleteImageCommand: deleteImageCommand,
              selectImagesCommand: selectImagesCommand,
              selectVideoCommand: selectVideoCommand,
              selectNotebookCommand: BuiltValueNullFieldError.checkNotNull(selectNotebookCommand, r'EditNoteViewModel', 'selectNotebookCommand'),
              textChangedCommand: BuiltValueNullFieldError.checkNotNull(textChangedCommand, r'EditNoteViewModel', 'textChangedCommand'),
              dateChangedCommand: BuiltValueNullFieldError.checkNotNull(dateChangedCommand, r'EditNoteViewModel', 'dateChangedCommand'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mediaFiles';
        mediaFiles.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EditNoteViewModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
