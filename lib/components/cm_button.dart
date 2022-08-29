import 'package:flutter/material.dart';

import 'cm_colors.dart';

class CMButton extends StatelessWidget {
  final String text;
  final bool? lg;
  final bool? sm;
  final VoidCallback? onPressed;
  final Color? backgroundColor;

  const CMButton({
    Key? key,
    required this.text,
    this.lg,
    this.sm,
    this.onPressed,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: lg == true
          ? 42
          : sm == true
              ? 24
              : 32,
      child: ElevatedButton(
        style: ButtonStyle(
          side: MaterialStateProperty.all(BorderSide(
            color: backgroundColor ?? Theme.of(context).primaryColor,
          )),
          backgroundColor: MaterialStateProperty.all(
            backgroundColor ?? Theme.of(context).primaryColor,
          ),
          foregroundColor: MaterialStateProperty.resolveWith((states) {
            return (backgroundColor ?? Theme.of(context).primaryColor)
                        .computeLuminance() >
                    0.5
                ? CMColors.text.dark
                : Colors.white;
          }),
          overlayColor: MaterialStateProperty.all(
            backgroundColor ?? Theme.of(context).primaryColor,
          ),
          textStyle: MaterialStateProperty.resolveWith((states) {
            return TextStyle(
              color: backgroundColor ?? Theme.of(context).primaryColor,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            );
          }),
        ),
        onPressed: onPressed,
        child: Text(
          text,
        ),
      ),
    );
  }
}
