// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'face_id_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FaceIdViewModel extends FaceIdViewModel {
  @override
  final FunctionHolder allowCommand;
  @override
  final FunctionHolder skipCommand;
  @override
  final String allowFaceIdTitle;
  @override
  final String skipTitle;
  @override
  final String subTitle;

  factory _$FaceIdViewModel([void Function(FaceIdViewModelBuilder)? updates]) =>
      (new FaceIdViewModelBuilder()..update(updates))._build();

  _$FaceIdViewModel._(
      {required this.allowCommand,
      required this.skipCommand,
      required this.allowFaceIdTitle,
      required this.skipTitle,
      required this.subTitle})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        allowCommand, r'FaceIdViewModel', 'allowCommand');
    BuiltValueNullFieldError.checkNotNull(
        skipCommand, r'FaceIdViewModel', 'skipCommand');
    BuiltValueNullFieldError.checkNotNull(
        allowFaceIdTitle, r'FaceIdViewModel', 'allowFaceIdTitle');
    BuiltValueNullFieldError.checkNotNull(
        skipTitle, r'FaceIdViewModel', 'skipTitle');
    BuiltValueNullFieldError.checkNotNull(
        subTitle, r'FaceIdViewModel', 'subTitle');
  }

  @override
  FaceIdViewModel rebuild(void Function(FaceIdViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FaceIdViewModelBuilder toBuilder() =>
      new FaceIdViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FaceIdViewModel &&
        allowCommand == other.allowCommand &&
        skipCommand == other.skipCommand &&
        allowFaceIdTitle == other.allowFaceIdTitle &&
        skipTitle == other.skipTitle &&
        subTitle == other.subTitle;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allowCommand.hashCode);
    _$hash = $jc(_$hash, skipCommand.hashCode);
    _$hash = $jc(_$hash, allowFaceIdTitle.hashCode);
    _$hash = $jc(_$hash, skipTitle.hashCode);
    _$hash = $jc(_$hash, subTitle.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FaceIdViewModel')
          ..add('allowCommand', allowCommand)
          ..add('skipCommand', skipCommand)
          ..add('allowFaceIdTitle', allowFaceIdTitle)
          ..add('skipTitle', skipTitle)
          ..add('subTitle', subTitle))
        .toString();
  }
}

class FaceIdViewModelBuilder
    implements Builder<FaceIdViewModel, FaceIdViewModelBuilder> {
  _$FaceIdViewModel? _$v;

  FunctionHolder? _allowCommand;
  FunctionHolder? get allowCommand => _$this._allowCommand;
  set allowCommand(FunctionHolder? allowCommand) =>
      _$this._allowCommand = allowCommand;

  FunctionHolder? _skipCommand;
  FunctionHolder? get skipCommand => _$this._skipCommand;
  set skipCommand(FunctionHolder? skipCommand) =>
      _$this._skipCommand = skipCommand;

  String? _allowFaceIdTitle;
  String? get allowFaceIdTitle => _$this._allowFaceIdTitle;
  set allowFaceIdTitle(String? allowFaceIdTitle) =>
      _$this._allowFaceIdTitle = allowFaceIdTitle;

  String? _skipTitle;
  String? get skipTitle => _$this._skipTitle;
  set skipTitle(String? skipTitle) => _$this._skipTitle = skipTitle;

  String? _subTitle;
  String? get subTitle => _$this._subTitle;
  set subTitle(String? subTitle) => _$this._subTitle = subTitle;

  FaceIdViewModelBuilder();

  FaceIdViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allowCommand = $v.allowCommand;
      _skipCommand = $v.skipCommand;
      _allowFaceIdTitle = $v.allowFaceIdTitle;
      _skipTitle = $v.skipTitle;
      _subTitle = $v.subTitle;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FaceIdViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FaceIdViewModel;
  }

  @override
  void update(void Function(FaceIdViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FaceIdViewModel build() => _build();

  _$FaceIdViewModel _build() {
    final _$result = _$v ??
        new _$FaceIdViewModel._(
            allowCommand: BuiltValueNullFieldError.checkNotNull(
                allowCommand, r'FaceIdViewModel', 'allowCommand'),
            skipCommand: BuiltValueNullFieldError.checkNotNull(
                skipCommand, r'FaceIdViewModel', 'skipCommand'),
            allowFaceIdTitle: BuiltValueNullFieldError.checkNotNull(
                allowFaceIdTitle, r'FaceIdViewModel', 'allowFaceIdTitle'),
            skipTitle: BuiltValueNullFieldError.checkNotNull(
                skipTitle, r'FaceIdViewModel', 'skipTitle'),
            subTitle: BuiltValueNullFieldError.checkNotNull(
                subTitle, r'FaceIdViewModel', 'subTitle'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
