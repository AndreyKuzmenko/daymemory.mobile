// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_image_gallery_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NoteImageGalleryState extends NoteImageGalleryState {
  @override
  final int index;
  @override
  final List<FileDto> images;

  factory _$NoteImageGalleryState(
          [void Function(NoteImageGalleryStateBuilder)? updates]) =>
      (new NoteImageGalleryStateBuilder()..update(updates))._build();

  _$NoteImageGalleryState._({required this.index, required this.images})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        index, r'NoteImageGalleryState', 'index');
    BuiltValueNullFieldError.checkNotNull(
        images, r'NoteImageGalleryState', 'images');
  }

  @override
  NoteImageGalleryState rebuild(
          void Function(NoteImageGalleryStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoteImageGalleryStateBuilder toBuilder() =>
      new NoteImageGalleryStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoteImageGalleryState &&
        index == other.index &&
        images == other.images;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, index.hashCode);
    _$hash = $jc(_$hash, images.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NoteImageGalleryState')
          ..add('index', index)
          ..add('images', images))
        .toString();
  }
}

class NoteImageGalleryStateBuilder
    implements Builder<NoteImageGalleryState, NoteImageGalleryStateBuilder> {
  _$NoteImageGalleryState? _$v;

  int? _index;
  int? get index => _$this._index;
  set index(int? index) => _$this._index = index;

  List<FileDto>? _images;
  List<FileDto>? get images => _$this._images;
  set images(List<FileDto>? images) => _$this._images = images;

  NoteImageGalleryStateBuilder();

  NoteImageGalleryStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _index = $v.index;
      _images = $v.images;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NoteImageGalleryState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NoteImageGalleryState;
  }

  @override
  void update(void Function(NoteImageGalleryStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NoteImageGalleryState build() => _build();

  _$NoteImageGalleryState _build() {
    final _$result = _$v ??
        new _$NoteImageGalleryState._(
            index: BuiltValueNullFieldError.checkNotNull(
                index, r'NoteImageGalleryState', 'index'),
            images: BuiltValueNullFieldError.checkNotNull(
                images, r'NoteImageGalleryState', 'images'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
