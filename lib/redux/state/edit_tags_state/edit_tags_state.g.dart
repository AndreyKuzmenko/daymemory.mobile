// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_tags_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EditTagsState extends EditTagsState {
  @override
  final bool isLoading;
  @override
  final bool isSaving;
  @override
  final List<TagDto> tags;

  factory _$EditTagsState([void Function(EditTagsStateBuilder)? updates]) =>
      (new EditTagsStateBuilder()..update(updates))._build();

  _$EditTagsState._(
      {required this.isLoading, required this.isSaving, required this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'EditTagsState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(
        isSaving, r'EditTagsState', 'isSaving');
    BuiltValueNullFieldError.checkNotNull(tags, r'EditTagsState', 'tags');
  }

  @override
  EditTagsState rebuild(void Function(EditTagsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EditTagsStateBuilder toBuilder() => new EditTagsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EditTagsState &&
        isLoading == other.isLoading &&
        isSaving == other.isSaving &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, isSaving.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EditTagsState')
          ..add('isLoading', isLoading)
          ..add('isSaving', isSaving)
          ..add('tags', tags))
        .toString();
  }
}

class EditTagsStateBuilder
    implements Builder<EditTagsState, EditTagsStateBuilder> {
  _$EditTagsState? _$v;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _isSaving;
  bool? get isSaving => _$this._isSaving;
  set isSaving(bool? isSaving) => _$this._isSaving = isSaving;

  List<TagDto>? _tags;
  List<TagDto>? get tags => _$this._tags;
  set tags(List<TagDto>? tags) => _$this._tags = tags;

  EditTagsStateBuilder();

  EditTagsStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isLoading = $v.isLoading;
      _isSaving = $v.isSaving;
      _tags = $v.tags;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EditTagsState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EditTagsState;
  }

  @override
  void update(void Function(EditTagsStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EditTagsState build() => _build();

  _$EditTagsState _build() {
    final _$result = _$v ??
        new _$EditTagsState._(
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, r'EditTagsState', 'isLoading'),
            isSaving: BuiltValueNullFieldError.checkNotNull(
                isSaving, r'EditTagsState', 'isSaving'),
            tags: BuiltValueNullFieldError.checkNotNull(
                tags, r'EditTagsState', 'tags'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
