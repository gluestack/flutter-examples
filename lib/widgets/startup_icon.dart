import 'package:flutter/material.dart';
import 'package:gluestack_ui/gluestack_ui.dart';

class StartupIcon extends StatelessWidget {
  const StartupIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GSBox(
      style: GSStyle(
        borderWidth: 1.5,
        borderRadius: 2.5,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        height: 20,
        width: 62,
        borderColor: Theme.of(context).colorScheme.secondary,
      ),
      child: GSHStack(
        children: [
          GSText(
            text: 'Startup',
            style: GSStyle(
              textStyle: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          GSIcon(
            icon: Icons.add,
            size: GSSizes.$xs,
            style: GSStyle(
              color: Theme.of(context).colorScheme.secondary,
            ),
          )
        ],
      ),
    );
  }
}
