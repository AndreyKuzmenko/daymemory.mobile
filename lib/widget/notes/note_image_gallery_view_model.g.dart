// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_image_gallery_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NoteImageGalleryViewModel extends NoteImageGalleryViewModel {
  @override
  final List<FileViewModel> images;
  @override
  final int index;
  @override
  final bool showImageNavigation;
  @override
  final FunctionHolder closeCommand;

  factory _$NoteImageGalleryViewModel(
          [void Function(NoteImageGalleryViewModelBuilder)? updates]) =>
      (new NoteImageGalleryViewModelBuilder()..update(updates))._build();

  _$NoteImageGalleryViewModel._(
      {required this.images,
      required this.index,
      required this.showImageNavigation,
      required this.closeCommand})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        images, r'NoteImageGalleryViewModel', 'images');
    BuiltValueNullFieldError.checkNotNull(
        index, r'NoteImageGalleryViewModel', 'index');
    BuiltValueNullFieldError.checkNotNull(showImageNavigation,
        r'NoteImageGalleryViewModel', 'showImageNavigation');
    BuiltValueNullFieldError.checkNotNull(
        closeCommand, r'NoteImageGalleryViewModel', 'closeCommand');
  }

  @override
  NoteImageGalleryViewModel rebuild(
          void Function(NoteImageGalleryViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoteImageGalleryViewModelBuilder toBuilder() =>
      new NoteImageGalleryViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoteImageGalleryViewModel &&
        images == other.images &&
        index == other.index &&
        showImageNavigation == other.showImageNavigation &&
        closeCommand == other.closeCommand;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, images.hashCode);
    _$hash = $jc(_$hash, index.hashCode);
    _$hash = $jc(_$hash, showImageNavigation.hashCode);
    _$hash = $jc(_$hash, closeCommand.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NoteImageGalleryViewModel')
          ..add('images', images)
          ..add('index', index)
          ..add('showImageNavigation', showImageNavigation)
          ..add('closeCommand', closeCommand))
        .toString();
  }
}

class NoteImageGalleryViewModelBuilder
    implements
        Builder<NoteImageGalleryViewModel, NoteImageGalleryViewModelBuilder> {
  _$NoteImageGalleryViewModel? _$v;

  List<FileViewModel>? _images;
  List<FileViewModel>? get images => _$this._images;
  set images(List<FileViewModel>? images) => _$this._images = images;

  int? _index;
  int? get index => _$this._index;
  set index(int? index) => _$this._index = index;

  bool? _showImageNavigation;
  bool? get showImageNavigation => _$this._showImageNavigation;
  set showImageNavigation(bool? showImageNavigation) =>
      _$this._showImageNavigation = showImageNavigation;

  FunctionHolder? _closeCommand;
  FunctionHolder? get closeCommand => _$this._closeCommand;
  set closeCommand(FunctionHolder? closeCommand) =>
      _$this._closeCommand = closeCommand;

  NoteImageGalleryViewModelBuilder();

  NoteImageGalleryViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _images = $v.images;
      _index = $v.index;
      _showImageNavigation = $v.showImageNavigation;
      _closeCommand = $v.closeCommand;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NoteImageGalleryViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NoteImageGalleryViewModel;
  }

  @override
  void update(void Function(NoteImageGalleryViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NoteImageGalleryViewModel build() => _build();

  _$NoteImageGalleryViewModel _build() {
    final _$result = _$v ??
        new _$NoteImageGalleryViewModel._(
            images: BuiltValueNullFieldError.checkNotNull(
                images, r'NoteImageGalleryViewModel', 'images'),
            index: BuiltValueNullFieldError.checkNotNull(
                index, r'NoteImageGalleryViewModel', 'index'),
            showImageNavigation: BuiltValueNullFieldError.checkNotNull(
                showImageNavigation,
                r'NoteImageGalleryViewModel',
                'showImageNavigation'),
            closeCommand: BuiltValueNullFieldError.checkNotNull(
                closeCommand, r'NoteImageGalleryViewModel', 'closeCommand'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
