import 'package:flutter/material.dart';
import 'package:gluestack_demo/provider/theme_provider.dart';
import 'package:gluestack_demo/utils/constants.dart';
import 'package:gluestack_demo/utils/responsive_helper.dart';
import 'package:gluestack_demo/widgets/custom_back_button_widget.dart';
import 'package:gluestack_ui/gluestack_ui.dart';
import 'package:provider/provider.dart';

class CustomTopBarWidget extends StatefulWidget {
  final String profileImageUrl;
  final IconData trailingIcon;
  final String backButtonText;
  const CustomTopBarWidget({
    super.key,
    required this.profileImageUrl,
    required this.trailingIcon,
    required this.backButtonText,
  });

  @override
  State<CustomTopBarWidget> createState() => _CustomTopBarWidgetState();
}

class _CustomTopBarWidgetState extends State<CustomTopBarWidget> {
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
              ),
              sm: GSStyle(
                color: Theme.of(context).colorScheme.primary,
              ),
              md: GSStyle(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              lg: GSStyle(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              height: 60,
              borderColor: $GSColors.warmGray300),
          child: GSHStack(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (ResponsiveHelper.isMedium(context))
                GSHStack(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GSIcon(
                      icon: Icons.menu,
                      size: GSSizes.$sm,
                      style: GSStyle(
                          color: Theme.of(context).colorScheme.secondary,
                          sm: GSStyle(
                            isVisible: false,
                          )),
                    ),
                    const GSImage(
                      path: GSStringConstants.kNativeBaseLogo,
                      imageType: GSImageType.network,
                      size: GSSizes.$xl,
                      fit: BoxFit.fitWidth,
                    ),
                    GSBox(
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
                            )),
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
                    ),
                  ],
                ),
              if (ResponsiveHelper.isSmall(context))
                CustomBackButton(
                  buttonText: widget.backButtonText,
                  buttonTextStyle:
                      TextStyle(color: Theme.of(context).colorScheme.onPrimary),
                  iconColor: Theme.of(context).colorScheme.onPrimary,
                ),
              if (ResponsiveHelper.isMedium(context))
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: GSHStack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          themeProvider.toggleTheme();
                        },
                        child: GSIcon(
                          icon: Theme.of(context).brightness == Brightness.dark
                              ? Icons.light_mode
                              : Icons.dark_mode,
                          size: GSSizes.$lg,
                          style: GSStyle(color: $GSColors.warmGray400),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      GSImage(
                        path: widget.profileImageUrl,
                        imageType: GSImageType.network,
                        borderRadius: GSBorderRadius.$full,
                        size: GSSizes.$2xs,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              if (ResponsiveHelper.isSmall(context))
                GSHStack(
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
                )
            ],
          ),
        );
      },
    );
  }
}
