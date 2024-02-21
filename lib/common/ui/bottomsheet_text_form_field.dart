import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomSheetTextFormField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final void Function()? onTap;
  const BottomSheetTextFormField({
    super.key,
    required this.labelText,
    required this.controller,
    required this.keyboardType,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      autocorrect: false,
      autofocus: true,
      textInputAction: TextInputAction.next,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter a value';
        }

        return null;
      },
      decoration: InputDecoration(
        labelText: labelText,
      ),
      onTap: onTap,
    );
  }
}
