import 'package:flutter/material.dart';

import 'cm_colors.dart';

class CMDropdownButton extends StatelessWidget {
  final List<DropdownMenuItem<String>>? items;
  final String? value;
  final String? hint;
  final String? labelText;
  final Function(dynamic)? onChanged;
  final String? Function(dynamic)? validator;
  final AutovalidateMode? autovalidateMode;

  const CMDropdownButton(
      {Key? key,
      this.items,
      this.value,
      this.onChanged,
      this.validator,
      this.hint,
      this.autovalidateMode,
      this.labelText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      items: items,
      value: value,
      onChanged: onChanged,
      validator: validator,
      autovalidateMode: autovalidateMode,
      hint: hint != null ? Text(hint!) : null,
      decoration: InputDecoration(
        labelText: labelText,
        isDense: true,
        contentPadding: const EdgeInsets.all(12),
        labelStyle: const TextStyle(
          fontSize: 16,
          color: CMColors.dark,
        ),
        hintStyle: const TextStyle(
          fontSize: 16,
          color: CMColors.dark,
        ),
        helperStyle: const TextStyle(
          fontSize: 16,
          color: CMColors.dark,
        ),
        prefixStyle: const TextStyle(
          fontSize: 16,
          color: CMColors.dark,
        ),
        suffixStyle: const TextStyle(
          fontSize: 16,
          color: CMColors.dark,
        ),
        counterStyle: const TextStyle(
          fontSize: 16,
          color: CMColors.dark,
        ),
        floatingLabelStyle: const TextStyle(
          fontSize: 16,
          color: CMColors.dark,
        ),
        fillColor: Colors.orange,
        border: const OutlineInputBorder(),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: CMColors.danger),
        ),
        enabledBorder: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: CMColors.text.muted,
          ),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: CMColors.danger),
        ),
        errorStyle: const TextStyle(
          color: CMColors.danger,
        ),
      ),
    );
  }
}
