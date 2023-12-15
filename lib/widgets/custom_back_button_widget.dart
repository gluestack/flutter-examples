import 'package:flutter/material.dart';
import 'package:gluestack_ui/gluestack_ui.dart';

class CustomBackButton extends StatelessWidget {
  final String buttonText;

  const CustomBackButton({
    super.key,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return GSPressable(
      onPress: () {
        Navigator.of(context).pop();
      },
      child: GSHStack(
        children: [
          const GSButtonIcon(
            icon: Icons.arrow_back,
            iconSize: GSSizes.$md,
          ),
          const SizedBox(
            width: 3,
          ),
          GSText(
            text: buttonText,
            size: GSSizes.$sm,
          )
        ],
      ),
    );
  }
}
