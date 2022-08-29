import 'package:cm_components/components/cm_colors.dart';
import 'package:flutter/material.dart';

class CMButtonCircle extends StatelessWidget {
  final IconData icon;
  final bool? lg;
  final bool? sm;
  final bool? outline;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? color;

  const CMButtonCircle({
    Key? key,
    required this.icon,
    this.lg,
    this.sm,
    this.outline,
    this.onPressed,
    this.backgroundColor,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: lg == true
          ? 50
          : sm == true
              ? 30
              : 40,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(const CircleBorder()),
          side: MaterialStateProperty.all(BorderSide(
            color: backgroundColor ?? CMColors.background.primary,
          )),
          backgroundColor: MaterialStateProperty.all(
            outline == true
                ? Colors.white
                : backgroundColor ?? CMColors.background.primary,
          ),
          foregroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.hovered)) {
              return (backgroundColor == CMColors.background.warning ||
                      backgroundColor == CMColors.background.light)
                  ? CMColors.text.dark
                  : Colors.white;
            }

            return outline == true
                ? backgroundColor ?? CMColors.background.primary
                : (backgroundColor == CMColors.background.warning ||
                        backgroundColor == CMColors.background.light)
                    ? CMColors.text.dark
                    : Colors.white;
          }),
          overlayColor: MaterialStateProperty.all(
            backgroundColor ?? CMColors.background.primary,
          ),
          textStyle: MaterialStateProperty.resolveWith((states) {
            return TextStyle(
              fontSize: 14,
              color: backgroundColor ?? CMColors.background.primary,
              fontWeight: FontWeight.w500,
            );
          }),
        ),
        onPressed: onPressed,
        child: Icon(
          icon,
          size: lg == true
              ? 18
              : sm == true
                  ? 12
                  : 15,
        ),
      ),
    );
  }
}
