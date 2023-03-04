// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_field_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TagFieldViewModel extends TagFieldViewModel {
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

  factory _$TagFieldViewModel(
          [void Function(TagFieldViewModelBuilder)? updates]) =>
      (new TagFieldViewModelBuilder()..update(updates))._build();

  _$TagFieldViewModel._(
      {required this.fieldId,
      required this.text,
      required this.placeholder,
      this.deleteCommand,
      required this.textChangedCommand})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        fieldId, r'TagFieldViewModel', 'fieldId');
    BuiltValueNullFieldError.checkNotNull(text, r'TagFieldViewModel', 'text');
    BuiltValueNullFieldError.checkNotNull(
        placeholder, r'TagFieldViewModel', 'placeholder');
    BuiltValueNullFieldError.checkNotNull(
        textChangedCommand, r'TagFieldViewModel', 'textChangedCommand');
  }

  @override
  TagFieldViewModel rebuild(void Function(TagFieldViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagFieldViewModelBuilder toBuilder() =>
      new TagFieldViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TagFieldViewModel &&
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
    return (newBuiltValueToStringHelper(r'TagFieldViewModel')
          ..add('fieldId', fieldId)
          ..add('text', text)
          ..add('placeholder', placeholder)
          ..add('deleteCommand', deleteCommand)
          ..add('textChangedCommand', textChangedCommand))
        .toString();
  }
}

class TagFieldViewModelBuilder
    implements Builder<TagFieldViewModel, TagFieldViewModelBuilder> {
  _$TagFieldViewModel? _$v;

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

  TagFieldViewModelBuilder();

  TagFieldViewModelBuilder get _$this {
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
  void replace(TagFieldViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TagFieldViewModel;
  }

  @override
  void update(void Function(TagFieldViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TagFieldViewModel build() => _build();

  _$TagFieldViewModel _build() {
    final _$result = _$v ??
        new _$TagFieldViewModel._(
            fieldId: BuiltValueNullFieldError.checkNotNull(
                fieldId, r'TagFieldViewModel', 'fieldId'),
            text: BuiltValueNullFieldError.checkNotNull(
                text, r'TagFieldViewModel', 'text'),
            placeholder: BuiltValueNullFieldError.checkNotNull(
                placeholder, r'TagFieldViewModel', 'placeholder'),
            deleteCommand: deleteCommand,
            textChangedCommand: BuiltValueNullFieldError.checkNotNull(
                textChangedCommand,
                r'TagFieldViewModel',
                'textChangedCommand'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
