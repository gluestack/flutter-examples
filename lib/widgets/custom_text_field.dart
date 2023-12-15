import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gluestack_ui/gluestack_ui.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final double maxWidth;
  final double maxHeight;
  final String? Function(dynamic)? validator;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  const CustomTextField({
    super.key,
    required this.labelText,
    required this.maxWidth,
    required this.maxHeight,
    this.validator,
    this.keyboardType,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return GSInput(
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
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
    );
  }
}
