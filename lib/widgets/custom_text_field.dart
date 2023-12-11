import 'package:flutter/material.dart';
import 'package:gluestack_ui/gluestack_ui.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final double maxWidth;
  final double maxHeight;
  final String? Function(dynamic)? validator;
  const CustomTextField({
    super.key,
    required this.labelText,
    required this.maxWidth,
    required this.maxHeight,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return GSInput(
      size: GSSizes.$sm,
      variant: GSVariants.outline,
      cursorHeight: 12,
      constraints: BoxConstraints(
        maxWidth: maxWidth,
        maxHeight: maxHeight,
      ),
      labelText: labelText,
      validator: validator,
      labelStyle: const TextStyle(fontSize: 12),
      errorStyle: const TextStyle(
        fontSize: 7,
      ),
      style: GSStyle(
        borderColor: $GSColors.warmGray300,
        onFocus: GSStyle(
          borderColor: $GSColors.warmGray400,
          borderWidth: 1,
        ),
      ),
    );
  }
}
