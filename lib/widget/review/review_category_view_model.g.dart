// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_category_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReviewCategoryViewModel extends ReviewCategoryViewModel {
  @override
  final String id;
  @override
  final String title;
  @override
  final List<NoteViewModel> notes;

  factory _$ReviewCategoryViewModel(
          [void Function(ReviewCategoryViewModelBuilder)? updates]) =>
      (new ReviewCategoryViewModelBuilder()..update(updates))._build();

  _$ReviewCategoryViewModel._(
      {required this.id, required this.title, required this.notes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'ReviewCategoryViewModel', 'id');
    BuiltValueNullFieldError.checkNotNull(
        title, r'ReviewCategoryViewModel', 'title');
    BuiltValueNullFieldError.checkNotNull(
        notes, r'ReviewCategoryViewModel', 'notes');
  }

  @override
  ReviewCategoryViewModel rebuild(
          void Function(ReviewCategoryViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewCategoryViewModelBuilder toBuilder() =>
      new ReviewCategoryViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReviewCategoryViewModel &&
        id == other.id &&
        title == other.title &&
        notes == other.notes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReviewCategoryViewModel')
          ..add('id', id)
          ..add('title', title)
          ..add('notes', notes))
        .toString();
  }
}

class ReviewCategoryViewModelBuilder
    implements
        Builder<ReviewCategoryViewModel, ReviewCategoryViewModelBuilder> {
  _$ReviewCategoryViewModel? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  List<NoteViewModel>? _notes;
  List<NoteViewModel>? get notes => _$this._notes;
  set notes(List<NoteViewModel>? notes) => _$this._notes = notes;

  ReviewCategoryViewModelBuilder();

  ReviewCategoryViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _notes = $v.notes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReviewCategoryViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReviewCategoryViewModel;
  }

  @override
  void update(void Function(ReviewCategoryViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReviewCategoryViewModel build() => _build();

  _$ReviewCategoryViewModel _build() {
    final _$result = _$v ??
        new _$ReviewCategoryViewModel._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ReviewCategoryViewModel', 'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'ReviewCategoryViewModel', 'title'),
            notes: BuiltValueNullFieldError.checkNotNull(
                notes, r'ReviewCategoryViewModel', 'notes'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
