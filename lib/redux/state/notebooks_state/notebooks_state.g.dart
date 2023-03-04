// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notebooks_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotebooksState extends NotebooksState {
  @override
  final List<NotebookDto> items;

  factory _$NotebooksState([void Function(NotebooksStateBuilder)? updates]) =>
      (new NotebooksStateBuilder()..update(updates))._build();

  _$NotebooksState._({required this.items}) : super._() {
    BuiltValueNullFieldError.checkNotNull(items, r'NotebooksState', 'items');
  }

  @override
  NotebooksState rebuild(void Function(NotebooksStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotebooksStateBuilder toBuilder() =>
      new NotebooksStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotebooksState && items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotebooksState')..add('items', items))
        .toString();
  }
}

class NotebooksStateBuilder
    implements Builder<NotebooksState, NotebooksStateBuilder> {
  _$NotebooksState? _$v;

  List<NotebookDto>? _items;
  List<NotebookDto>? get items => _$this._items;
  set items(List<NotebookDto>? items) => _$this._items = items;

  NotebooksStateBuilder();

  NotebooksStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotebooksState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotebooksState;
  }

  @override
  void update(void Function(NotebooksStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotebooksState build() => _build();

  _$NotebooksState _build() {
    final _$result = _$v ??
        new _$NotebooksState._(
            items: BuiltValueNullFieldError.checkNotNull(
                items, r'NotebooksState', 'items'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
