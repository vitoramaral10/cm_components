import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'cm_colors.dart';

class CMAlert extends StatelessWidget {
  final Widget? body;
  final String? text;
  final Color? color;
  final VoidCallback? onDismiss;

  const CMAlert({
    Key? key,
    this.text,
    this.color,
    this.body,
    this.onDismiss,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        color: color ?? CMColors.warning,
      ),
      child: Row(
        children: [
          Expanded(
            child: body != null
                ? body!
                : Text(
                    text!,
                    style: TextStyle(
                      color:
                          (color == CMColors.warning || color == CMColors.light)
                              ? CMColors.dark
                              : CMColors.light,
                    ),
                  ),
          ),
          const SizedBox(
            width: 16,
          ),
          onDismiss != null
              ? InkWell(
                  onTap: onDismiss,
                  child: const Icon(
                    FontAwesomeIcons.xmark,
                    size: 16,
                    color: Colors.white,
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
