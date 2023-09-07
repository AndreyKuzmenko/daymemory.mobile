// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'side_menu_item_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SideMenuItemViewModel extends SideMenuItemViewModel {
  @override
  final FunctionHolder selectItemCommand;
  @override
  final String id;
  @override
  final String title;
  @override
  final int notesCount;
  @override
  final bool isSelected;

  factory _$SideMenuItemViewModel([void Function(SideMenuItemViewModelBuilder)? updates]) => (new SideMenuItemViewModelBuilder()..update(updates))._build();

  _$SideMenuItemViewModel._({required this.selectItemCommand, required this.id, required this.title, required this.notesCount, required this.isSelected}) : super._() {
    BuiltValueNullFieldError.checkNotNull(selectItemCommand, r'SideMenuItemViewModel', 'selectItemCommand');
    BuiltValueNullFieldError.checkNotNull(id, r'SideMenuItemViewModel', 'id');
    BuiltValueNullFieldError.checkNotNull(title, r'SideMenuItemViewModel', 'title');
    BuiltValueNullFieldError.checkNotNull(notesCount, r'SideMenuItemViewModel', 'notesCount');
    BuiltValueNullFieldError.checkNotNull(isSelected, r'SideMenuItemViewModel', 'isSelected');
  }

  @override
  SideMenuItemViewModel rebuild(void Function(SideMenuItemViewModelBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  SideMenuItemViewModelBuilder toBuilder() => new SideMenuItemViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SideMenuItemViewModel && selectItemCommand == other.selectItemCommand && id == other.id && title == other.title && notesCount == other.notesCount && isSelected == other.isSelected;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, selectItemCommand.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, notesCount.hashCode);
    _$hash = $jc(_$hash, isSelected.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SideMenuItemViewModel')
          ..add('selectItemCommand', selectItemCommand)
          ..add('id', id)
          ..add('title', title)
          ..add('notesCount', notesCount)
          ..add('isSelected', isSelected))
        .toString();
  }
}

class SideMenuItemViewModelBuilder implements Builder<SideMenuItemViewModel, SideMenuItemViewModelBuilder> {
  _$SideMenuItemViewModel? _$v;

  FunctionHolder? _selectItemCommand;
  FunctionHolder? get selectItemCommand => _$this._selectItemCommand;
  set selectItemCommand(FunctionHolder? selectItemCommand) => _$this._selectItemCommand = selectItemCommand;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _notesCount;
  int? get notesCount => _$this._notesCount;
  set notesCount(int? notesCount) => _$this._notesCount = notesCount;

  bool? _isSelected;
  bool? get isSelected => _$this._isSelected;
  set isSelected(bool? isSelected) => _$this._isSelected = isSelected;

  SideMenuItemViewModelBuilder();

  SideMenuItemViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _selectItemCommand = $v.selectItemCommand;
      _id = $v.id;
      _title = $v.title;
      _notesCount = $v.notesCount;
      _isSelected = $v.isSelected;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SideMenuItemViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SideMenuItemViewModel;
  }

  @override
  void update(void Function(SideMenuItemViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SideMenuItemViewModel build() => _build();

  _$SideMenuItemViewModel _build() {
    final _$result = _$v ??
        new _$SideMenuItemViewModel._(
            selectItemCommand: BuiltValueNullFieldError.checkNotNull(selectItemCommand, r'SideMenuItemViewModel', 'selectItemCommand'),
            id: BuiltValueNullFieldError.checkNotNull(id, r'SideMenuItemViewModel', 'id'),
            title: BuiltValueNullFieldError.checkNotNull(title, r'SideMenuItemViewModel', 'title'),
            notesCount: BuiltValueNullFieldError.checkNotNull(notesCount, r'SideMenuItemViewModel', 'notesCount'),
            isSelected: BuiltValueNullFieldError.checkNotNull(isSelected, r'SideMenuItemViewModel', 'isSelected'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
