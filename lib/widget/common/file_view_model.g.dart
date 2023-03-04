// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileViewModel extends FileViewModel {
  @override
  final String id;
  @override
  final String filePath;
  @override
  final FileType fileType;
  @override
  final int height;
  @override
  final int width;

  factory _$FileViewModel([void Function(FileViewModelBuilder)? updates]) =>
      (new FileViewModelBuilder()..update(updates))._build();

  _$FileViewModel._(
      {required this.id,
      required this.filePath,
      required this.fileType,
      required this.height,
      required this.width})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'FileViewModel', 'id');
    BuiltValueNullFieldError.checkNotNull(
        filePath, r'FileViewModel', 'filePath');
    BuiltValueNullFieldError.checkNotNull(
        fileType, r'FileViewModel', 'fileType');
    BuiltValueNullFieldError.checkNotNull(height, r'FileViewModel', 'height');
    BuiltValueNullFieldError.checkNotNull(width, r'FileViewModel', 'width');
  }

  @override
  FileViewModel rebuild(void Function(FileViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileViewModelBuilder toBuilder() => new FileViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileViewModel &&
        id == other.id &&
        filePath == other.filePath &&
        fileType == other.fileType &&
        height == other.height &&
        width == other.width;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, filePath.hashCode);
    _$hash = $jc(_$hash, fileType.hashCode);
    _$hash = $jc(_$hash, height.hashCode);
    _$hash = $jc(_$hash, width.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FileViewModel')
          ..add('id', id)
          ..add('filePath', filePath)
          ..add('fileType', fileType)
          ..add('height', height)
          ..add('width', width))
        .toString();
  }
}

class FileViewModelBuilder
    implements Builder<FileViewModel, FileViewModelBuilder> {
  _$FileViewModel? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _filePath;
  String? get filePath => _$this._filePath;
  set filePath(String? filePath) => _$this._filePath = filePath;

  FileType? _fileType;
  FileType? get fileType => _$this._fileType;
  set fileType(FileType? fileType) => _$this._fileType = fileType;

  int? _height;
  int? get height => _$this._height;
  set height(int? height) => _$this._height = height;

  int? _width;
  int? get width => _$this._width;
  set width(int? width) => _$this._width = width;

  FileViewModelBuilder();

  FileViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _filePath = $v.filePath;
      _fileType = $v.fileType;
      _height = $v.height;
      _width = $v.width;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FileViewModel;
  }

  @override
  void update(void Function(FileViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileViewModel build() => _build();

  _$FileViewModel _build() {
    final _$result = _$v ??
        new _$FileViewModel._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'FileViewModel', 'id'),
            filePath: BuiltValueNullFieldError.checkNotNull(
                filePath, r'FileViewModel', 'filePath'),
            fileType: BuiltValueNullFieldError.checkNotNull(
                fileType, r'FileViewModel', 'fileType'),
            height: BuiltValueNullFieldError.checkNotNull(
                height, r'FileViewModel', 'height'),
            width: BuiltValueNullFieldError.checkNotNull(
                width, r'FileViewModel', 'width'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
