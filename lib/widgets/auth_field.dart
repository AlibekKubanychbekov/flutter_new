import 'package:flutter/material.dart';
import 'package:flutter_new/core/app_dimens.dart';
import 'package:flutter_new/main.dart';

class AuthField extends StatelessWidget {
  const AuthField({
    required this.hintText,
    this.isPasswordField = false,
    super.key,
  });

  final String hintText;
  final bool isPasswordField;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimens.commonButtonHeight,
      child: TextFormField(
        obscureText: isPasswordField,
        validator: (value) {
          if (isPasswordField) {
            if (value != password) {
              return 'Incorrect password';
            }
          } else {
            if (value != userName) {
              return 'Incorrect user name';
            }
          }

          return null;
        },
        decoration: InputDecoration(
          hintText: hintText,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 2,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 2,
            ),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
              width: 2,
            ),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
