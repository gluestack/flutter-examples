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
            xs: GSStyle(
              isVisible: true,
              bg: $GSColors.primary300,
            ),
            sm: GSStyle(
              bg: $GSColors.primary300,
              isVisible: true,
            ),
            md: GSStyle(
              isVisible: false,
            ),
            lg: GSStyle(
              isVisible: false,
            ),
            dark: GSStyle(
              xs: GSStyle(
                isVisible: true,
                bg: $GSColors.darkBlue200,
              ),
              sm: GSStyle(
                isVisible: true,
                bg: $GSColors.darkBlue200,
              ),
              md: GSStyle(
                isVisible: false,
              ),
              lg: GSStyle(
                isVisible: false,
              ),
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
                        icon: GSTheme.of(context).brightness == Brightness.dark
                            ? Icons.light_mode
                            : Icons.dark_mode,
                        size: GSIconSizes.$lg,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    GSPressable(
                      onPress: widget.onTrailingIconTap,
                      child: const GSIcon(
                        icon: Icons.more_vert,
                        size: GSIconSizes.$lg,
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
