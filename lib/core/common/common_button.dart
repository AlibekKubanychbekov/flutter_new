import 'package:flutter/material.dart';
import 'package:flutter_new/core/app_dimens.dart';
import 'package:flutter_new/core/theme/app_textstyles.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    required this.title,
    required this.onTap,
    this.isWhite = true,
    super.key,
  });

  final String title;
  final Function() onTap;
  final bool isWhite;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimens.commonButtonHeight,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: const BorderSide(
                  color: Colors.black,
                  width: 2,
                )),
            backgroundColor: isWhite ? Colors.white : Colors.black),
        onPressed: onTap,
        child: Text(
          title,
          style: AppTextstyles.s13w500
              .copyWith(color: isWhite ? Colors.black : Colors.white),
        ),
      ),
    );
  }
}
