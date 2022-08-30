import 'package:flutter/material.dart';

import 'cm_colors.dart';

class CMDialog extends StatelessWidget {
  final EdgeInsetsGeometry headerVerticalPadding;
  final EdgeInsetsGeometry footerVerticalPadding;
  final Widget body;
  final Widget? header;
  final Widget? footer;
  final bool? xl;
  final bool? sm;

  const CMDialog({
    Key? key,
    required this.body,
    this.header,
    this.footer,
    this.headerVerticalPadding = const EdgeInsets.all(16),
    this.footerVerticalPadding = const EdgeInsets.all(16),
    this.xl = false,
    this.sm = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: xl == true
          ? (MediaQuery.of(context).size.width / 100) * 70
          : sm == true
              ? (MediaQuery.of(context).size.width / 100) * 30
              : (MediaQuery.of(context).size.width / 100) * 50,
      child: AlertDialog(
        contentPadding: EdgeInsets.zero,
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (header != null)
              Padding(
                padding: headerVerticalPadding,
                child: header,
              ),
            if (header != null)
              Divider(
                color: CMColors.text.grey[300],
                height: 1,
              ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: body,
            ),
            if (footer != null)
              Divider(
                color: CMColors.text.grey[300],
                height: 1,
              ),
            if (footer != null)
              Padding(
                padding: footerVerticalPadding,
                child: footer,
              ),
          ],
        ),
      ),
    );
  }
}
