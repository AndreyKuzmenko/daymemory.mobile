// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dialog_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DialogState extends DialogState {
  @override
  final String title;
  @override
  final String description;
  @override
  final FunctionHolder? positive;
  @override
  final String? positiveTitle;
  @override
  final FunctionHolder? negative;
  @override
  final String? negativeTitle;
  @override
  final bool reverseButtons;

  factory _$DialogState([void Function(DialogStateBuilder)? updates]) =>
      (new DialogStateBuilder()..update(updates))._build();

  _$DialogState._(
      {required this.title,
      required this.description,
      this.positive,
      this.positiveTitle,
      this.negative,
      this.negativeTitle,
      required this.reverseButtons})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, r'DialogState', 'title');
    BuiltValueNullFieldError.checkNotNull(
        description, r'DialogState', 'description');
    BuiltValueNullFieldError.checkNotNull(
        reverseButtons, r'DialogState', 'reverseButtons');
  }

  @override
  DialogState rebuild(void Function(DialogStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DialogStateBuilder toBuilder() => new DialogStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DialogState &&
        title == other.title &&
        description == other.description &&
        positive == other.positive &&
        positiveTitle == other.positiveTitle &&
        negative == other.negative &&
        negativeTitle == other.negativeTitle &&
        reverseButtons == other.reverseButtons;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, positive.hashCode);
    _$hash = $jc(_$hash, positiveTitle.hashCode);
    _$hash = $jc(_$hash, negative.hashCode);
    _$hash = $jc(_$hash, negativeTitle.hashCode);
    _$hash = $jc(_$hash, reverseButtons.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DialogState')
          ..add('title', title)
          ..add('description', description)
          ..add('positive', positive)
          ..add('positiveTitle', positiveTitle)
          ..add('negative', negative)
          ..add('negativeTitle', negativeTitle)
          ..add('reverseButtons', reverseButtons))
        .toString();
  }
}

class DialogStateBuilder implements Builder<DialogState, DialogStateBuilder> {
  _$DialogState? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  FunctionHolder? _positive;
  FunctionHolder? get positive => _$this._positive;
  set positive(FunctionHolder? positive) => _$this._positive = positive;

  String? _positiveTitle;
  String? get positiveTitle => _$this._positiveTitle;
  set positiveTitle(String? positiveTitle) =>
      _$this._positiveTitle = positiveTitle;

  FunctionHolder? _negative;
  FunctionHolder? get negative => _$this._negative;
  set negative(FunctionHolder? negative) => _$this._negative = negative;

  String? _negativeTitle;
  String? get negativeTitle => _$this._negativeTitle;
  set negativeTitle(String? negativeTitle) =>
      _$this._negativeTitle = negativeTitle;

  bool? _reverseButtons;
  bool? get reverseButtons => _$this._reverseButtons;
  set reverseButtons(bool? reverseButtons) =>
      _$this._reverseButtons = reverseButtons;

  DialogStateBuilder();

  DialogStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _positive = $v.positive;
      _positiveTitle = $v.positiveTitle;
      _negative = $v.negative;
      _negativeTitle = $v.negativeTitle;
      _reverseButtons = $v.reverseButtons;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DialogState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DialogState;
  }

  @override
  void update(void Function(DialogStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DialogState build() => _build();

  _$DialogState _build() {
    final _$result = _$v ??
        new _$DialogState._(
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'DialogState', 'title'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'DialogState', 'description'),
            positive: positive,
            positiveTitle: positiveTitle,
            negative: negative,
            negativeTitle: negativeTitle,
            reverseButtons: BuiltValueNullFieldError.checkNotNull(
                reverseButtons, r'DialogState', 'reverseButtons'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
