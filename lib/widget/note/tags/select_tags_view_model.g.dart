// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_tags_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SelectTagsViewModel extends SelectTagsViewModel {
  @override
  final List<String> selectedTags;
  @override
  final String newTagMenuOption;
  @override
  final BuiltList<TagDto> tags;
  @override
  final String title;
  @override
  final FunctionHolder closeCommand;
  @override
  final FunctionHolder newTagCommand;
  @override
  final TypedFunctionHolder<String> toogleTagCommand;

  factory _$SelectTagsViewModel(
          [void Function(SelectTagsViewModelBuilder)? updates]) =>
      (new SelectTagsViewModelBuilder()..update(updates))._build();

  _$SelectTagsViewModel._(
      {required this.selectedTags,
      required this.newTagMenuOption,
      required this.tags,
      required this.title,
      required this.closeCommand,
      required this.newTagCommand,
      required this.toogleTagCommand})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        selectedTags, r'SelectTagsViewModel', 'selectedTags');
    BuiltValueNullFieldError.checkNotNull(
        newTagMenuOption, r'SelectTagsViewModel', 'newTagMenuOption');
    BuiltValueNullFieldError.checkNotNull(tags, r'SelectTagsViewModel', 'tags');
    BuiltValueNullFieldError.checkNotNull(
        title, r'SelectTagsViewModel', 'title');
    BuiltValueNullFieldError.checkNotNull(
        closeCommand, r'SelectTagsViewModel', 'closeCommand');
    BuiltValueNullFieldError.checkNotNull(
        newTagCommand, r'SelectTagsViewModel', 'newTagCommand');
    BuiltValueNullFieldError.checkNotNull(
        toogleTagCommand, r'SelectTagsViewModel', 'toogleTagCommand');
  }

  @override
  SelectTagsViewModel rebuild(
          void Function(SelectTagsViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SelectTagsViewModelBuilder toBuilder() =>
      new SelectTagsViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SelectTagsViewModel &&
        selectedTags == other.selectedTags &&
        newTagMenuOption == other.newTagMenuOption &&
        tags == other.tags &&
        title == other.title &&
        closeCommand == other.closeCommand &&
        newTagCommand == other.newTagCommand &&
        toogleTagCommand == other.toogleTagCommand;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, selectedTags.hashCode);
    _$hash = $jc(_$hash, newTagMenuOption.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, closeCommand.hashCode);
    _$hash = $jc(_$hash, newTagCommand.hashCode);
    _$hash = $jc(_$hash, toogleTagCommand.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SelectTagsViewModel')
          ..add('selectedTags', selectedTags)
          ..add('newTagMenuOption', newTagMenuOption)
          ..add('tags', tags)
          ..add('title', title)
          ..add('closeCommand', closeCommand)
          ..add('newTagCommand', newTagCommand)
          ..add('toogleTagCommand', toogleTagCommand))
        .toString();
  }
}

class SelectTagsViewModelBuilder
    implements Builder<SelectTagsViewModel, SelectTagsViewModelBuilder> {
  _$SelectTagsViewModel? _$v;

  List<String>? _selectedTags;
  List<String>? get selectedTags => _$this._selectedTags;
  set selectedTags(List<String>? selectedTags) =>
      _$this._selectedTags = selectedTags;

  String? _newTagMenuOption;
  String? get newTagMenuOption => _$this._newTagMenuOption;
  set newTagMenuOption(String? newTagMenuOption) =>
      _$this._newTagMenuOption = newTagMenuOption;

  ListBuilder<TagDto>? _tags;
  ListBuilder<TagDto> get tags => _$this._tags ??= new ListBuilder<TagDto>();
  set tags(ListBuilder<TagDto>? tags) => _$this._tags = tags;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  FunctionHolder? _closeCommand;
  FunctionHolder? get closeCommand => _$this._closeCommand;
  set closeCommand(FunctionHolder? closeCommand) =>
      _$this._closeCommand = closeCommand;

  FunctionHolder? _newTagCommand;
  FunctionHolder? get newTagCommand => _$this._newTagCommand;
  set newTagCommand(FunctionHolder? newTagCommand) =>
      _$this._newTagCommand = newTagCommand;

  TypedFunctionHolder<String>? _toogleTagCommand;
  TypedFunctionHolder<String>? get toogleTagCommand => _$this._toogleTagCommand;
  set toogleTagCommand(TypedFunctionHolder<String>? toogleTagCommand) =>
      _$this._toogleTagCommand = toogleTagCommand;

  SelectTagsViewModelBuilder();

  SelectTagsViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _selectedTags = $v.selectedTags;
      _newTagMenuOption = $v.newTagMenuOption;
      _tags = $v.tags.toBuilder();
      _title = $v.title;
      _closeCommand = $v.closeCommand;
      _newTagCommand = $v.newTagCommand;
      _toogleTagCommand = $v.toogleTagCommand;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelectTagsViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SelectTagsViewModel;
  }

  @override
  void update(void Function(SelectTagsViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SelectTagsViewModel build() => _build();

  _$SelectTagsViewModel _build() {
    _$SelectTagsViewModel _$result;
    try {
      _$result = _$v ??
          new _$SelectTagsViewModel._(
              selectedTags: BuiltValueNullFieldError.checkNotNull(
                  selectedTags, r'SelectTagsViewModel', 'selectedTags'),
              newTagMenuOption: BuiltValueNullFieldError.checkNotNull(
                  newTagMenuOption, r'SelectTagsViewModel', 'newTagMenuOption'),
              tags: tags.build(),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'SelectTagsViewModel', 'title'),
              closeCommand: BuiltValueNullFieldError.checkNotNull(
                  closeCommand, r'SelectTagsViewModel', 'closeCommand'),
              newTagCommand: BuiltValueNullFieldError.checkNotNull(
                  newTagCommand, r'SelectTagsViewModel', 'newTagCommand'),
              toogleTagCommand: BuiltValueNullFieldError.checkNotNull(
                  toogleTagCommand,
                  r'SelectTagsViewModel',
                  'toogleTagCommand'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        tags.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SelectTagsViewModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
