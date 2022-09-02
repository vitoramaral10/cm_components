import 'package:flutter/material.dart';

import 'cm_colors.dart';

class CMButtonOutline extends StatelessWidget {
  final String text;
  final bool? lg;
  final bool? sm;
  final bool? outline;
  final VoidCallback? onPressed;
  final Color? backgroundColor;

  const CMButtonOutline({
    Key? key,
    required this.text,
    this.lg,
    this.sm,
    this.outline,
    this.onPressed,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: lg == true
          ? 40
          : sm == true
              ? 24
              : 32,
      child: OutlinedButton(
        style: ButtonStyle(
          side: MaterialStateProperty.all(BorderSide(
            color: backgroundColor ?? CMColors.primary,
          )),
          backgroundColor: MaterialStateProperty.all(Colors.white),
          foregroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.hovered)) {
              return (backgroundColor ?? CMColors.primary).computeLuminance() >
                      0.5
                  ? CMColors.dark
                  : Colors.white;
            }

            return backgroundColor ?? CMColors.primary;
          }),
          overlayColor: MaterialStateProperty.all(
            backgroundColor ?? CMColors.primary,
          ),
          textStyle: MaterialStateProperty.resolveWith((states) {
            return TextStyle(
              color: backgroundColor ?? CMColors.primary,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            );
          }),
        ),
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
