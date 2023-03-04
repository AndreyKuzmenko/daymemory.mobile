import 'package:daymemory/widget/account/restore_password/restore_password_view_model.dart';
import 'package:daymemory/widget/common/button/simple_filled_button_widget.dart';
import 'package:daymemory/widget/common/buttons/nav_button_widget.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/common/text_field/text_field_widget.dart';
import 'package:daymemory/widget/theme/app_theme_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class RestorePasswordWidget extends StatefulWidget {
  final RestorePasswordViewModel viewModel;

  const RestorePasswordWidget({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  State<RestorePasswordWidget> createState() => _RestorePasswordWidgetState();
}

class _RestorePasswordWidgetState extends State<RestorePasswordWidget> {
  late TextEditingController _passwordController;
  late TextEditingController _codeController;
  final _form = GlobalKey<FormState>();

  @override
  void initState() {
    _passwordController = TextEditingController();
    _codeController = TextEditingController();
    EasyLoading.dismiss();
    super.initState();
  }

  @override
  void dispose() {
    EasyLoading.dismiss();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant RestorePasswordWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.viewModel.isLoading) {
        EasyLoading.show(status: widget.viewModel.loadingMessage);
      } else {
        EasyLoading.dismiss();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = AppThemeWidget.getTheme(context);

    return Scaffold(
      appBar: AppBar(
        leading: NavButtonWidget(onPressed: widget.viewModel.backCommand, icon: Icons.arrow_back_ios),
        centerTitle: true,
        title: Text(
          widget.viewModel.title,
          style: theme.navigationTitle,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        bottom: false,
        top: false,
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.only(),
          child: Container(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: ListView(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 50),
              children: [
                Form(
                  key: _form,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: Text(
                          widget.viewModel.instructionText,
                          style: TextStyle(color: theme.black, fontSize: 16),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: TextFieldWidget(
                          controller: _codeController,
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return widget.viewModel.requiredFiledValidator;
                            }
                            return null;
                          },
                          label: widget.viewModel.codeLabel,
                          placeholder: widget.viewModel.codePlaceholder,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: TextFieldWidget(
                          controller: _passwordController,
                          obscureText: true,
                          label: widget.viewModel.passwordLabel,
                          placeholder: widget.viewModel.passwordPlaceholder,
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return widget.viewModel.requiredFiledValidator;
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: SimpleFilledButtonWidget(
                          text: widget.viewModel.changePasswordButtonText,
                          click: widget.viewModel.changePassword == null
                              ? null
                              : FunctionHolder(() {
                                  var isValid = _form.currentState!.validate();
                                  if (!isValid) {
                                    return;
                                  }
                                  widget.viewModel.changePassword!.command(RestorePasswordData(
                                    code: _codeController.text,
                                    password: _passwordController.text,
                                  ));
                                }),
                          textColor: Colors.white,
                          backgroundColor: theme.colorAccent,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
