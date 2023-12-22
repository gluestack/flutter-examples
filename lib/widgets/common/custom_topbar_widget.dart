import '../../public.dart';

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
            xs: GSStyle(isVisible: false),
            sm: GSStyle(isVisible: false),
            md: GSStyle(
              isVisible: true,
            ),
            lg: GSStyle(
              isVisible: true,
            ),
            height: 60,
          ),
          child: GSHStack(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GSBox(
                style: GSStyle(
                  xs: GSStyle(isVisible: false),
                  sm: GSStyle(isVisible: false),
                  md: GSStyle(isVisible: true),
                  lg: GSStyle(isVisible: true),
                ),
                child: _mediumScreenLeftIcon(context),
              ),
              GSBox(
                style: GSStyle(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  xs: GSStyle(
                    isVisible: false,
                  ),
                  sm: GSStyle(
                    isVisible: false,
                  ),
                  md: GSStyle(
                    isVisible: true,
                  ),
                  lg: GSStyle(
                    isVisible: true,
                  ),
                ),
                child: _mediumScreenRightIcon(themeProvider, context),
              ),
            ],
          ),
        );
      },
    );
  }

  GSHStack _mediumScreenRightIcon(
      ThemeProvider themeProvider, BuildContext context) {
    return GSHStack(
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
    );
  }

  GSHStack _mediumScreenLeftIcon(BuildContext context) {
    return GSHStack(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GSIcon(
          icon: Icons.menu,
          size: GSSizes.$sm,
          style: GSStyle(
            sm: GSStyle(
              isVisible: false,
            ),
          ),
        ),
        const GSImage(
          path: GSStringConstants.kNativeBaseLogo,
          imageType: GSImageType.network,
          size: GSSizes.$xl,
          fit: BoxFit.fitWidth,
        ),
        const StartupIcon(),
      ],
    );
  }
}
