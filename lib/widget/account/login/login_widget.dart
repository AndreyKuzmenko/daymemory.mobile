import 'package:daymemory/widget/account/login/login_view_model.dart';
import 'package:daymemory/widget/common/button/simple_bordered_button_widget.dart';
import 'package:daymemory/widget/common/button/simple_filled_button_widget.dart';
import 'package:daymemory/widget/common/button/social_sign_up_button_widget.dart';
import 'package:daymemory/widget/common/buttons/nav_button_widget.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/common/text_field/text_field_widget.dart';
import 'package:daymemory/widget/theme/app_theme.dart';
import 'package:daymemory/widget/theme/app_theme_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginWidget extends StatefulWidget {
  final LoginViewModel viewModel;

  const LoginWidget({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  final _form = GlobalKey<FormState>();

  @override
  void initState() {
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
  void didUpdateWidget(covariant LoginWidget oldWidget) {
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
                        child: TextFieldWidget(
                          controller: _emailController,
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return widget.viewModel.requiredFieldValidator;
                            }
                            bool emailValid = RegExp(widget.viewModel.emailRegex).hasMatch(text);
                            if (!emailValid) {
                              return widget.viewModel.invalidEmailValidator;
                            }
                            return null;
                          },
                          label: widget.viewModel.emailLabel,
                          placeholder: widget.viewModel.emailPlaceholder,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: TextFieldWidget(
                          controller: _passwordController,
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return widget.viewModel.requiredFieldValidator;
                            }
                            return null;
                          },
                          obscureText: true,
                          label: widget.viewModel.passwordLabel,
                          placeholder: widget.viewModel.passwordPlaceholder,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: SimpleFilledButtonWidget(
                          text: widget.viewModel.loginWithEmailText,
                          click: widget.viewModel.loginWithCredentials == null
                              ? null
                              : FunctionHolder(() {
                                  var isValid = _form.currentState!.validate();
                                  if (!isValid) {
                                    return;
                                  }
                                  widget.viewModel.loginWithCredentials!.command(LoginWithEmailData(
                                    email: _emailController.text,
                                    password: _passwordController.text,
                                  ));
                                }),
                          textColor: Colors.white,
                          backgroundColor: theme.colorAccent,
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          widget.viewModel.forgotPassword.command();
                        },
                        child: Text(
                          widget.viewModel.forgotPasswordLabel,
                          style: TextStyle(color: theme.colorAccent, fontSize: 15),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: SimpleBorderedButtonWidget(
                          text: widget.viewModel.createAccountLabel,
                          click: widget.viewModel.createAccount,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: theme.itemSeparatorColor,
                  margin: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                  height: 1,
                ),
                if (widget.viewModel.showSocialButtons) _SocialButtons(viewModel: widget.viewModel, theme: theme),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                        child: Text(widget.viewModel.termsOfUseLabel,
                            style: TextStyle(
                              color: theme.colorAccent,
                            )),
                        onTap: () => launchUrl(Uri.parse(widget.viewModel.privacyPolicyLink))),
                    Container(
                      margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: Text(widget.viewModel.andSeparatorLabel,
                          style: const TextStyle(
                            color: Colors.black,
                          )),
                    ),
                    InkWell(
                        child: Text(widget.viewModel.privacyPolicyLabel,
                            style: TextStyle(
                              color: theme.colorAccent,
                            )),
                        onTap: () => launchUrl(Uri.parse(widget.viewModel.termsOfUseLink))),
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

class _SocialButtons extends StatelessWidget {
  const _SocialButtons({
    Key? key,
    required this.viewModel,
    required this.theme,
  }) : super(key: key);

  final LoginViewModel viewModel;
  final IAppTheme theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SocialSignUpButtonWidget(
              icon: FontAwesomeIcons.facebookF,
              iconColor: Colors.white,
              click: viewModel.loginWithFacebook,
              textColor: Colors.white,
              backgroundColor: theme.colorAccent,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: SocialSignUpButtonWidget(
              icon: FontAwesomeIcons.google,
              iconColor: Colors.white,
              click: viewModel.loginWithGoogle,
              textColor: Colors.white,
              backgroundColor: HexColor("df4a32"),
            ),
          ),
          if (viewModel.showAppleIdButton)
            const SizedBox(
              width: 15,
            ),
          if (viewModel.showAppleIdButton)
            Expanded(
              child: SocialSignUpButtonWidget(
                icon: FontAwesomeIcons.apple,
                iconColor: Colors.white,
                click: viewModel.loginWithApple,
                textColor: Colors.white,
                backgroundColor: Colors.black,
              ),
            ),
        ],
      ),
    );
  }
}
