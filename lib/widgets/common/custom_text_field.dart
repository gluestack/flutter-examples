import '../../public.dart';

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
      size: GSInputSizes.$sm,
      variant: GSInputVariants.outline,
      style: GSStyle(
        onFocus: GSStyle(
          borderColor: $GSColors.primary300,
        ),
      ),
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
