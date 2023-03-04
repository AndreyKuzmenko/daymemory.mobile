// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'touch_id_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TouchIdViewModel extends TouchIdViewModel {
  @override
  final FunctionHolder allowCommand;
  @override
  final FunctionHolder skipCommand;
  @override
  final String allowTouchIdTitle;
  @override
  final String skipTitle;
  @override
  final String subTitle;

  factory _$TouchIdViewModel(
          [void Function(TouchIdViewModelBuilder)? updates]) =>
      (new TouchIdViewModelBuilder()..update(updates))._build();

  _$TouchIdViewModel._(
      {required this.allowCommand,
      required this.skipCommand,
      required this.allowTouchIdTitle,
      required this.skipTitle,
      required this.subTitle})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        allowCommand, r'TouchIdViewModel', 'allowCommand');
    BuiltValueNullFieldError.checkNotNull(
        skipCommand, r'TouchIdViewModel', 'skipCommand');
    BuiltValueNullFieldError.checkNotNull(
        allowTouchIdTitle, r'TouchIdViewModel', 'allowTouchIdTitle');
    BuiltValueNullFieldError.checkNotNull(
        skipTitle, r'TouchIdViewModel', 'skipTitle');
    BuiltValueNullFieldError.checkNotNull(
        subTitle, r'TouchIdViewModel', 'subTitle');
  }

  @override
  TouchIdViewModel rebuild(void Function(TouchIdViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TouchIdViewModelBuilder toBuilder() =>
      new TouchIdViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TouchIdViewModel &&
        allowCommand == other.allowCommand &&
        skipCommand == other.skipCommand &&
        allowTouchIdTitle == other.allowTouchIdTitle &&
        skipTitle == other.skipTitle &&
        subTitle == other.subTitle;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allowCommand.hashCode);
    _$hash = $jc(_$hash, skipCommand.hashCode);
    _$hash = $jc(_$hash, allowTouchIdTitle.hashCode);
    _$hash = $jc(_$hash, skipTitle.hashCode);
    _$hash = $jc(_$hash, subTitle.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TouchIdViewModel')
          ..add('allowCommand', allowCommand)
          ..add('skipCommand', skipCommand)
          ..add('allowTouchIdTitle', allowTouchIdTitle)
          ..add('skipTitle', skipTitle)
          ..add('subTitle', subTitle))
        .toString();
  }
}

class TouchIdViewModelBuilder
    implements Builder<TouchIdViewModel, TouchIdViewModelBuilder> {
  _$TouchIdViewModel? _$v;

  FunctionHolder? _allowCommand;
  FunctionHolder? get allowCommand => _$this._allowCommand;
  set allowCommand(FunctionHolder? allowCommand) =>
      _$this._allowCommand = allowCommand;

  FunctionHolder? _skipCommand;
  FunctionHolder? get skipCommand => _$this._skipCommand;
  set skipCommand(FunctionHolder? skipCommand) =>
      _$this._skipCommand = skipCommand;

  String? _allowTouchIdTitle;
  String? get allowTouchIdTitle => _$this._allowTouchIdTitle;
  set allowTouchIdTitle(String? allowTouchIdTitle) =>
      _$this._allowTouchIdTitle = allowTouchIdTitle;

  String? _skipTitle;
  String? get skipTitle => _$this._skipTitle;
  set skipTitle(String? skipTitle) => _$this._skipTitle = skipTitle;

  String? _subTitle;
  String? get subTitle => _$this._subTitle;
  set subTitle(String? subTitle) => _$this._subTitle = subTitle;

  TouchIdViewModelBuilder();

  TouchIdViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allowCommand = $v.allowCommand;
      _skipCommand = $v.skipCommand;
      _allowTouchIdTitle = $v.allowTouchIdTitle;
      _skipTitle = $v.skipTitle;
      _subTitle = $v.subTitle;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TouchIdViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TouchIdViewModel;
  }

  @override
  void update(void Function(TouchIdViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TouchIdViewModel build() => _build();

  _$TouchIdViewModel _build() {
    final _$result = _$v ??
        new _$TouchIdViewModel._(
            allowCommand: BuiltValueNullFieldError.checkNotNull(
                allowCommand, r'TouchIdViewModel', 'allowCommand'),
            skipCommand: BuiltValueNullFieldError.checkNotNull(
                skipCommand, r'TouchIdViewModel', 'skipCommand'),
            allowTouchIdTitle: BuiltValueNullFieldError.checkNotNull(
                allowTouchIdTitle, r'TouchIdViewModel', 'allowTouchIdTitle'),
            skipTitle: BuiltValueNullFieldError.checkNotNull(
                skipTitle, r'TouchIdViewModel', 'skipTitle'),
            subTitle: BuiltValueNullFieldError.checkNotNull(
                subTitle, r'TouchIdViewModel', 'subTitle'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
