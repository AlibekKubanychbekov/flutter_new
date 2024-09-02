import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new/core/app_dimens.dart';
import 'package:flutter_new/core/common/common_button.dart';
import 'package:flutter_new/core/theme/app_textstyles.dart';
import 'package:flutter_new/modules/home/home_page.dart';
import 'package:flutter_new/widgets/auth_field.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({
    required this.isRegistrationForm,
    super.key,
  });

  final bool isRegistrationForm;

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppDimens.mediumPadding),
          child: Column(
            children: [
              Text(
                widget.isRegistrationForm ? 'Register' : 'Log in',
                style: AppTextstyles.s36w400,
              ),
              const SizedBox(
                height: 32,
              ),
              Form(
                key: _formKey,
                child: const Column(
                  children: [
                    AuthField(
                      hintText: 'email@example.com',
                    ),
                    SizedBox(
                      height: AppDimens.mediumPadding,
                    ),
                    AuthField(
                      isPasswordField: true,
                      hintText: "Password",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: AppDimens.mediumPadding,
              ),
              SizedBox(
                width: double.infinity,
                child: CommonButton(
                  title: widget.isRegistrationForm ? 'REGISTER' : 'LOG IN',
                  isWhite: false,
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
