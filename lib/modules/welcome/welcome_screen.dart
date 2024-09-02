import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new/core/app_dimens.dart';
import 'package:flutter_new/core/assets/app_images.dart';
import 'package:flutter_new/core/common/common_button.dart';
import 'package:flutter_new/modules/auth/auth_screen/auth_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(AppImages.welcomeImages),
              Positioned(
                bottom: 0,
                top: 0,
                right: 0,
                left: 0,
                child: Image.asset(
                  AppImages.welcomeLogo,
                  scale: 3.5,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: AppDimens.bigPadding,
              right: AppDimens.mediumPadding,
              left: AppDimens.mediumPadding,
            ),
            child: Row(
              children: [
                Expanded(
                  child: CommonButton(
                    title: 'LOG IN',
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) =>
                              const AuthScreen(isRegistrationForm: false),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  width: AppDimens.smallPadding,
                ),
                Expanded(
                  child: CommonButton(
                    isWhite: false,
                    title: 'REGISTER',
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) =>
                              const AuthScreen(isRegistrationForm: true),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
