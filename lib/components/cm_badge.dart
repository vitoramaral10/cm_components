import 'package:flutter/material.dart';

import 'cm_colors.dart';

class CMBadge extends StatelessWidget {
  final Color? backgroundColor;
  final Color? color;
  final IconData? icon;
  final String text;
  final double? radius;

  const CMBadge({
    Key? key,
    this.backgroundColor,
    this.color,
    this.icon,
    required this.text,
    this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: backgroundColor ?? CMColors.primary,
      avatar: icon != null
          ? Icon(
              icon,
              size: 10,
              color: color ??
                  ((backgroundColor == CMColors.warning ||
                          backgroundColor == CMColors.light)
                      ? CMColors.dark
                      : CMColors.light),
            )
          : null,
      label: Text(
        text,
        style: TextStyle(
          fontSize: 10,
          color: color ??
              ((backgroundColor == CMColors.warning ||
                      backgroundColor == CMColors.light)
                  ? CMColors.dark
                  : CMColors.light),
        ),
      ),
    );
  }
}
