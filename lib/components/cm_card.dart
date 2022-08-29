import 'package:flutter/material.dart';

import 'cm_colors.dart';

class CMCard extends StatelessWidget {
  final EdgeInsetsGeometry headerVerticalPadding;
  final EdgeInsetsGeometry footerVerticalPadding;
  final Widget body;
  final Widget? header;
  final Widget? footer;
  const CMCard({
    Key? key,
    required this.body,
    this.header,
    this.footer,
    this.headerVerticalPadding = const EdgeInsets.all(16),
    this.footerVerticalPadding = const EdgeInsets.all(16),
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
    );
  }
}
