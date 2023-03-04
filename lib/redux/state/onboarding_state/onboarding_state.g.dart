// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OnBoardingState extends OnBoardingState {
  @override
  final int currentPage;

  factory _$OnBoardingState([void Function(OnBoardingStateBuilder)? updates]) =>
      (new OnBoardingStateBuilder()..update(updates))._build();

  _$OnBoardingState._({required this.currentPage}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        currentPage, r'OnBoardingState', 'currentPage');
  }

  @override
  OnBoardingState rebuild(void Function(OnBoardingStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OnBoardingStateBuilder toBuilder() =>
      new OnBoardingStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OnBoardingState && currentPage == other.currentPage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currentPage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OnBoardingState')
          ..add('currentPage', currentPage))
        .toString();
  }
}

class OnBoardingStateBuilder
    implements Builder<OnBoardingState, OnBoardingStateBuilder> {
  _$OnBoardingState? _$v;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  OnBoardingStateBuilder();

  OnBoardingStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currentPage = $v.currentPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OnBoardingState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OnBoardingState;
  }

  @override
  void update(void Function(OnBoardingStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OnBoardingState build() => _build();

  _$OnBoardingState _build() {
    final _$result = _$v ??
        new _$OnBoardingState._(
            currentPage: BuiltValueNullFieldError.checkNotNull(
                currentPage, r'OnBoardingState', 'currentPage'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
