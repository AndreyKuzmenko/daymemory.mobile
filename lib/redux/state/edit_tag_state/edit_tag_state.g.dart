// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_tag_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EditTagState extends EditTagState {
  @override
  final String? tagId;
  @override
  final String title;
  @override
  final int orderRank;
  @override
  final bool isSaving;

  factory _$EditTagState([void Function(EditTagStateBuilder)? updates]) =>
      (new EditTagStateBuilder()..update(updates))._build();

  _$EditTagState._(
      {this.tagId,
      required this.title,
      required this.orderRank,
      required this.isSaving})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, r'EditTagState', 'title');
    BuiltValueNullFieldError.checkNotNull(
        orderRank, r'EditTagState', 'orderRank');
    BuiltValueNullFieldError.checkNotNull(
        isSaving, r'EditTagState', 'isSaving');
  }

  @override
  EditTagState rebuild(void Function(EditTagStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EditTagStateBuilder toBuilder() => new EditTagStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EditTagState &&
        tagId == other.tagId &&
        title == other.title &&
        orderRank == other.orderRank &&
        isSaving == other.isSaving;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tagId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, orderRank.hashCode);
    _$hash = $jc(_$hash, isSaving.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EditTagState')
          ..add('tagId', tagId)
          ..add('title', title)
          ..add('orderRank', orderRank)
          ..add('isSaving', isSaving))
        .toString();
  }
}

class EditTagStateBuilder
    implements Builder<EditTagState, EditTagStateBuilder> {
  _$EditTagState? _$v;

  String? _tagId;
  String? get tagId => _$this._tagId;
  set tagId(String? tagId) => _$this._tagId = tagId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _orderRank;
  int? get orderRank => _$this._orderRank;
  set orderRank(int? orderRank) => _$this._orderRank = orderRank;

  bool? _isSaving;
  bool? get isSaving => _$this._isSaving;
  set isSaving(bool? isSaving) => _$this._isSaving = isSaving;

  EditTagStateBuilder();

  EditTagStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tagId = $v.tagId;
      _title = $v.title;
      _orderRank = $v.orderRank;
      _isSaving = $v.isSaving;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EditTagState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EditTagState;
  }

  @override
  void update(void Function(EditTagStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EditTagState build() => _build();

  _$EditTagState _build() {
    final _$result = _$v ??
        new _$EditTagState._(
            tagId: tagId,
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'EditTagState', 'title'),
            orderRank: BuiltValueNullFieldError.checkNotNull(
                orderRank, r'EditTagState', 'orderRank'),
            isSaving: BuiltValueNullFieldError.checkNotNull(
                isSaving, r'EditTagState', 'isSaving'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
