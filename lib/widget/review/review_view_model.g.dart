// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReviewViewModel extends ReviewViewModel {
  @override
  final bool isLoading;
  @override
  final String title;
  @override
  final String loadingTitle;
  @override
  final String noItems;
  @override
  final List<ReviewCategoryViewModel> items;
  @override
  final bool showDrawerMenu;

  factory _$ReviewViewModel([void Function(ReviewViewModelBuilder)? updates]) =>
      (new ReviewViewModelBuilder()..update(updates))._build();

  _$ReviewViewModel._(
      {required this.isLoading,
      required this.title,
      required this.loadingTitle,
      required this.noItems,
      required this.items,
      required this.showDrawerMenu})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'ReviewViewModel', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(title, r'ReviewViewModel', 'title');
    BuiltValueNullFieldError.checkNotNull(
        loadingTitle, r'ReviewViewModel', 'loadingTitle');
    BuiltValueNullFieldError.checkNotNull(
        noItems, r'ReviewViewModel', 'noItems');
    BuiltValueNullFieldError.checkNotNull(items, r'ReviewViewModel', 'items');
    BuiltValueNullFieldError.checkNotNull(
        showDrawerMenu, r'ReviewViewModel', 'showDrawerMenu');
  }

  @override
  ReviewViewModel rebuild(void Function(ReviewViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewViewModelBuilder toBuilder() =>
      new ReviewViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReviewViewModel &&
        isLoading == other.isLoading &&
        title == other.title &&
        loadingTitle == other.loadingTitle &&
        noItems == other.noItems &&
        items == other.items &&
        showDrawerMenu == other.showDrawerMenu;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, loadingTitle.hashCode);
    _$hash = $jc(_$hash, noItems.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, showDrawerMenu.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReviewViewModel')
          ..add('isLoading', isLoading)
          ..add('title', title)
          ..add('loadingTitle', loadingTitle)
          ..add('noItems', noItems)
          ..add('items', items)
          ..add('showDrawerMenu', showDrawerMenu))
        .toString();
  }
}

class ReviewViewModelBuilder
    implements Builder<ReviewViewModel, ReviewViewModelBuilder> {
  _$ReviewViewModel? _$v;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _loadingTitle;
  String? get loadingTitle => _$this._loadingTitle;
  set loadingTitle(String? loadingTitle) => _$this._loadingTitle = loadingTitle;

  String? _noItems;
  String? get noItems => _$this._noItems;
  set noItems(String? noItems) => _$this._noItems = noItems;

  List<ReviewCategoryViewModel>? _items;
  List<ReviewCategoryViewModel>? get items => _$this._items;
  set items(List<ReviewCategoryViewModel>? items) => _$this._items = items;

  bool? _showDrawerMenu;
  bool? get showDrawerMenu => _$this._showDrawerMenu;
  set showDrawerMenu(bool? showDrawerMenu) =>
      _$this._showDrawerMenu = showDrawerMenu;

  ReviewViewModelBuilder();

  ReviewViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isLoading = $v.isLoading;
      _title = $v.title;
      _loadingTitle = $v.loadingTitle;
      _noItems = $v.noItems;
      _items = $v.items;
      _showDrawerMenu = $v.showDrawerMenu;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReviewViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReviewViewModel;
  }

  @override
  void update(void Function(ReviewViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReviewViewModel build() => _build();

  _$ReviewViewModel _build() {
    final _$result = _$v ??
        new _$ReviewViewModel._(
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, r'ReviewViewModel', 'isLoading'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'ReviewViewModel', 'title'),
            loadingTitle: BuiltValueNullFieldError.checkNotNull(
                loadingTitle, r'ReviewViewModel', 'loadingTitle'),
            noItems: BuiltValueNullFieldError.checkNotNull(
                noItems, r'ReviewViewModel', 'noItems'),
            items: BuiltValueNullFieldError.checkNotNull(
                items, r'ReviewViewModel', 'items'),
            showDrawerMenu: BuiltValueNullFieldError.checkNotNull(
                showDrawerMenu, r'ReviewViewModel', 'showDrawerMenu'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
