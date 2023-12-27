import '../../public.dart';

class CustomBackButton extends StatelessWidget {
  final String buttonText;
  final GSStyle? iconColor;
  final TextStyle? textStyle;

  const CustomBackButton({
    super.key,
    required this.buttonText,
    this.iconColor,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return GSPressable(
      onPress: () {
        Navigator.of(context).pop();
      },
      child: GSHStack(
        children: [
          GSButtonIcon(
            icon: Icons.arrow_back,
            style: iconColor,
            iconSize: GSSizes.$md,
          ),
          const SizedBox(
            width: 3,
          ),
          GSText(
            text: buttonText,
            size: GSSizes.$sm,
            style: GSStyle(
              textStyle: textStyle,
            ),
          )
        ],
      ),
    );
  }
}
