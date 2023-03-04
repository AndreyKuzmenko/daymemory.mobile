// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'root_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RootViewModel extends RootViewModel {
  @override
  final FunctionHolder initialized;
  @override
  final FunctionHolder resumed;
  @override
  final FunctionHolder paused;
  @override
  final TypedFunctionHolder<Size> sizeChanged;
  @override
  final AsyncFunctionHolder<bool> willPopCommand;
  @override
  final bool isPasscodeEnabled;
  @override
  final bool showSideMenu;
  @override
  final Size size;
  @override
  final RouteType routeType;
  @override
  final double fullscreenMinWidth;
  @override
  final double sideMenuWidth;
  @override
  final bool isSideMenuSupported;
  @override
  final bool isAppActive;
  @override
  final DialogViewModel? dialog;
  @override
  final FunctionHolder dialogDismiss;

  factory _$RootViewModel([void Function(RootViewModelBuilder)? updates]) =>
      (new RootViewModelBuilder()..update(updates))._build();

  _$RootViewModel._(
      {required this.initialized,
      required this.resumed,
      required this.paused,
      required this.sizeChanged,
      required this.willPopCommand,
      required this.isPasscodeEnabled,
      required this.showSideMenu,
      required this.size,
      required this.routeType,
      required this.fullscreenMinWidth,
      required this.sideMenuWidth,
      required this.isSideMenuSupported,
      required this.isAppActive,
      this.dialog,
      required this.dialogDismiss})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        initialized, r'RootViewModel', 'initialized');
    BuiltValueNullFieldError.checkNotNull(resumed, r'RootViewModel', 'resumed');
    BuiltValueNullFieldError.checkNotNull(paused, r'RootViewModel', 'paused');
    BuiltValueNullFieldError.checkNotNull(
        sizeChanged, r'RootViewModel', 'sizeChanged');
    BuiltValueNullFieldError.checkNotNull(
        willPopCommand, r'RootViewModel', 'willPopCommand');
    BuiltValueNullFieldError.checkNotNull(
        isPasscodeEnabled, r'RootViewModel', 'isPasscodeEnabled');
    BuiltValueNullFieldError.checkNotNull(
        showSideMenu, r'RootViewModel', 'showSideMenu');
    BuiltValueNullFieldError.checkNotNull(size, r'RootViewModel', 'size');
    BuiltValueNullFieldError.checkNotNull(
        routeType, r'RootViewModel', 'routeType');
    BuiltValueNullFieldError.checkNotNull(
        fullscreenMinWidth, r'RootViewModel', 'fullscreenMinWidth');
    BuiltValueNullFieldError.checkNotNull(
        sideMenuWidth, r'RootViewModel', 'sideMenuWidth');
    BuiltValueNullFieldError.checkNotNull(
        isSideMenuSupported, r'RootViewModel', 'isSideMenuSupported');
    BuiltValueNullFieldError.checkNotNull(
        isAppActive, r'RootViewModel', 'isAppActive');
    BuiltValueNullFieldError.checkNotNull(
        dialogDismiss, r'RootViewModel', 'dialogDismiss');
  }

  @override
  RootViewModel rebuild(void Function(RootViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RootViewModelBuilder toBuilder() => new RootViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RootViewModel &&
        initialized == other.initialized &&
        resumed == other.resumed &&
        paused == other.paused &&
        sizeChanged == other.sizeChanged &&
        willPopCommand == other.willPopCommand &&
        isPasscodeEnabled == other.isPasscodeEnabled &&
        showSideMenu == other.showSideMenu &&
        size == other.size &&
        routeType == other.routeType &&
        fullscreenMinWidth == other.fullscreenMinWidth &&
        sideMenuWidth == other.sideMenuWidth &&
        isSideMenuSupported == other.isSideMenuSupported &&
        isAppActive == other.isAppActive &&
        dialog == other.dialog &&
        dialogDismiss == other.dialogDismiss;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, initialized.hashCode);
    _$hash = $jc(_$hash, resumed.hashCode);
    _$hash = $jc(_$hash, paused.hashCode);
    _$hash = $jc(_$hash, sizeChanged.hashCode);
    _$hash = $jc(_$hash, willPopCommand.hashCode);
    _$hash = $jc(_$hash, isPasscodeEnabled.hashCode);
    _$hash = $jc(_$hash, showSideMenu.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, routeType.hashCode);
    _$hash = $jc(_$hash, fullscreenMinWidth.hashCode);
    _$hash = $jc(_$hash, sideMenuWidth.hashCode);
    _$hash = $jc(_$hash, isSideMenuSupported.hashCode);
    _$hash = $jc(_$hash, isAppActive.hashCode);
    _$hash = $jc(_$hash, dialog.hashCode);
    _$hash = $jc(_$hash, dialogDismiss.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RootViewModel')
          ..add('initialized', initialized)
          ..add('resumed', resumed)
          ..add('paused', paused)
          ..add('sizeChanged', sizeChanged)
          ..add('willPopCommand', willPopCommand)
          ..add('isPasscodeEnabled', isPasscodeEnabled)
          ..add('showSideMenu', showSideMenu)
          ..add('size', size)
          ..add('routeType', routeType)
          ..add('fullscreenMinWidth', fullscreenMinWidth)
          ..add('sideMenuWidth', sideMenuWidth)
          ..add('isSideMenuSupported', isSideMenuSupported)
          ..add('isAppActive', isAppActive)
          ..add('dialog', dialog)
          ..add('dialogDismiss', dialogDismiss))
        .toString();
  }
}

class RootViewModelBuilder
    implements Builder<RootViewModel, RootViewModelBuilder> {
  _$RootViewModel? _$v;

  FunctionHolder? _initialized;
  FunctionHolder? get initialized => _$this._initialized;
  set initialized(FunctionHolder? initialized) =>
      _$this._initialized = initialized;

  FunctionHolder? _resumed;
  FunctionHolder? get resumed => _$this._resumed;
  set resumed(FunctionHolder? resumed) => _$this._resumed = resumed;

  FunctionHolder? _paused;
  FunctionHolder? get paused => _$this._paused;
  set paused(FunctionHolder? paused) => _$this._paused = paused;

  TypedFunctionHolder<Size>? _sizeChanged;
  TypedFunctionHolder<Size>? get sizeChanged => _$this._sizeChanged;
  set sizeChanged(TypedFunctionHolder<Size>? sizeChanged) =>
      _$this._sizeChanged = sizeChanged;

  AsyncFunctionHolder<bool>? _willPopCommand;
  AsyncFunctionHolder<bool>? get willPopCommand => _$this._willPopCommand;
  set willPopCommand(AsyncFunctionHolder<bool>? willPopCommand) =>
      _$this._willPopCommand = willPopCommand;

  bool? _isPasscodeEnabled;
  bool? get isPasscodeEnabled => _$this._isPasscodeEnabled;
  set isPasscodeEnabled(bool? isPasscodeEnabled) =>
      _$this._isPasscodeEnabled = isPasscodeEnabled;

  bool? _showSideMenu;
  bool? get showSideMenu => _$this._showSideMenu;
  set showSideMenu(bool? showSideMenu) => _$this._showSideMenu = showSideMenu;

  Size? _size;
  Size? get size => _$this._size;
  set size(Size? size) => _$this._size = size;

  RouteType? _routeType;
  RouteType? get routeType => _$this._routeType;
  set routeType(RouteType? routeType) => _$this._routeType = routeType;

  double? _fullscreenMinWidth;
  double? get fullscreenMinWidth => _$this._fullscreenMinWidth;
  set fullscreenMinWidth(double? fullscreenMinWidth) =>
      _$this._fullscreenMinWidth = fullscreenMinWidth;

  double? _sideMenuWidth;
  double? get sideMenuWidth => _$this._sideMenuWidth;
  set sideMenuWidth(double? sideMenuWidth) =>
      _$this._sideMenuWidth = sideMenuWidth;

  bool? _isSideMenuSupported;
  bool? get isSideMenuSupported => _$this._isSideMenuSupported;
  set isSideMenuSupported(bool? isSideMenuSupported) =>
      _$this._isSideMenuSupported = isSideMenuSupported;

  bool? _isAppActive;
  bool? get isAppActive => _$this._isAppActive;
  set isAppActive(bool? isAppActive) => _$this._isAppActive = isAppActive;

  DialogViewModelBuilder? _dialog;
  DialogViewModelBuilder get dialog =>
      _$this._dialog ??= new DialogViewModelBuilder();
  set dialog(DialogViewModelBuilder? dialog) => _$this._dialog = dialog;

  FunctionHolder? _dialogDismiss;
  FunctionHolder? get dialogDismiss => _$this._dialogDismiss;
  set dialogDismiss(FunctionHolder? dialogDismiss) =>
      _$this._dialogDismiss = dialogDismiss;

  RootViewModelBuilder();

  RootViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _initialized = $v.initialized;
      _resumed = $v.resumed;
      _paused = $v.paused;
      _sizeChanged = $v.sizeChanged;
      _willPopCommand = $v.willPopCommand;
      _isPasscodeEnabled = $v.isPasscodeEnabled;
      _showSideMenu = $v.showSideMenu;
      _size = $v.size;
      _routeType = $v.routeType;
      _fullscreenMinWidth = $v.fullscreenMinWidth;
      _sideMenuWidth = $v.sideMenuWidth;
      _isSideMenuSupported = $v.isSideMenuSupported;
      _isAppActive = $v.isAppActive;
      _dialog = $v.dialog?.toBuilder();
      _dialogDismiss = $v.dialogDismiss;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RootViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RootViewModel;
  }

  @override
  void update(void Function(RootViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RootViewModel build() => _build();

  _$RootViewModel _build() {
    _$RootViewModel _$result;
    try {
      _$result = _$v ??
          new _$RootViewModel._(
              initialized: BuiltValueNullFieldError.checkNotNull(
                  initialized, r'RootViewModel', 'initialized'),
              resumed: BuiltValueNullFieldError.checkNotNull(
                  resumed, r'RootViewModel', 'resumed'),
              paused: BuiltValueNullFieldError.checkNotNull(
                  paused, r'RootViewModel', 'paused'),
              sizeChanged: BuiltValueNullFieldError.checkNotNull(
                  sizeChanged, r'RootViewModel', 'sizeChanged'),
              willPopCommand: BuiltValueNullFieldError.checkNotNull(
                  willPopCommand, r'RootViewModel', 'willPopCommand'),
              isPasscodeEnabled: BuiltValueNullFieldError.checkNotNull(
                  isPasscodeEnabled, r'RootViewModel', 'isPasscodeEnabled'),
              showSideMenu: BuiltValueNullFieldError.checkNotNull(
                  showSideMenu, r'RootViewModel', 'showSideMenu'),
              size: BuiltValueNullFieldError.checkNotNull(
                  size, r'RootViewModel', 'size'),
              routeType: BuiltValueNullFieldError.checkNotNull(routeType, r'RootViewModel', 'routeType'),
              fullscreenMinWidth: BuiltValueNullFieldError.checkNotNull(fullscreenMinWidth, r'RootViewModel', 'fullscreenMinWidth'),
              sideMenuWidth: BuiltValueNullFieldError.checkNotNull(sideMenuWidth, r'RootViewModel', 'sideMenuWidth'),
              isSideMenuSupported: BuiltValueNullFieldError.checkNotNull(isSideMenuSupported, r'RootViewModel', 'isSideMenuSupported'),
              isAppActive: BuiltValueNullFieldError.checkNotNull(isAppActive, r'RootViewModel', 'isAppActive'),
              dialog: _dialog?.build(),
              dialogDismiss: BuiltValueNullFieldError.checkNotNull(dialogDismiss, r'RootViewModel', 'dialogDismiss'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dialog';
        _dialog?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RootViewModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
