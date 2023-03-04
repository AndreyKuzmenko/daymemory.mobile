// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_options_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NoteOptionsViewModel extends NoteOptionsViewModel {
  @override
  final String? notebookTitle;
  @override
  final String? notebookId;
  @override
  final String notebookLabel;
  @override
  final String dateLabel;
  @override
  final String locationLabel;
  @override
  final String nolocationText;
  @override
  final String title;
  @override
  final LocationDto? location;
  @override
  final BuiltList<NotebookDto> notebooks;
  @override
  final List<TagDto> tags;
  @override
  final DateTime date;
  @override
  final String formatedDate;
  @override
  final FunctionHolder closeCommand;
  @override
  final TypedFunctionHolder<DateTime> dateChangedCommand;
  @override
  final FunctionHolder notebookSelectorCommand;

  factory _$NoteOptionsViewModel(
          [void Function(NoteOptionsViewModelBuilder)? updates]) =>
      (new NoteOptionsViewModelBuilder()..update(updates))._build();

  _$NoteOptionsViewModel._(
      {this.notebookTitle,
      this.notebookId,
      required this.notebookLabel,
      required this.dateLabel,
      required this.locationLabel,
      required this.nolocationText,
      required this.title,
      this.location,
      required this.notebooks,
      required this.tags,
      required this.date,
      required this.formatedDate,
      required this.closeCommand,
      required this.dateChangedCommand,
      required this.notebookSelectorCommand})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        notebookLabel, r'NoteOptionsViewModel', 'notebookLabel');
    BuiltValueNullFieldError.checkNotNull(
        dateLabel, r'NoteOptionsViewModel', 'dateLabel');
    BuiltValueNullFieldError.checkNotNull(
        locationLabel, r'NoteOptionsViewModel', 'locationLabel');
    BuiltValueNullFieldError.checkNotNull(
        nolocationText, r'NoteOptionsViewModel', 'nolocationText');
    BuiltValueNullFieldError.checkNotNull(
        title, r'NoteOptionsViewModel', 'title');
    BuiltValueNullFieldError.checkNotNull(
        notebooks, r'NoteOptionsViewModel', 'notebooks');
    BuiltValueNullFieldError.checkNotNull(
        tags, r'NoteOptionsViewModel', 'tags');
    BuiltValueNullFieldError.checkNotNull(
        date, r'NoteOptionsViewModel', 'date');
    BuiltValueNullFieldError.checkNotNull(
        formatedDate, r'NoteOptionsViewModel', 'formatedDate');
    BuiltValueNullFieldError.checkNotNull(
        closeCommand, r'NoteOptionsViewModel', 'closeCommand');
    BuiltValueNullFieldError.checkNotNull(
        dateChangedCommand, r'NoteOptionsViewModel', 'dateChangedCommand');
    BuiltValueNullFieldError.checkNotNull(notebookSelectorCommand,
        r'NoteOptionsViewModel', 'notebookSelectorCommand');
  }

  @override
  NoteOptionsViewModel rebuild(
          void Function(NoteOptionsViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoteOptionsViewModelBuilder toBuilder() =>
      new NoteOptionsViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoteOptionsViewModel &&
        notebookTitle == other.notebookTitle &&
        notebookId == other.notebookId &&
        notebookLabel == other.notebookLabel &&
        dateLabel == other.dateLabel &&
        locationLabel == other.locationLabel &&
        nolocationText == other.nolocationText &&
        title == other.title &&
        location == other.location &&
        notebooks == other.notebooks &&
        tags == other.tags &&
        date == other.date &&
        formatedDate == other.formatedDate &&
        closeCommand == other.closeCommand &&
        dateChangedCommand == other.dateChangedCommand &&
        notebookSelectorCommand == other.notebookSelectorCommand;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, notebookTitle.hashCode);
    _$hash = $jc(_$hash, notebookId.hashCode);
    _$hash = $jc(_$hash, notebookLabel.hashCode);
    _$hash = $jc(_$hash, dateLabel.hashCode);
    _$hash = $jc(_$hash, locationLabel.hashCode);
    _$hash = $jc(_$hash, nolocationText.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, notebooks.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, formatedDate.hashCode);
    _$hash = $jc(_$hash, closeCommand.hashCode);
    _$hash = $jc(_$hash, dateChangedCommand.hashCode);
    _$hash = $jc(_$hash, notebookSelectorCommand.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NoteOptionsViewModel')
          ..add('notebookTitle', notebookTitle)
          ..add('notebookId', notebookId)
          ..add('notebookLabel', notebookLabel)
          ..add('dateLabel', dateLabel)
          ..add('locationLabel', locationLabel)
          ..add('nolocationText', nolocationText)
          ..add('title', title)
          ..add('location', location)
          ..add('notebooks', notebooks)
          ..add('tags', tags)
          ..add('date', date)
          ..add('formatedDate', formatedDate)
          ..add('closeCommand', closeCommand)
          ..add('dateChangedCommand', dateChangedCommand)
          ..add('notebookSelectorCommand', notebookSelectorCommand))
        .toString();
  }
}

class NoteOptionsViewModelBuilder
    implements Builder<NoteOptionsViewModel, NoteOptionsViewModelBuilder> {
  _$NoteOptionsViewModel? _$v;

  String? _notebookTitle;
  String? get notebookTitle => _$this._notebookTitle;
  set notebookTitle(String? notebookTitle) =>
      _$this._notebookTitle = notebookTitle;

  String? _notebookId;
  String? get notebookId => _$this._notebookId;
  set notebookId(String? notebookId) => _$this._notebookId = notebookId;

  String? _notebookLabel;
  String? get notebookLabel => _$this._notebookLabel;
  set notebookLabel(String? notebookLabel) =>
      _$this._notebookLabel = notebookLabel;

  String? _dateLabel;
  String? get dateLabel => _$this._dateLabel;
  set dateLabel(String? dateLabel) => _$this._dateLabel = dateLabel;

  String? _locationLabel;
  String? get locationLabel => _$this._locationLabel;
  set locationLabel(String? locationLabel) =>
      _$this._locationLabel = locationLabel;

  String? _nolocationText;
  String? get nolocationText => _$this._nolocationText;
  set nolocationText(String? nolocationText) =>
      _$this._nolocationText = nolocationText;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  LocationDto? _location;
  LocationDto? get location => _$this._location;
  set location(LocationDto? location) => _$this._location = location;

  ListBuilder<NotebookDto>? _notebooks;
  ListBuilder<NotebookDto> get notebooks =>
      _$this._notebooks ??= new ListBuilder<NotebookDto>();
  set notebooks(ListBuilder<NotebookDto>? notebooks) =>
      _$this._notebooks = notebooks;

  List<TagDto>? _tags;
  List<TagDto>? get tags => _$this._tags;
  set tags(List<TagDto>? tags) => _$this._tags = tags;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  String? _formatedDate;
  String? get formatedDate => _$this._formatedDate;
  set formatedDate(String? formatedDate) => _$this._formatedDate = formatedDate;

  FunctionHolder? _closeCommand;
  FunctionHolder? get closeCommand => _$this._closeCommand;
  set closeCommand(FunctionHolder? closeCommand) =>
      _$this._closeCommand = closeCommand;

  TypedFunctionHolder<DateTime>? _dateChangedCommand;
  TypedFunctionHolder<DateTime>? get dateChangedCommand =>
      _$this._dateChangedCommand;
  set dateChangedCommand(TypedFunctionHolder<DateTime>? dateChangedCommand) =>
      _$this._dateChangedCommand = dateChangedCommand;

  FunctionHolder? _notebookSelectorCommand;
  FunctionHolder? get notebookSelectorCommand =>
      _$this._notebookSelectorCommand;
  set notebookSelectorCommand(FunctionHolder? notebookSelectorCommand) =>
      _$this._notebookSelectorCommand = notebookSelectorCommand;

  NoteOptionsViewModelBuilder();

  NoteOptionsViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _notebookTitle = $v.notebookTitle;
      _notebookId = $v.notebookId;
      _notebookLabel = $v.notebookLabel;
      _dateLabel = $v.dateLabel;
      _locationLabel = $v.locationLabel;
      _nolocationText = $v.nolocationText;
      _title = $v.title;
      _location = $v.location;
      _notebooks = $v.notebooks.toBuilder();
      _tags = $v.tags;
      _date = $v.date;
      _formatedDate = $v.formatedDate;
      _closeCommand = $v.closeCommand;
      _dateChangedCommand = $v.dateChangedCommand;
      _notebookSelectorCommand = $v.notebookSelectorCommand;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NoteOptionsViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NoteOptionsViewModel;
  }

  @override
  void update(void Function(NoteOptionsViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NoteOptionsViewModel build() => _build();

  _$NoteOptionsViewModel _build() {
    _$NoteOptionsViewModel _$result;
    try {
      _$result = _$v ??
          new _$NoteOptionsViewModel._(
              notebookTitle: notebookTitle,
              notebookId: notebookId,
              notebookLabel: BuiltValueNullFieldError.checkNotNull(
                  notebookLabel, r'NoteOptionsViewModel', 'notebookLabel'),
              dateLabel: BuiltValueNullFieldError.checkNotNull(
                  dateLabel, r'NoteOptionsViewModel', 'dateLabel'),
              locationLabel: BuiltValueNullFieldError.checkNotNull(
                  locationLabel, r'NoteOptionsViewModel', 'locationLabel'),
              nolocationText: BuiltValueNullFieldError.checkNotNull(
                  nolocationText, r'NoteOptionsViewModel', 'nolocationText'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'NoteOptionsViewModel', 'title'),
              location: location,
              notebooks: notebooks.build(),
              tags: BuiltValueNullFieldError.checkNotNull(
                  tags, r'NoteOptionsViewModel', 'tags'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'NoteOptionsViewModel', 'date'),
              formatedDate:
                  BuiltValueNullFieldError.checkNotNull(formatedDate, r'NoteOptionsViewModel', 'formatedDate'),
              closeCommand: BuiltValueNullFieldError.checkNotNull(closeCommand, r'NoteOptionsViewModel', 'closeCommand'),
              dateChangedCommand: BuiltValueNullFieldError.checkNotNull(dateChangedCommand, r'NoteOptionsViewModel', 'dateChangedCommand'),
              notebookSelectorCommand: BuiltValueNullFieldError.checkNotNull(notebookSelectorCommand, r'NoteOptionsViewModel', 'notebookSelectorCommand'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'notebooks';
        notebooks.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NoteOptionsViewModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
