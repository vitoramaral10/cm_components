import 'package:flutter/material.dart';

import 'cm_colors.dart';

class CMDivider extends StatelessWidget {
  final Color? color;
  const CMDivider({Key? key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Divider(
        color: color ?? CMColors.gray300,
        height: 1,
      ),
    );
  }
}
