import '../../public.dart';

class CustomTopBarSmallScreenWidget extends StatefulWidget {
  final IconData trailingIcon;
  final String backButtonText;
  final VoidCallback? onTrailingIconTap;
  const CustomTopBarSmallScreenWidget({
    super.key,
    required this.trailingIcon,
    required this.backButtonText,
    this.onTrailingIconTap,
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
          ),
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
                    GSPressable(
                      onPress: () {
                        themeProvider.toggleTheme();
                      },
                      child: GSIcon(
                        icon: Theme.of(context).brightness == Brightness.dark
                            ? Icons.light_mode
                            : Icons.dark_mode,
                        size: GSSizes.$lg,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    GSPressable(
                      onPress: widget.onTrailingIconTap,
                      child: const GSIcon(
                        icon: Icons.more_vert,
                        size: GSSizes.$lg,
                      ),
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
