// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_field_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuestionFieldViewModel extends QuestionFieldViewModel {
  @override
  final String fieldId;
  @override
  final String text;
  @override
  final String placeholder;
  @override
  final FunctionHolder? deleteCommand;
  @override
  final TypedFunctionHolder<String> textChangedCommand;

  factory _$QuestionFieldViewModel(
          [void Function(QuestionFieldViewModelBuilder)? updates]) =>
      (new QuestionFieldViewModelBuilder()..update(updates))._build();

  _$QuestionFieldViewModel._(
      {required this.fieldId,
      required this.text,
      required this.placeholder,
      this.deleteCommand,
      required this.textChangedCommand})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        fieldId, r'QuestionFieldViewModel', 'fieldId');
    BuiltValueNullFieldError.checkNotNull(
        text, r'QuestionFieldViewModel', 'text');
    BuiltValueNullFieldError.checkNotNull(
        placeholder, r'QuestionFieldViewModel', 'placeholder');
    BuiltValueNullFieldError.checkNotNull(
        textChangedCommand, r'QuestionFieldViewModel', 'textChangedCommand');
  }

  @override
  QuestionFieldViewModel rebuild(
          void Function(QuestionFieldViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionFieldViewModelBuilder toBuilder() =>
      new QuestionFieldViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionFieldViewModel &&
        fieldId == other.fieldId &&
        text == other.text &&
        placeholder == other.placeholder &&
        deleteCommand == other.deleteCommand &&
        textChangedCommand == other.textChangedCommand;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fieldId.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, placeholder.hashCode);
    _$hash = $jc(_$hash, deleteCommand.hashCode);
    _$hash = $jc(_$hash, textChangedCommand.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuestionFieldViewModel')
          ..add('fieldId', fieldId)
          ..add('text', text)
          ..add('placeholder', placeholder)
          ..add('deleteCommand', deleteCommand)
          ..add('textChangedCommand', textChangedCommand))
        .toString();
  }
}

class QuestionFieldViewModelBuilder
    implements Builder<QuestionFieldViewModel, QuestionFieldViewModelBuilder> {
  _$QuestionFieldViewModel? _$v;

  String? _fieldId;
  String? get fieldId => _$this._fieldId;
  set fieldId(String? fieldId) => _$this._fieldId = fieldId;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  String? _placeholder;
  String? get placeholder => _$this._placeholder;
  set placeholder(String? placeholder) => _$this._placeholder = placeholder;

  FunctionHolder? _deleteCommand;
  FunctionHolder? get deleteCommand => _$this._deleteCommand;
  set deleteCommand(FunctionHolder? deleteCommand) =>
      _$this._deleteCommand = deleteCommand;

  TypedFunctionHolder<String>? _textChangedCommand;
  TypedFunctionHolder<String>? get textChangedCommand =>
      _$this._textChangedCommand;
  set textChangedCommand(TypedFunctionHolder<String>? textChangedCommand) =>
      _$this._textChangedCommand = textChangedCommand;

  QuestionFieldViewModelBuilder();

  QuestionFieldViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fieldId = $v.fieldId;
      _text = $v.text;
      _placeholder = $v.placeholder;
      _deleteCommand = $v.deleteCommand;
      _textChangedCommand = $v.textChangedCommand;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuestionFieldViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuestionFieldViewModel;
  }

  @override
  void update(void Function(QuestionFieldViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuestionFieldViewModel build() => _build();

  _$QuestionFieldViewModel _build() {
    final _$result = _$v ??
        new _$QuestionFieldViewModel._(
            fieldId: BuiltValueNullFieldError.checkNotNull(
                fieldId, r'QuestionFieldViewModel', 'fieldId'),
            text: BuiltValueNullFieldError.checkNotNull(
                text, r'QuestionFieldViewModel', 'text'),
            placeholder: BuiltValueNullFieldError.checkNotNull(
                placeholder, r'QuestionFieldViewModel', 'placeholder'),
            deleteCommand: deleteCommand,
            textChangedCommand: BuiltValueNullFieldError.checkNotNull(
                textChangedCommand,
                r'QuestionFieldViewModel',
                'textChangedCommand'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
