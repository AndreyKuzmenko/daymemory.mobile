// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tags_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TagsViewModel extends TagsViewModel {
  @override
  final String? tagId;
  @override
  final bool isSaving;
  @override
  final String title;
  @override
  final BuiltList<TagFieldViewModel> items;
  @override
  final FunctionHolder addTagCommand;
  @override
  final TypedFunctionHolder<ItemPositionDto> reorderCommand;
  @override
  final FunctionHolder saveCommand;
  @override
  final FunctionHolder closeCommand;

  factory _$TagsViewModel([void Function(TagsViewModelBuilder)? updates]) =>
      (new TagsViewModelBuilder()..update(updates))._build();

  _$TagsViewModel._(
      {this.tagId,
      required this.isSaving,
      required this.title,
      required this.items,
      required this.addTagCommand,
      required this.reorderCommand,
      required this.saveCommand,
      required this.closeCommand})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isSaving, r'TagsViewModel', 'isSaving');
    BuiltValueNullFieldError.checkNotNull(title, r'TagsViewModel', 'title');
    BuiltValueNullFieldError.checkNotNull(items, r'TagsViewModel', 'items');
    BuiltValueNullFieldError.checkNotNull(
        addTagCommand, r'TagsViewModel', 'addTagCommand');
    BuiltValueNullFieldError.checkNotNull(
        reorderCommand, r'TagsViewModel', 'reorderCommand');
    BuiltValueNullFieldError.checkNotNull(
        saveCommand, r'TagsViewModel', 'saveCommand');
    BuiltValueNullFieldError.checkNotNull(
        closeCommand, r'TagsViewModel', 'closeCommand');
  }

  @override
  TagsViewModel rebuild(void Function(TagsViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagsViewModelBuilder toBuilder() => new TagsViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TagsViewModel &&
        tagId == other.tagId &&
        isSaving == other.isSaving &&
        title == other.title &&
        items == other.items &&
        addTagCommand == other.addTagCommand &&
        reorderCommand == other.reorderCommand &&
        saveCommand == other.saveCommand &&
        closeCommand == other.closeCommand;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tagId.hashCode);
    _$hash = $jc(_$hash, isSaving.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, addTagCommand.hashCode);
    _$hash = $jc(_$hash, reorderCommand.hashCode);
    _$hash = $jc(_$hash, saveCommand.hashCode);
    _$hash = $jc(_$hash, closeCommand.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TagsViewModel')
          ..add('tagId', tagId)
          ..add('isSaving', isSaving)
          ..add('title', title)
          ..add('items', items)
          ..add('addTagCommand', addTagCommand)
          ..add('reorderCommand', reorderCommand)
          ..add('saveCommand', saveCommand)
          ..add('closeCommand', closeCommand))
        .toString();
  }
}

class TagsViewModelBuilder
    implements Builder<TagsViewModel, TagsViewModelBuilder> {
  _$TagsViewModel? _$v;

  String? _tagId;
  String? get tagId => _$this._tagId;
  set tagId(String? tagId) => _$this._tagId = tagId;

  bool? _isSaving;
  bool? get isSaving => _$this._isSaving;
  set isSaving(bool? isSaving) => _$this._isSaving = isSaving;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  ListBuilder<TagFieldViewModel>? _items;
  ListBuilder<TagFieldViewModel> get items =>
      _$this._items ??= new ListBuilder<TagFieldViewModel>();
  set items(ListBuilder<TagFieldViewModel>? items) => _$this._items = items;

  FunctionHolder? _addTagCommand;
  FunctionHolder? get addTagCommand => _$this._addTagCommand;
  set addTagCommand(FunctionHolder? addTagCommand) =>
      _$this._addTagCommand = addTagCommand;

  TypedFunctionHolder<ItemPositionDto>? _reorderCommand;
  TypedFunctionHolder<ItemPositionDto>? get reorderCommand =>
      _$this._reorderCommand;
  set reorderCommand(TypedFunctionHolder<ItemPositionDto>? reorderCommand) =>
      _$this._reorderCommand = reorderCommand;

  FunctionHolder? _saveCommand;
  FunctionHolder? get saveCommand => _$this._saveCommand;
  set saveCommand(FunctionHolder? saveCommand) =>
      _$this._saveCommand = saveCommand;

  FunctionHolder? _closeCommand;
  FunctionHolder? get closeCommand => _$this._closeCommand;
  set closeCommand(FunctionHolder? closeCommand) =>
      _$this._closeCommand = closeCommand;

  TagsViewModelBuilder();

  TagsViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tagId = $v.tagId;
      _isSaving = $v.isSaving;
      _title = $v.title;
      _items = $v.items.toBuilder();
      _addTagCommand = $v.addTagCommand;
      _reorderCommand = $v.reorderCommand;
      _saveCommand = $v.saveCommand;
      _closeCommand = $v.closeCommand;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TagsViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TagsViewModel;
  }

  @override
  void update(void Function(TagsViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TagsViewModel build() => _build();

  _$TagsViewModel _build() {
    _$TagsViewModel _$result;
    try {
      _$result = _$v ??
          new _$TagsViewModel._(
              tagId: tagId,
              isSaving: BuiltValueNullFieldError.checkNotNull(
                  isSaving, r'TagsViewModel', 'isSaving'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'TagsViewModel', 'title'),
              items: items.build(),
              addTagCommand: BuiltValueNullFieldError.checkNotNull(
                  addTagCommand, r'TagsViewModel', 'addTagCommand'),
              reorderCommand: BuiltValueNullFieldError.checkNotNull(
                  reorderCommand, r'TagsViewModel', 'reorderCommand'),
              saveCommand: BuiltValueNullFieldError.checkNotNull(
                  saveCommand, r'TagsViewModel', 'saveCommand'),
              closeCommand: BuiltValueNullFieldError.checkNotNull(
                  closeCommand, r'TagsViewModel', 'closeCommand'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TagsViewModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
