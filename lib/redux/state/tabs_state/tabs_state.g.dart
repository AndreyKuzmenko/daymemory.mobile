// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tabs_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TabsState extends TabsState {
  @override
  final int selectTabIndex;
  @override
  final bool isActiveTabClicked;

  factory _$TabsState([void Function(TabsStateBuilder)? updates]) =>
      (new TabsStateBuilder()..update(updates))._build();

  _$TabsState._(
      {required this.selectTabIndex, required this.isActiveTabClicked})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        selectTabIndex, r'TabsState', 'selectTabIndex');
    BuiltValueNullFieldError.checkNotNull(
        isActiveTabClicked, r'TabsState', 'isActiveTabClicked');
  }

  @override
  TabsState rebuild(void Function(TabsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TabsStateBuilder toBuilder() => new TabsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TabsState &&
        selectTabIndex == other.selectTabIndex &&
        isActiveTabClicked == other.isActiveTabClicked;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, selectTabIndex.hashCode);
    _$hash = $jc(_$hash, isActiveTabClicked.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TabsState')
          ..add('selectTabIndex', selectTabIndex)
          ..add('isActiveTabClicked', isActiveTabClicked))
        .toString();
  }
}

class TabsStateBuilder implements Builder<TabsState, TabsStateBuilder> {
  _$TabsState? _$v;

  int? _selectTabIndex;
  int? get selectTabIndex => _$this._selectTabIndex;
  set selectTabIndex(int? selectTabIndex) =>
      _$this._selectTabIndex = selectTabIndex;

  bool? _isActiveTabClicked;
  bool? get isActiveTabClicked => _$this._isActiveTabClicked;
  set isActiveTabClicked(bool? isActiveTabClicked) =>
      _$this._isActiveTabClicked = isActiveTabClicked;

  TabsStateBuilder();

  TabsStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _selectTabIndex = $v.selectTabIndex;
      _isActiveTabClicked = $v.isActiveTabClicked;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TabsState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TabsState;
  }

  @override
  void update(void Function(TabsStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TabsState build() => _build();

  _$TabsState _build() {
    final _$result = _$v ??
        new _$TabsState._(
            selectTabIndex: BuiltValueNullFieldError.checkNotNull(
                selectTabIndex, r'TabsState', 'selectTabIndex'),
            isActiveTabClicked: BuiltValueNullFieldError.checkNotNull(
                isActiveTabClicked, r'TabsState', 'isActiveTabClicked'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
