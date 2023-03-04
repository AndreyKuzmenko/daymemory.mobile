// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OnboardingViewModel extends OnboardingViewModel {
  @override
  final BuiltList<String> items;
  @override
  final BuiltList<String> titles;
  @override
  final BuiltList<String> subtitles;
  @override
  final int currentPage;
  @override
  final bool isLastPage;
  @override
  final String skipTitle;
  @override
  final String getStartedTitle;
  @override
  final String nextTitle;
  @override
  final TypedFunctionHolder<int> nextPageCommand;
  @override
  final FunctionHolder getStartedCommand;
  @override
  final FunctionHolder skipCommand;

  factory _$OnboardingViewModel(
          [void Function(OnboardingViewModelBuilder)? updates]) =>
      (new OnboardingViewModelBuilder()..update(updates))._build();

  _$OnboardingViewModel._(
      {required this.items,
      required this.titles,
      required this.subtitles,
      required this.currentPage,
      required this.isLastPage,
      required this.skipTitle,
      required this.getStartedTitle,
      required this.nextTitle,
      required this.nextPageCommand,
      required this.getStartedCommand,
      required this.skipCommand})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        items, r'OnboardingViewModel', 'items');
    BuiltValueNullFieldError.checkNotNull(
        titles, r'OnboardingViewModel', 'titles');
    BuiltValueNullFieldError.checkNotNull(
        subtitles, r'OnboardingViewModel', 'subtitles');
    BuiltValueNullFieldError.checkNotNull(
        currentPage, r'OnboardingViewModel', 'currentPage');
    BuiltValueNullFieldError.checkNotNull(
        isLastPage, r'OnboardingViewModel', 'isLastPage');
    BuiltValueNullFieldError.checkNotNull(
        skipTitle, r'OnboardingViewModel', 'skipTitle');
    BuiltValueNullFieldError.checkNotNull(
        getStartedTitle, r'OnboardingViewModel', 'getStartedTitle');
    BuiltValueNullFieldError.checkNotNull(
        nextTitle, r'OnboardingViewModel', 'nextTitle');
    BuiltValueNullFieldError.checkNotNull(
        nextPageCommand, r'OnboardingViewModel', 'nextPageCommand');
    BuiltValueNullFieldError.checkNotNull(
        getStartedCommand, r'OnboardingViewModel', 'getStartedCommand');
    BuiltValueNullFieldError.checkNotNull(
        skipCommand, r'OnboardingViewModel', 'skipCommand');
  }

  @override
  OnboardingViewModel rebuild(
          void Function(OnboardingViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OnboardingViewModelBuilder toBuilder() =>
      new OnboardingViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OnboardingViewModel &&
        items == other.items &&
        titles == other.titles &&
        subtitles == other.subtitles &&
        currentPage == other.currentPage &&
        isLastPage == other.isLastPage &&
        skipTitle == other.skipTitle &&
        getStartedTitle == other.getStartedTitle &&
        nextTitle == other.nextTitle &&
        nextPageCommand == other.nextPageCommand &&
        getStartedCommand == other.getStartedCommand &&
        skipCommand == other.skipCommand;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, titles.hashCode);
    _$hash = $jc(_$hash, subtitles.hashCode);
    _$hash = $jc(_$hash, currentPage.hashCode);
    _$hash = $jc(_$hash, isLastPage.hashCode);
    _$hash = $jc(_$hash, skipTitle.hashCode);
    _$hash = $jc(_$hash, getStartedTitle.hashCode);
    _$hash = $jc(_$hash, nextTitle.hashCode);
    _$hash = $jc(_$hash, nextPageCommand.hashCode);
    _$hash = $jc(_$hash, getStartedCommand.hashCode);
    _$hash = $jc(_$hash, skipCommand.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OnboardingViewModel')
          ..add('items', items)
          ..add('titles', titles)
          ..add('subtitles', subtitles)
          ..add('currentPage', currentPage)
          ..add('isLastPage', isLastPage)
          ..add('skipTitle', skipTitle)
          ..add('getStartedTitle', getStartedTitle)
          ..add('nextTitle', nextTitle)
          ..add('nextPageCommand', nextPageCommand)
          ..add('getStartedCommand', getStartedCommand)
          ..add('skipCommand', skipCommand))
        .toString();
  }
}

class OnboardingViewModelBuilder
    implements Builder<OnboardingViewModel, OnboardingViewModelBuilder> {
  _$OnboardingViewModel? _$v;

  ListBuilder<String>? _items;
  ListBuilder<String> get items => _$this._items ??= new ListBuilder<String>();
  set items(ListBuilder<String>? items) => _$this._items = items;

  ListBuilder<String>? _titles;
  ListBuilder<String> get titles =>
      _$this._titles ??= new ListBuilder<String>();
  set titles(ListBuilder<String>? titles) => _$this._titles = titles;

  ListBuilder<String>? _subtitles;
  ListBuilder<String> get subtitles =>
      _$this._subtitles ??= new ListBuilder<String>();
  set subtitles(ListBuilder<String>? subtitles) =>
      _$this._subtitles = subtitles;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  bool? _isLastPage;
  bool? get isLastPage => _$this._isLastPage;
  set isLastPage(bool? isLastPage) => _$this._isLastPage = isLastPage;

  String? _skipTitle;
  String? get skipTitle => _$this._skipTitle;
  set skipTitle(String? skipTitle) => _$this._skipTitle = skipTitle;

  String? _getStartedTitle;
  String? get getStartedTitle => _$this._getStartedTitle;
  set getStartedTitle(String? getStartedTitle) =>
      _$this._getStartedTitle = getStartedTitle;

  String? _nextTitle;
  String? get nextTitle => _$this._nextTitle;
  set nextTitle(String? nextTitle) => _$this._nextTitle = nextTitle;

  TypedFunctionHolder<int>? _nextPageCommand;
  TypedFunctionHolder<int>? get nextPageCommand => _$this._nextPageCommand;
  set nextPageCommand(TypedFunctionHolder<int>? nextPageCommand) =>
      _$this._nextPageCommand = nextPageCommand;

  FunctionHolder? _getStartedCommand;
  FunctionHolder? get getStartedCommand => _$this._getStartedCommand;
  set getStartedCommand(FunctionHolder? getStartedCommand) =>
      _$this._getStartedCommand = getStartedCommand;

  FunctionHolder? _skipCommand;
  FunctionHolder? get skipCommand => _$this._skipCommand;
  set skipCommand(FunctionHolder? skipCommand) =>
      _$this._skipCommand = skipCommand;

  OnboardingViewModelBuilder();

  OnboardingViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _titles = $v.titles.toBuilder();
      _subtitles = $v.subtitles.toBuilder();
      _currentPage = $v.currentPage;
      _isLastPage = $v.isLastPage;
      _skipTitle = $v.skipTitle;
      _getStartedTitle = $v.getStartedTitle;
      _nextTitle = $v.nextTitle;
      _nextPageCommand = $v.nextPageCommand;
      _getStartedCommand = $v.getStartedCommand;
      _skipCommand = $v.skipCommand;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OnboardingViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OnboardingViewModel;
  }

  @override
  void update(void Function(OnboardingViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OnboardingViewModel build() => _build();

  _$OnboardingViewModel _build() {
    _$OnboardingViewModel _$result;
    try {
      _$result = _$v ??
          new _$OnboardingViewModel._(
              items: items.build(),
              titles: titles.build(),
              subtitles: subtitles.build(),
              currentPage: BuiltValueNullFieldError.checkNotNull(
                  currentPage, r'OnboardingViewModel', 'currentPage'),
              isLastPage: BuiltValueNullFieldError.checkNotNull(
                  isLastPage, r'OnboardingViewModel', 'isLastPage'),
              skipTitle: BuiltValueNullFieldError.checkNotNull(
                  skipTitle, r'OnboardingViewModel', 'skipTitle'),
              getStartedTitle: BuiltValueNullFieldError.checkNotNull(
                  getStartedTitle, r'OnboardingViewModel', 'getStartedTitle'),
              nextTitle: BuiltValueNullFieldError.checkNotNull(
                  nextTitle, r'OnboardingViewModel', 'nextTitle'),
              nextPageCommand: BuiltValueNullFieldError.checkNotNull(
                  nextPageCommand, r'OnboardingViewModel', 'nextPageCommand'),
              getStartedCommand: BuiltValueNullFieldError.checkNotNull(
                  getStartedCommand, r'OnboardingViewModel', 'getStartedCommand'),
              skipCommand: BuiltValueNullFieldError.checkNotNull(
                  skipCommand, r'OnboardingViewModel', 'skipCommand'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
        _$failedField = 'titles';
        titles.build();
        _$failedField = 'subtitles';
        subtitles.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OnboardingViewModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
