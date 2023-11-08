// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'biometric_auth_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BiometricAuthViewModel extends BiometricAuthViewModel {
  @override
  final FunctionHolder allowCommand;
  @override
  final FunctionHolder skipCommand;
  @override
  final String allowBiometricAuthTitle;
  @override
  final String skipTitle;
  @override
  final String subTitle;

  factory _$BiometricAuthViewModel(
          [void Function(BiometricAuthViewModelBuilder)? updates]) =>
      (new BiometricAuthViewModelBuilder()..update(updates))._build();

  _$BiometricAuthViewModel._(
      {required this.allowCommand,
      required this.skipCommand,
      required this.allowBiometricAuthTitle,
      required this.skipTitle,
      required this.subTitle})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        allowCommand, r'BiometricAuthViewModel', 'allowCommand');
    BuiltValueNullFieldError.checkNotNull(
        skipCommand, r'BiometricAuthViewModel', 'skipCommand');
    BuiltValueNullFieldError.checkNotNull(allowBiometricAuthTitle,
        r'BiometricAuthViewModel', 'allowBiometricAuthTitle');
    BuiltValueNullFieldError.checkNotNull(
        skipTitle, r'BiometricAuthViewModel', 'skipTitle');
    BuiltValueNullFieldError.checkNotNull(
        subTitle, r'BiometricAuthViewModel', 'subTitle');
  }

  @override
  BiometricAuthViewModel rebuild(
          void Function(BiometricAuthViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BiometricAuthViewModelBuilder toBuilder() =>
      new BiometricAuthViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BiometricAuthViewModel &&
        allowCommand == other.allowCommand &&
        skipCommand == other.skipCommand &&
        allowBiometricAuthTitle == other.allowBiometricAuthTitle &&
        skipTitle == other.skipTitle &&
        subTitle == other.subTitle;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allowCommand.hashCode);
    _$hash = $jc(_$hash, skipCommand.hashCode);
    _$hash = $jc(_$hash, allowBiometricAuthTitle.hashCode);
    _$hash = $jc(_$hash, skipTitle.hashCode);
    _$hash = $jc(_$hash, subTitle.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BiometricAuthViewModel')
          ..add('allowCommand', allowCommand)
          ..add('skipCommand', skipCommand)
          ..add('allowBiometricAuthTitle', allowBiometricAuthTitle)
          ..add('skipTitle', skipTitle)
          ..add('subTitle', subTitle))
        .toString();
  }
}

class BiometricAuthViewModelBuilder
    implements Builder<BiometricAuthViewModel, BiometricAuthViewModelBuilder> {
  _$BiometricAuthViewModel? _$v;

  FunctionHolder? _allowCommand;
  FunctionHolder? get allowCommand => _$this._allowCommand;
  set allowCommand(FunctionHolder? allowCommand) =>
      _$this._allowCommand = allowCommand;

  FunctionHolder? _skipCommand;
  FunctionHolder? get skipCommand => _$this._skipCommand;
  set skipCommand(FunctionHolder? skipCommand) =>
      _$this._skipCommand = skipCommand;

  String? _allowBiometricAuthTitle;
  String? get allowBiometricAuthTitle => _$this._allowBiometricAuthTitle;
  set allowBiometricAuthTitle(String? allowBiometricAuthTitle) =>
      _$this._allowBiometricAuthTitle = allowBiometricAuthTitle;

  String? _skipTitle;
  String? get skipTitle => _$this._skipTitle;
  set skipTitle(String? skipTitle) => _$this._skipTitle = skipTitle;

  String? _subTitle;
  String? get subTitle => _$this._subTitle;
  set subTitle(String? subTitle) => _$this._subTitle = subTitle;

  BiometricAuthViewModelBuilder();

  BiometricAuthViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allowCommand = $v.allowCommand;
      _skipCommand = $v.skipCommand;
      _allowBiometricAuthTitle = $v.allowBiometricAuthTitle;
      _skipTitle = $v.skipTitle;
      _subTitle = $v.subTitle;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BiometricAuthViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BiometricAuthViewModel;
  }

  @override
  void update(void Function(BiometricAuthViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BiometricAuthViewModel build() => _build();

  _$BiometricAuthViewModel _build() {
    final _$result = _$v ??
        new _$BiometricAuthViewModel._(
            allowCommand: BuiltValueNullFieldError.checkNotNull(
                allowCommand, r'BiometricAuthViewModel', 'allowCommand'),
            skipCommand: BuiltValueNullFieldError.checkNotNull(
                skipCommand, r'BiometricAuthViewModel', 'skipCommand'),
            allowBiometricAuthTitle: BuiltValueNullFieldError.checkNotNull(
                allowBiometricAuthTitle,
                r'BiometricAuthViewModel',
                'allowBiometricAuthTitle'),
            skipTitle: BuiltValueNullFieldError.checkNotNull(
                skipTitle, r'BiometricAuthViewModel', 'skipTitle'),
            subTitle: BuiltValueNullFieldError.checkNotNull(
                subTitle, r'BiometricAuthViewModel', 'subTitle'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
