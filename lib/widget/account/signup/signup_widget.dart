import 'package:daymemory/widget/account/signup/signup_view_model.dart';
import 'package:daymemory/widget/common/button/link_button.dart';
import 'package:daymemory/widget/common/button/simple_filled_button_widget.dart';
import 'package:daymemory/widget/common/buttons/nav_button_widget.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/common/text_field/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:url_launcher/url_launcher.dart';

class SignupWidget extends StatefulWidget {
  final SignupViewModel viewModel;

  const SignupWidget({
    super.key,
    required this.viewModel,
  });

  @override
  State<SignupWidget> createState() => _SignupWidgetState();
}

class _SignupWidgetState extends State<SignupWidget> {
  late TextEditingController _firstNameController;
  late TextEditingController _lastNameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  final _form = GlobalKey<FormState>();

  @override
  void initState() {
    _firstNameController = TextEditingController(text: widget.viewModel.firstName);
    _lastNameController = TextEditingController(text: widget.viewModel.lastName);
    _emailController = TextEditingController(text: widget.viewModel.email);
    _passwordController = TextEditingController(text: widget.viewModel.password);
    EasyLoading.dismiss();
    super.initState();
  }

  @override
  void dispose() {
    EasyLoading.dismiss();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant SignupWidget oldWidget) {
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
    return Scaffold(
      appBar: AppBar(
        leading: NavButtonWidget(onPressed: widget.viewModel.backCommand, icon: Icons.arrow_back_ios),
        centerTitle: true,
        title: Text(
          widget.viewModel.title,
        ),
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
                        child: TextFieldWidget(
                          controller: _firstNameController,
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return widget.viewModel.requiredFiledValidator;
                            }
                            return null;
                          },
                          label: widget.viewModel.firstNameLabel,
                          placeholder: widget.viewModel.firstNamePlaceholder,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: TextFieldWidget(
                          controller: _lastNameController,
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return widget.viewModel.requiredFiledValidator;
                            }
                            return null;
                          },
                          label: widget.viewModel.lastNameLabel,
                          placeholder: widget.viewModel.lastNamePlaceholder,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: TextFieldWidget(
                          controller: _emailController,
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return widget.viewModel.requiredFiledValidator;
                            }
                            bool emailValid = RegExp(widget.viewModel.emailRegex).hasMatch(text);
                            if (!emailValid) {
                              return widget.viewModel.invalidEmailValidator;
                            }
                            return null;
                          },
                          label: widget.viewModel.emailLabel,
                          placeholder: widget.viewModel.emailLabel,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: TextFieldWidget(
                          controller: _passwordController,
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return widget.viewModel.requiredFiledValidator;
                            }
                            if (text.length < 7) {
                              return widget.viewModel.requiredFiledValidator;
                            }

                            return null;
                          },
                          obscureText: true,
                          label: widget.viewModel.passwordLabel,
                          placeholder: widget.viewModel.passwordPlaceholder,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: SimpleFilledButtonWidget(
                          text: widget.viewModel.signButtonText,
                          click: widget.viewModel.signupWithCredentials == null
                              ? null
                              : FunctionHolder(() {
                                  var isValid = _form.currentState!.validate();
                                  if (!isValid) {
                                    return;
                                  }
                                  widget.viewModel.signupWithCredentials!.command(SignupWithEmailData(
                                    email: _emailController.text,
                                    firstName: _firstNameController.text,
                                    lastName: _lastNameController.text,
                                    password: _passwordController.text,
                                  ));
                                }),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LinkButton(
                      click: FunctionHolder(() {
                        launchUrl(Uri.parse(widget.viewModel.termsOfUseLink));
                      }),
                      isLarge: false,
                      text: widget.viewModel.termsOfUseLabel,
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: Text(widget.viewModel.andSeparatorLabel,
                          style: const TextStyle(
                            color: Colors.black,
                          )),
                    ),
                    LinkButton(
                      click: FunctionHolder(() {
                        launchUrl(Uri.parse(widget.viewModel.privacyPolicyLink));
                      }),
                      isLarge: false,
                      text: widget.viewModel.privacyPolicyLabel,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
