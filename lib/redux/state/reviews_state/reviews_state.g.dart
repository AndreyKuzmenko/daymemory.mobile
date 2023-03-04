// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReviewsState extends ReviewsState {
  @override
  final List<ReviewCategoryDto> items;
  @override
  final bool isLoading;

  factory _$ReviewsState([void Function(ReviewsStateBuilder)? updates]) =>
      (new ReviewsStateBuilder()..update(updates))._build();

  _$ReviewsState._({required this.items, required this.isLoading}) : super._() {
    BuiltValueNullFieldError.checkNotNull(items, r'ReviewsState', 'items');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'ReviewsState', 'isLoading');
  }

  @override
  ReviewsState rebuild(void Function(ReviewsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewsStateBuilder toBuilder() => new ReviewsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReviewsState &&
        items == other.items &&
        isLoading == other.isLoading;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReviewsState')
          ..add('items', items)
          ..add('isLoading', isLoading))
        .toString();
  }
}

class ReviewsStateBuilder
    implements Builder<ReviewsState, ReviewsStateBuilder> {
  _$ReviewsState? _$v;

  List<ReviewCategoryDto>? _items;
  List<ReviewCategoryDto>? get items => _$this._items;
  set items(List<ReviewCategoryDto>? items) => _$this._items = items;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  ReviewsStateBuilder();

  ReviewsStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items;
      _isLoading = $v.isLoading;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReviewsState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReviewsState;
  }

  @override
  void update(void Function(ReviewsStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReviewsState build() => _build();

  _$ReviewsState _build() {
    final _$result = _$v ??
        new _$ReviewsState._(
            items: BuiltValueNullFieldError.checkNotNull(
                items, r'ReviewsState', 'items'),
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, r'ReviewsState', 'isLoading'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
