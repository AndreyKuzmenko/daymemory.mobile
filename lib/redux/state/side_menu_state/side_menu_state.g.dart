// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'side_menu_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SideMenuState extends SideMenuState {
  @override
  final String? selectedTag;

  factory _$SideMenuState([void Function(SideMenuStateBuilder)? updates]) =>
      (new SideMenuStateBuilder()..update(updates))._build();

  _$SideMenuState._({this.selectedTag}) : super._();

  @override
  SideMenuState rebuild(void Function(SideMenuStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SideMenuStateBuilder toBuilder() => new SideMenuStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SideMenuState && selectedTag == other.selectedTag;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, selectedTag.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SideMenuState')
          ..add('selectedTag', selectedTag))
        .toString();
  }
}

class SideMenuStateBuilder
    implements Builder<SideMenuState, SideMenuStateBuilder> {
  _$SideMenuState? _$v;

  String? _selectedTag;
  String? get selectedTag => _$this._selectedTag;
  set selectedTag(String? selectedTag) => _$this._selectedTag = selectedTag;

  SideMenuStateBuilder();

  SideMenuStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _selectedTag = $v.selectedTag;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SideMenuState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SideMenuState;
  }

  @override
  void update(void Function(SideMenuStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SideMenuState build() => _build();

  _$SideMenuState _build() {
    final _$result = _$v ?? new _$SideMenuState._(selectedTag: selectedTag);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
