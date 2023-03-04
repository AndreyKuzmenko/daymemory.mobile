// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_denied_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccessDeniedViewModel extends AccessDeniedViewModel {
  @override
  final String title;
  @override
  final String message;
  @override
  final String? buttonTitle;
  @override
  final FunctionHolder? buttonCommand;

  factory _$AccessDeniedViewModel(
          [void Function(AccessDeniedViewModelBuilder)? updates]) =>
      (new AccessDeniedViewModelBuilder()..update(updates))._build();

  _$AccessDeniedViewModel._(
      {required this.title,
      required this.message,
      this.buttonTitle,
      this.buttonCommand})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        title, r'AccessDeniedViewModel', 'title');
    BuiltValueNullFieldError.checkNotNull(
        message, r'AccessDeniedViewModel', 'message');
  }

  @override
  AccessDeniedViewModel rebuild(
          void Function(AccessDeniedViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccessDeniedViewModelBuilder toBuilder() =>
      new AccessDeniedViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccessDeniedViewModel &&
        title == other.title &&
        message == other.message &&
        buttonTitle == other.buttonTitle &&
        buttonCommand == other.buttonCommand;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, buttonTitle.hashCode);
    _$hash = $jc(_$hash, buttonCommand.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccessDeniedViewModel')
          ..add('title', title)
          ..add('message', message)
          ..add('buttonTitle', buttonTitle)
          ..add('buttonCommand', buttonCommand))
        .toString();
  }
}

class AccessDeniedViewModelBuilder
    implements Builder<AccessDeniedViewModel, AccessDeniedViewModelBuilder> {
  _$AccessDeniedViewModel? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _buttonTitle;
  String? get buttonTitle => _$this._buttonTitle;
  set buttonTitle(String? buttonTitle) => _$this._buttonTitle = buttonTitle;

  FunctionHolder? _buttonCommand;
  FunctionHolder? get buttonCommand => _$this._buttonCommand;
  set buttonCommand(FunctionHolder? buttonCommand) =>
      _$this._buttonCommand = buttonCommand;

  AccessDeniedViewModelBuilder();

  AccessDeniedViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _message = $v.message;
      _buttonTitle = $v.buttonTitle;
      _buttonCommand = $v.buttonCommand;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccessDeniedViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccessDeniedViewModel;
  }

  @override
  void update(void Function(AccessDeniedViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccessDeniedViewModel build() => _build();

  _$AccessDeniedViewModel _build() {
    final _$result = _$v ??
        new _$AccessDeniedViewModel._(
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'AccessDeniedViewModel', 'title'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'AccessDeniedViewModel', 'message'),
            buttonTitle: buttonTitle,
            buttonCommand: buttonCommand);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
