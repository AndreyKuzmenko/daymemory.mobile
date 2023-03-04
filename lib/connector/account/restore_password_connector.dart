import 'package:daymemory/connector/account/restore_password_converter.dart';
import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/widget/account/restore_password/restore_password_view_model.dart';
import 'package:daymemory/widget/account/restore_password/restore_password_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RestorePasswordConnector extends PageConnector<RestorePasswordViewModel, RestorePasswordConverter> {
  const RestorePasswordConnector({Key? key}) : super(key: key);

  @override
  Widget buildWidget(BuildContext context, RestorePasswordViewModel viewModel) => RestorePasswordWidget(viewModel: viewModel);

  @override
  void onInit(BuildContext context, AppState state, Function dispatch) {
    super.onInit(context, state, dispatch);
    dispatch(const LoginIsLoadingAction(isSending: false));
  }

  @override
  void onDispose(BuildContext context, AppState state, Function dispatch) {
    dispatch(const LoginIsLoadingAction(isSending: false));
  }

  @override
  RestorePasswordConverter prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch) {
    final converter = RestorePasswordConverter(
      locale: AppLocalizations.of(context)!,
      email: state.loginState.email!,
      dispatch: dispatch,
      isLoading: state.loginState.isSending,
    );
    return converter;
  }
}
