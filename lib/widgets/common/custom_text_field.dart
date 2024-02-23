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
      size: GSInputSizes.$sm,
      variant: GSInputVariants.outline,
      hintText: labelText,
      constraints: BoxConstraints(
        maxWidth: maxWidth,
        // maxHeight: maxHeight,
      ),

      // style: GSStyle(
      //   width: 300,
      // ),
    );
  }
}
