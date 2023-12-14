import 'package:flutter/material.dart';
import 'package:gluestack_demo/provider/theme_provider.dart';
import 'package:gluestack_demo/widgets/custom_back_button_widget.dart';
import 'package:gluestack_ui/gluestack_ui.dart';
import 'package:provider/provider.dart';

class CustomTopBarSmallScreenWidget extends StatefulWidget {
  final IconData trailingIcon;
  final String backButtonText;
  const CustomTopBarSmallScreenWidget({
    super.key,
    required this.trailingIcon,
    required this.backButtonText,
  });

  @override
  State<CustomTopBarSmallScreenWidget> createState() =>
      _CustomTopBarSmallScreenWidgetState();
}

class _CustomTopBarSmallScreenWidgetState
    extends State<CustomTopBarSmallScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return GSBox(
          style: GSStyle(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              color: Theme.of(context).colorScheme.onPrimary,
              xs: GSStyle(
                color: Theme.of(context).colorScheme.primary,
                isVisible: true,
              ),
              sm: GSStyle(
                color: Theme.of(context).colorScheme.primary,
                isVisible: true,
              ),
              md: GSStyle(
                isVisible: false,
              ),
              lg: GSStyle(
                isVisible: false,
              ),
              height: 60,
              borderColor: $GSColors.warmGray300),
          child: GSHStack(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GSBox(
                style: GSStyle(
                  sm: GSStyle(
                    isVisible: true,
                  ),
                  xs: GSStyle(isVisible: true),
                  md: GSStyle(isVisible: false),
                  lg: GSStyle(isVisible: false),
                ),
                child: CustomBackButton(
                  buttonText: widget.backButtonText,
                  buttonTextStyle:
                      TextStyle(color: Theme.of(context).colorScheme.onPrimary),
                  iconColor: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              GSBox(
                style: GSStyle(
                  sm: GSStyle(isVisible: true),
                  xs: GSStyle(isVisible: true),
                  md: GSStyle(isVisible: false),
                  lg: GSStyle(isVisible: false),
                ),
                child: GSHStack(
                  children: [
                    GSIcon(
                      icon: widget.trailingIcon,
                      size: GSSizes.$lg,
                      style: GSStyle(
                          color: Theme.of(context).colorScheme.onPrimary),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    GSIcon(
                      icon: Icons.more_vert,
                      size: GSSizes.$lg,
                      style: GSStyle(
                          color: Theme.of(context).colorScheme.onPrimary),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
