// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tabs_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TabsViewModel extends TabsViewModel {
  @override
  final TypedFunctionHolder<int> tabSelectCommand;
  @override
  final int selectedTabIndex;
  @override
  final String tabTimeline;
  @override
  final String tabQuestions;
  @override
  final bool isActiveTabClicked;

  factory _$TabsViewModel([void Function(TabsViewModelBuilder)? updates]) =>
      (new TabsViewModelBuilder()..update(updates))._build();

  _$TabsViewModel._(
      {required this.tabSelectCommand,
      required this.selectedTabIndex,
      required this.tabTimeline,
      required this.tabQuestions,
      required this.isActiveTabClicked})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tabSelectCommand, r'TabsViewModel', 'tabSelectCommand');
    BuiltValueNullFieldError.checkNotNull(
        selectedTabIndex, r'TabsViewModel', 'selectedTabIndex');
    BuiltValueNullFieldError.checkNotNull(
        tabTimeline, r'TabsViewModel', 'tabTimeline');
    BuiltValueNullFieldError.checkNotNull(
        tabQuestions, r'TabsViewModel', 'tabQuestions');
    BuiltValueNullFieldError.checkNotNull(
        isActiveTabClicked, r'TabsViewModel', 'isActiveTabClicked');
  }

  @override
  TabsViewModel rebuild(void Function(TabsViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TabsViewModelBuilder toBuilder() => new TabsViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TabsViewModel &&
        tabSelectCommand == other.tabSelectCommand &&
        selectedTabIndex == other.selectedTabIndex &&
        tabTimeline == other.tabTimeline &&
        tabQuestions == other.tabQuestions &&
        isActiveTabClicked == other.isActiveTabClicked;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tabSelectCommand.hashCode);
    _$hash = $jc(_$hash, selectedTabIndex.hashCode);
    _$hash = $jc(_$hash, tabTimeline.hashCode);
    _$hash = $jc(_$hash, tabQuestions.hashCode);
    _$hash = $jc(_$hash, isActiveTabClicked.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TabsViewModel')
          ..add('tabSelectCommand', tabSelectCommand)
          ..add('selectedTabIndex', selectedTabIndex)
          ..add('tabTimeline', tabTimeline)
          ..add('tabQuestions', tabQuestions)
          ..add('isActiveTabClicked', isActiveTabClicked))
        .toString();
  }
}

class TabsViewModelBuilder
    implements Builder<TabsViewModel, TabsViewModelBuilder> {
  _$TabsViewModel? _$v;

  TypedFunctionHolder<int>? _tabSelectCommand;
  TypedFunctionHolder<int>? get tabSelectCommand => _$this._tabSelectCommand;
  set tabSelectCommand(TypedFunctionHolder<int>? tabSelectCommand) =>
      _$this._tabSelectCommand = tabSelectCommand;

  int? _selectedTabIndex;
  int? get selectedTabIndex => _$this._selectedTabIndex;
  set selectedTabIndex(int? selectedTabIndex) =>
      _$this._selectedTabIndex = selectedTabIndex;

  String? _tabTimeline;
  String? get tabTimeline => _$this._tabTimeline;
  set tabTimeline(String? tabTimeline) => _$this._tabTimeline = tabTimeline;

  String? _tabQuestions;
  String? get tabQuestions => _$this._tabQuestions;
  set tabQuestions(String? tabQuestions) => _$this._tabQuestions = tabQuestions;

  bool? _isActiveTabClicked;
  bool? get isActiveTabClicked => _$this._isActiveTabClicked;
  set isActiveTabClicked(bool? isActiveTabClicked) =>
      _$this._isActiveTabClicked = isActiveTabClicked;

  TabsViewModelBuilder();

  TabsViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tabSelectCommand = $v.tabSelectCommand;
      _selectedTabIndex = $v.selectedTabIndex;
      _tabTimeline = $v.tabTimeline;
      _tabQuestions = $v.tabQuestions;
      _isActiveTabClicked = $v.isActiveTabClicked;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TabsViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TabsViewModel;
  }

  @override
  void update(void Function(TabsViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TabsViewModel build() => _build();

  _$TabsViewModel _build() {
    final _$result = _$v ??
        new _$TabsViewModel._(
            tabSelectCommand: BuiltValueNullFieldError.checkNotNull(
                tabSelectCommand, r'TabsViewModel', 'tabSelectCommand'),
            selectedTabIndex: BuiltValueNullFieldError.checkNotNull(
                selectedTabIndex, r'TabsViewModel', 'selectedTabIndex'),
            tabTimeline: BuiltValueNullFieldError.checkNotNull(
                tabTimeline, r'TabsViewModel', 'tabTimeline'),
            tabQuestions: BuiltValueNullFieldError.checkNotNull(
                tabQuestions, r'TabsViewModel', 'tabQuestions'),
            isActiveTabClicked: BuiltValueNullFieldError.checkNotNull(
                isActiveTabClicked, r'TabsViewModel', 'isActiveTabClicked'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
