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
    final Size txtSize = textSize(
      text,
      const TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
    );

    return Container(
      width: txtSize.width + 22 + (icon != null ? 10 : 0),
      decoration: BoxDecoration(
        color: backgroundColor ?? CMColors.background.primary,
        borderRadius: BorderRadius.all(
          Radius.circular(radius ?? 4),
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      child: Row(
        children: [
          icon != null
              ? Icon(
                  icon,
                  size: 10,
                  color: color ??
                      ((backgroundColor == CMColors.alert.warning ||
                              backgroundColor == CMColors.alert.light)
                          ? CMColors.text.dark
                          : Colors.white),
                )
              : Container(),
          const SizedBox(
            width: 2,
          ),
          Text(
            text,
            style: TextStyle(
              color: color ??
                  ((backgroundColor == CMColors.alert.warning ||
                          backgroundColor == CMColors.alert.light)
                      ? CMColors.text.dark
                      : Colors.white),
              fontSize: 10,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Size textSize(String text, TextStyle style) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout(minWidth: 0, maxWidth: double.infinity);

    return textPainter.size;
  }
}
