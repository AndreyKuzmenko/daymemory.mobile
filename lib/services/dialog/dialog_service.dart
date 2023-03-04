import 'package:daymemory/services/navigation/context_service.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../redux/action/actions.dart';
import '../../redux/state/states.dart';

abstract class IDialogService {
  ShowInfoDialogAction openSettingsDialogAction(
    Function(dynamic) dispatch, {
    required Function() navigateCommand,
    required String title,
    required String message,
  });

  ShowInfoDialogAction prepareSomethingWentWrongDialogAction(
    Function(dynamic) dispatch, {
    String? errorMessage,
    String? errorTitle,
    Function? positiveCommand,
  });

  ShowInfoDialogAction prepareNoInternetDialogAction(
    Function(dynamic) dispatch, {
    Function? retryCommand,
  });

  ShowInfoDialogAction confirmDeletingDialogAction(
    Function(dynamic) dispatch, {
    required Function() deleteCommand,
    required String title,
    required String message,
  });

  ShowInfoDialogAction confirmDialogAction(
    Function(dynamic) dispatch, {
    required Function() confirmCommand,
    required String title,
    required String message,
  });
}

class DialogService implements IDialogService {
  final IContextService contextService;

  AppLocalizations? get _locale => contextService.locale;

  DialogService({
    required this.contextService,
  });

  @override
  ShowInfoDialogAction openSettingsDialogAction(
    Function(dynamic) dispatch, {
    required Function() navigateCommand,
    required String title,
    required String message,
  }) {
    final dialog = DialogState(
      (b) => b
        ..title = title
        ..reverseButtons = false
        ..description = message
        ..negativeTitle = _locale?.cancel
        ..negative = FunctionHolder(
          () {
            dispatch(CloseDialogAction());
          },
        )
        ..positiveTitle = _locale?.open_settings
        ..positive = FunctionHolder(
          () {
            dispatch(CloseDialogAction());
            navigateCommand.call();
          },
        ),
    );
    return ShowInfoDialogAction(dialog);
  }

  @override
  ShowInfoDialogAction prepareSomethingWentWrongDialogAction(
    Function(dynamic) dispatch, {
    String? errorMessage,
    String? errorTitle,
    Function? positiveCommand,
  }) {
    final dialog = DialogState(
      (b) => b
        ..title = errorTitle ?? _locale?.error
        ..reverseButtons = false
        ..description = errorMessage ?? _locale?.somethingWrong
        ..positiveTitle = _locale?.gotIt
        ..positive = FunctionHolder(
          () {
            dispatch(CloseDialogAction());
            positiveCommand?.call();
          },
        ),
    );
    return ShowInfoDialogAction(dialog);
  }

  @override
  ShowInfoDialogAction prepareNoInternetDialogAction(
    Function(dynamic) dispatch, {
    Function? retryCommand,
  }) {
    final dialog = DialogState(
      (b) => b
        ..title = _locale?.error
        ..reverseButtons = false
        ..description = _locale?.no_internet
        ..negativeTitle = _locale?.retry
        ..negative = FunctionHolder(
          () {
            dispatch(CloseDialogAction());
            retryCommand?.call();
          },
        ),
    );
    return ShowInfoDialogAction(dialog);
  }

  @override
  ShowInfoDialogAction confirmDeletingDialogAction(
    Function(dynamic) dispatch, {
    required Function() deleteCommand,
    required String title,
    required String message,
  }) {
    final dialog = DialogState(
      (b) => b
        ..title = title
        ..reverseButtons = false
        ..description = message
        ..negativeTitle = _locale!.delete
        ..negative = FunctionHolder(
          () {
            dispatch(CloseDialogAction());
            deleteCommand.call();
          },
        )
        ..positiveTitle = _locale?.cancel
        ..positive = FunctionHolder(
          () {
            dispatch(CloseDialogAction());
          },
        ),
    );
    return ShowInfoDialogAction(dialog);
  }

  @override
  ShowInfoDialogAction confirmDialogAction(
    Function(dynamic) dispatch, {
    required Function() confirmCommand,
    required String title,
    required String message,
  }) {
    final dialog = DialogState(
      (b) => b
        ..title = title
        ..reverseButtons = true
        ..description = message
        ..negativeTitle = _locale?.cancel
        ..negative = FunctionHolder(
          () {
            dispatch(CloseDialogAction());
          },
        )
        ..positiveTitle = _locale!.yes
        ..positive = FunctionHolder(
          () {
            dispatch(CloseDialogAction());
            confirmCommand.call();
          },
        ),
    );
    return ShowInfoDialogAction(dialog);
  }
}
