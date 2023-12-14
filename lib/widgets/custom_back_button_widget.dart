import 'package:flutter/material.dart';
import 'package:gluestack_ui/gluestack_ui.dart';

class CustomBackButton extends StatelessWidget {
  final String buttonText;
  final TextStyle? buttonTextStyle;
  final Color? iconColor;
  const CustomBackButton({
    super.key,
    required this.buttonText,
    this.buttonTextStyle,
    this.iconColor,
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
            iconSize: GSSizes.$md,
            style: GSStyle(
              color: iconColor,
            ),
          ),
          const SizedBox(
            width: 3,
          ),
          GSText(
            text: buttonText,
            size: GSSizes.$sm,
            style: GSStyle(
              textStyle: buttonTextStyle,
            ),
          )
        ],
      ),
    );
  }
}
