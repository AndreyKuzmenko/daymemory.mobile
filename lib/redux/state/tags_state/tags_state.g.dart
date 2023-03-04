// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tags_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TagsState extends TagsState {
  @override
  final List<TagDto> tags;

  factory _$TagsState([void Function(TagsStateBuilder)? updates]) =>
      (new TagsStateBuilder()..update(updates))._build();

  _$TagsState._({required this.tags}) : super._() {
    BuiltValueNullFieldError.checkNotNull(tags, r'TagsState', 'tags');
  }

  @override
  TagsState rebuild(void Function(TagsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagsStateBuilder toBuilder() => new TagsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TagsState && tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TagsState')..add('tags', tags))
        .toString();
  }
}

class TagsStateBuilder implements Builder<TagsState, TagsStateBuilder> {
  _$TagsState? _$v;

  List<TagDto>? _tags;
  List<TagDto>? get tags => _$this._tags;
  set tags(List<TagDto>? tags) => _$this._tags = tags;

  TagsStateBuilder();

  TagsStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tags = $v.tags;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TagsState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TagsState;
  }

  @override
  void update(void Function(TagsStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TagsState build() => _build();

  _$TagsState _build() {
    final _$result = _$v ??
        new _$TagsState._(
            tags: BuiltValueNullFieldError.checkNotNull(
                tags, r'TagsState', 'tags'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
