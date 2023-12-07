import 'package:flutter/material.dart';
import 'package:gluestack_ui/gluestack_ui.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final double maxWidth;
  final double maxHeight;
  const CustomTextField({
    super.key,
    required this.labelText,
    required this.maxWidth,
    required this.maxHeight,
  });

  @override
  Widget build(BuildContext context) {
    return GSInput(
      size: GSSizes.$sm,
      variant: GSVariants.outline,
      cursorHeight: 16,
      constraints: BoxConstraints(
        maxWidth: maxWidth,
        maxHeight: 40,
      ),
      labelText: labelText,
      labelStyle: const TextStyle(fontSize: 12),
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
