import 'package:daymemory/widget/account/login/login_view_model.dart';
import 'package:daymemory/widget/common/button/link_button.dart';
import 'package:daymemory/widget/common/button/simple_bordered_button_widget.dart';
import 'package:daymemory/widget/common/button/simple_filled_button_widget.dart';
import 'package:daymemory/widget/common/button/social_sign_up_button_widget.dart';
import 'package:daymemory/widget/common/buttons/nav_button_widget.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/common/text_field/text_field_bordered.dart';
import 'package:daymemory/widget/theme/theme_colors_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginWidget extends StatefulWidget {
  final LoginViewModel viewModel;

  const LoginWidget({
    super.key,
    required this.viewModel,
  });

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
                        child: TextFieldBordered(
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
                        child: TextFieldBordered(
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
                        ),
                      ),
                      LinkButton(
                        click: widget.viewModel.forgotPassword,
                        text: widget.viewModel.forgotPasswordLabel,
                        isLarge: true,
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
                  color: Theme.of(context).dividerColor,
                  margin: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                  height: 1,
                ),
                if (widget.viewModel.showSocialButtons) _SocialButtons(viewModel: widget.viewModel),
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
                      child: Text(widget.viewModel.andSeparatorLabel),
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

class _SocialButtons extends StatelessWidget {
  const _SocialButtons({
    required this.viewModel,
  });

  final LoginViewModel viewModel;

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
              backgroundColor: Theme.of(context).extension<ThemeColors>()!.accentColor,
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
