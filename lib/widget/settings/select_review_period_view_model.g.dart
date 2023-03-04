// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_review_period_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SelectReviewPeriodViewModel extends SelectReviewPeriodViewModel {
  @override
  final String title;
  @override
  final StorageReviewSettings reviewSettings;
  @override
  final String sevenDaysOptionTitle;
  @override
  final String tenDaysOptionTitle;
  @override
  final String oneMonthOptionTitle;
  @override
  final String threeMonthsOptionTitle;
  @override
  final String sixMonthsOptionTitle;
  @override
  final String yearlyOptionTitle;
  @override
  final FunctionHolder? backCommand;
  @override
  final TypedFunctionHolder<ReviewPeriodStatusDto> periodSelectorCommand;

  factory _$SelectReviewPeriodViewModel(
          [void Function(SelectReviewPeriodViewModelBuilder)? updates]) =>
      (new SelectReviewPeriodViewModelBuilder()..update(updates))._build();

  _$SelectReviewPeriodViewModel._(
      {required this.title,
      required this.reviewSettings,
      required this.sevenDaysOptionTitle,
      required this.tenDaysOptionTitle,
      required this.oneMonthOptionTitle,
      required this.threeMonthsOptionTitle,
      required this.sixMonthsOptionTitle,
      required this.yearlyOptionTitle,
      this.backCommand,
      required this.periodSelectorCommand})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        title, r'SelectReviewPeriodViewModel', 'title');
    BuiltValueNullFieldError.checkNotNull(
        reviewSettings, r'SelectReviewPeriodViewModel', 'reviewSettings');
    BuiltValueNullFieldError.checkNotNull(sevenDaysOptionTitle,
        r'SelectReviewPeriodViewModel', 'sevenDaysOptionTitle');
    BuiltValueNullFieldError.checkNotNull(tenDaysOptionTitle,
        r'SelectReviewPeriodViewModel', 'tenDaysOptionTitle');
    BuiltValueNullFieldError.checkNotNull(oneMonthOptionTitle,
        r'SelectReviewPeriodViewModel', 'oneMonthOptionTitle');
    BuiltValueNullFieldError.checkNotNull(threeMonthsOptionTitle,
        r'SelectReviewPeriodViewModel', 'threeMonthsOptionTitle');
    BuiltValueNullFieldError.checkNotNull(sixMonthsOptionTitle,
        r'SelectReviewPeriodViewModel', 'sixMonthsOptionTitle');
    BuiltValueNullFieldError.checkNotNull(
        yearlyOptionTitle, r'SelectReviewPeriodViewModel', 'yearlyOptionTitle');
    BuiltValueNullFieldError.checkNotNull(periodSelectorCommand,
        r'SelectReviewPeriodViewModel', 'periodSelectorCommand');
  }

  @override
  SelectReviewPeriodViewModel rebuild(
          void Function(SelectReviewPeriodViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SelectReviewPeriodViewModelBuilder toBuilder() =>
      new SelectReviewPeriodViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SelectReviewPeriodViewModel &&
        title == other.title &&
        reviewSettings == other.reviewSettings &&
        sevenDaysOptionTitle == other.sevenDaysOptionTitle &&
        tenDaysOptionTitle == other.tenDaysOptionTitle &&
        oneMonthOptionTitle == other.oneMonthOptionTitle &&
        threeMonthsOptionTitle == other.threeMonthsOptionTitle &&
        sixMonthsOptionTitle == other.sixMonthsOptionTitle &&
        yearlyOptionTitle == other.yearlyOptionTitle &&
        backCommand == other.backCommand &&
        periodSelectorCommand == other.periodSelectorCommand;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, reviewSettings.hashCode);
    _$hash = $jc(_$hash, sevenDaysOptionTitle.hashCode);
    _$hash = $jc(_$hash, tenDaysOptionTitle.hashCode);
    _$hash = $jc(_$hash, oneMonthOptionTitle.hashCode);
    _$hash = $jc(_$hash, threeMonthsOptionTitle.hashCode);
    _$hash = $jc(_$hash, sixMonthsOptionTitle.hashCode);
    _$hash = $jc(_$hash, yearlyOptionTitle.hashCode);
    _$hash = $jc(_$hash, backCommand.hashCode);
    _$hash = $jc(_$hash, periodSelectorCommand.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SelectReviewPeriodViewModel')
          ..add('title', title)
          ..add('reviewSettings', reviewSettings)
          ..add('sevenDaysOptionTitle', sevenDaysOptionTitle)
          ..add('tenDaysOptionTitle', tenDaysOptionTitle)
          ..add('oneMonthOptionTitle', oneMonthOptionTitle)
          ..add('threeMonthsOptionTitle', threeMonthsOptionTitle)
          ..add('sixMonthsOptionTitle', sixMonthsOptionTitle)
          ..add('yearlyOptionTitle', yearlyOptionTitle)
          ..add('backCommand', backCommand)
          ..add('periodSelectorCommand', periodSelectorCommand))
        .toString();
  }
}

class SelectReviewPeriodViewModelBuilder
    implements
        Builder<SelectReviewPeriodViewModel,
            SelectReviewPeriodViewModelBuilder> {
  _$SelectReviewPeriodViewModel? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  StorageReviewSettings? _reviewSettings;
  StorageReviewSettings? get reviewSettings => _$this._reviewSettings;
  set reviewSettings(StorageReviewSettings? reviewSettings) =>
      _$this._reviewSettings = reviewSettings;

  String? _sevenDaysOptionTitle;
  String? get sevenDaysOptionTitle => _$this._sevenDaysOptionTitle;
  set sevenDaysOptionTitle(String? sevenDaysOptionTitle) =>
      _$this._sevenDaysOptionTitle = sevenDaysOptionTitle;

  String? _tenDaysOptionTitle;
  String? get tenDaysOptionTitle => _$this._tenDaysOptionTitle;
  set tenDaysOptionTitle(String? tenDaysOptionTitle) =>
      _$this._tenDaysOptionTitle = tenDaysOptionTitle;

  String? _oneMonthOptionTitle;
  String? get oneMonthOptionTitle => _$this._oneMonthOptionTitle;
  set oneMonthOptionTitle(String? oneMonthOptionTitle) =>
      _$this._oneMonthOptionTitle = oneMonthOptionTitle;

  String? _threeMonthsOptionTitle;
  String? get threeMonthsOptionTitle => _$this._threeMonthsOptionTitle;
  set threeMonthsOptionTitle(String? threeMonthsOptionTitle) =>
      _$this._threeMonthsOptionTitle = threeMonthsOptionTitle;

  String? _sixMonthsOptionTitle;
  String? get sixMonthsOptionTitle => _$this._sixMonthsOptionTitle;
  set sixMonthsOptionTitle(String? sixMonthsOptionTitle) =>
      _$this._sixMonthsOptionTitle = sixMonthsOptionTitle;

  String? _yearlyOptionTitle;
  String? get yearlyOptionTitle => _$this._yearlyOptionTitle;
  set yearlyOptionTitle(String? yearlyOptionTitle) =>
      _$this._yearlyOptionTitle = yearlyOptionTitle;

  FunctionHolder? _backCommand;
  FunctionHolder? get backCommand => _$this._backCommand;
  set backCommand(FunctionHolder? backCommand) =>
      _$this._backCommand = backCommand;

  TypedFunctionHolder<ReviewPeriodStatusDto>? _periodSelectorCommand;
  TypedFunctionHolder<ReviewPeriodStatusDto>? get periodSelectorCommand =>
      _$this._periodSelectorCommand;
  set periodSelectorCommand(
          TypedFunctionHolder<ReviewPeriodStatusDto>? periodSelectorCommand) =>
      _$this._periodSelectorCommand = periodSelectorCommand;

  SelectReviewPeriodViewModelBuilder();

  SelectReviewPeriodViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _reviewSettings = $v.reviewSettings;
      _sevenDaysOptionTitle = $v.sevenDaysOptionTitle;
      _tenDaysOptionTitle = $v.tenDaysOptionTitle;
      _oneMonthOptionTitle = $v.oneMonthOptionTitle;
      _threeMonthsOptionTitle = $v.threeMonthsOptionTitle;
      _sixMonthsOptionTitle = $v.sixMonthsOptionTitle;
      _yearlyOptionTitle = $v.yearlyOptionTitle;
      _backCommand = $v.backCommand;
      _periodSelectorCommand = $v.periodSelectorCommand;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelectReviewPeriodViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SelectReviewPeriodViewModel;
  }

  @override
  void update(void Function(SelectReviewPeriodViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SelectReviewPeriodViewModel build() => _build();

  _$SelectReviewPeriodViewModel _build() {
    final _$result = _$v ??
        new _$SelectReviewPeriodViewModel._(
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'SelectReviewPeriodViewModel', 'title'),
            reviewSettings: BuiltValueNullFieldError.checkNotNull(
                reviewSettings, r'SelectReviewPeriodViewModel', 'reviewSettings'),
            sevenDaysOptionTitle: BuiltValueNullFieldError.checkNotNull(
                sevenDaysOptionTitle, r'SelectReviewPeriodViewModel', 'sevenDaysOptionTitle'),
            tenDaysOptionTitle: BuiltValueNullFieldError.checkNotNull(
                tenDaysOptionTitle, r'SelectReviewPeriodViewModel', 'tenDaysOptionTitle'),
            oneMonthOptionTitle: BuiltValueNullFieldError.checkNotNull(
                oneMonthOptionTitle, r'SelectReviewPeriodViewModel', 'oneMonthOptionTitle'),
            threeMonthsOptionTitle: BuiltValueNullFieldError.checkNotNull(
                threeMonthsOptionTitle, r'SelectReviewPeriodViewModel', 'threeMonthsOptionTitle'),
            sixMonthsOptionTitle: BuiltValueNullFieldError.checkNotNull(
                sixMonthsOptionTitle, r'SelectReviewPeriodViewModel', 'sixMonthsOptionTitle'),
            yearlyOptionTitle: BuiltValueNullFieldError.checkNotNull(yearlyOptionTitle, r'SelectReviewPeriodViewModel', 'yearlyOptionTitle'),
            backCommand: backCommand,
            periodSelectorCommand: BuiltValueNullFieldError.checkNotNull(periodSelectorCommand, r'SelectReviewPeriodViewModel', 'periodSelectorCommand'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
