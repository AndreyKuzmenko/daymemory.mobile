// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_option_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SelectOptionViewModel extends SelectOptionViewModel {
  @override
  final String title;
  @override
  final String selectedOptionId;
  @override
  final String? explanation;
  @override
  final List<OptionViewModel> options;
  @override
  final TypedFunctionHolder<String> optionSelectorCommand;
  @override
  final FunctionHolder backCommand;

  factory _$SelectOptionViewModel(
          [void Function(SelectOptionViewModelBuilder)? updates]) =>
      (new SelectOptionViewModelBuilder()..update(updates))._build();

  _$SelectOptionViewModel._(
      {required this.title,
      required this.selectedOptionId,
      this.explanation,
      required this.options,
      required this.optionSelectorCommand,
      required this.backCommand})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        title, r'SelectOptionViewModel', 'title');
    BuiltValueNullFieldError.checkNotNull(
        selectedOptionId, r'SelectOptionViewModel', 'selectedOptionId');
    BuiltValueNullFieldError.checkNotNull(
        options, r'SelectOptionViewModel', 'options');
    BuiltValueNullFieldError.checkNotNull(optionSelectorCommand,
        r'SelectOptionViewModel', 'optionSelectorCommand');
    BuiltValueNullFieldError.checkNotNull(
        backCommand, r'SelectOptionViewModel', 'backCommand');
  }

  @override
  SelectOptionViewModel rebuild(
          void Function(SelectOptionViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SelectOptionViewModelBuilder toBuilder() =>
      new SelectOptionViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SelectOptionViewModel &&
        title == other.title &&
        selectedOptionId == other.selectedOptionId &&
        explanation == other.explanation &&
        options == other.options &&
        optionSelectorCommand == other.optionSelectorCommand &&
        backCommand == other.backCommand;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, selectedOptionId.hashCode);
    _$hash = $jc(_$hash, explanation.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, optionSelectorCommand.hashCode);
    _$hash = $jc(_$hash, backCommand.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SelectOptionViewModel')
          ..add('title', title)
          ..add('selectedOptionId', selectedOptionId)
          ..add('explanation', explanation)
          ..add('options', options)
          ..add('optionSelectorCommand', optionSelectorCommand)
          ..add('backCommand', backCommand))
        .toString();
  }
}

class SelectOptionViewModelBuilder
    implements Builder<SelectOptionViewModel, SelectOptionViewModelBuilder> {
  _$SelectOptionViewModel? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _selectedOptionId;
  String? get selectedOptionId => _$this._selectedOptionId;
  set selectedOptionId(String? selectedOptionId) =>
      _$this._selectedOptionId = selectedOptionId;

  String? _explanation;
  String? get explanation => _$this._explanation;
  set explanation(String? explanation) => _$this._explanation = explanation;

  List<OptionViewModel>? _options;
  List<OptionViewModel>? get options => _$this._options;
  set options(List<OptionViewModel>? options) => _$this._options = options;

  TypedFunctionHolder<String>? _optionSelectorCommand;
  TypedFunctionHolder<String>? get optionSelectorCommand =>
      _$this._optionSelectorCommand;
  set optionSelectorCommand(
          TypedFunctionHolder<String>? optionSelectorCommand) =>
      _$this._optionSelectorCommand = optionSelectorCommand;

  FunctionHolder? _backCommand;
  FunctionHolder? get backCommand => _$this._backCommand;
  set backCommand(FunctionHolder? backCommand) =>
      _$this._backCommand = backCommand;

  SelectOptionViewModelBuilder();

  SelectOptionViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _selectedOptionId = $v.selectedOptionId;
      _explanation = $v.explanation;
      _options = $v.options;
      _optionSelectorCommand = $v.optionSelectorCommand;
      _backCommand = $v.backCommand;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelectOptionViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SelectOptionViewModel;
  }

  @override
  void update(void Function(SelectOptionViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SelectOptionViewModel build() => _build();

  _$SelectOptionViewModel _build() {
    final _$result = _$v ??
        new _$SelectOptionViewModel._(
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'SelectOptionViewModel', 'title'),
            selectedOptionId: BuiltValueNullFieldError.checkNotNull(
                selectedOptionId, r'SelectOptionViewModel', 'selectedOptionId'),
            explanation: explanation,
            options: BuiltValueNullFieldError.checkNotNull(
                options, r'SelectOptionViewModel', 'options'),
            optionSelectorCommand: BuiltValueNullFieldError.checkNotNull(
                optionSelectorCommand,
                r'SelectOptionViewModel',
                'optionSelectorCommand'),
            backCommand: BuiltValueNullFieldError.checkNotNull(
                backCommand, r'SelectOptionViewModel', 'backCommand'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
