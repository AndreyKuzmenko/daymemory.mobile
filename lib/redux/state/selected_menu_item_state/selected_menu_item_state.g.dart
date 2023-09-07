// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_menu_item_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SelectedMenuItemState extends SelectedMenuItemState {
  @override
  final String? itemId;
  @override
  final String? title;

  factory _$SelectedMenuItemState(
          [void Function(SelectedMenuItemStateBuilder)? updates]) =>
      (new SelectedMenuItemStateBuilder()..update(updates))._build();

  _$SelectedMenuItemState._({this.itemId, this.title}) : super._();

  @override
  SelectedMenuItemState rebuild(
          void Function(SelectedMenuItemStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SelectedMenuItemStateBuilder toBuilder() =>
      new SelectedMenuItemStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SelectedMenuItemState &&
        itemId == other.itemId &&
        title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, itemId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SelectedMenuItemState')
          ..add('itemId', itemId)
          ..add('title', title))
        .toString();
  }
}

class SelectedMenuItemStateBuilder
    implements Builder<SelectedMenuItemState, SelectedMenuItemStateBuilder> {
  _$SelectedMenuItemState? _$v;

  String? _itemId;
  String? get itemId => _$this._itemId;
  set itemId(String? itemId) => _$this._itemId = itemId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  SelectedMenuItemStateBuilder();

  SelectedMenuItemStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _itemId = $v.itemId;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelectedMenuItemState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SelectedMenuItemState;
  }

  @override
  void update(void Function(SelectedMenuItemStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SelectedMenuItemState build() => _build();

  _$SelectedMenuItemState _build() {
    final _$result =
        _$v ?? new _$SelectedMenuItemState._(itemId: itemId, title: title);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
