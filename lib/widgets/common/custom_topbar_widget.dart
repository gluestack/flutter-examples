import '../../public.dart';

class CustomTopBarWidget extends StatefulWidget {
  final String profileImageUrl;
  final IconData trailingIcon;

  const CustomTopBarWidget({
    super.key,
    required this.profileImageUrl,
    required this.trailingIcon,
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
            dark: GSStyle(
              xs: GSStyle(isVisible: false),
              sm: GSStyle(isVisible: false),
              md: GSStyle(
                isVisible: true,
                bg: $GSColors.darkBlue200,
              ),
              lg: GSStyle(
                isVisible: true,
                bg: $GSColors.darkBlue200,
              ),
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
            size: GSIconSizes.$lg,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        GSImage(
          path: widget.profileImageUrl,
          imageType: GSImageType.network,
          borderRadius: GSImageRadius.$full,
          size: GSImageSizes.$2xs,
          fit: BoxFit.cover,
        ),
      ],
    );
  }

  GSHStack _mediumScreenLeftIcon(BuildContext context) {
    return GSHStack(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GSIcon(
          icon: Icons.menu,
          size: GSIconSizes.$sm,
          style: GSStyle(
            sm: GSStyle(
              isVisible: false,
            ),
          ),
        ),
        GSBox(
          style: GSStyle(padding: const EdgeInsets.only(left: 10, top: 2)),
          child: GSImage(
            path: Theme.of(context).brightness == Brightness.dark
                ? GSStringConstants.kGluestackDarkLogo
                : GSStringConstants.kGluestackLightLogo,
            imageType: GSImageType.asset,
            size: GSImageSizes.$xl,
            fit: BoxFit.fitWidth,
          ),
        ),
      ],
    );
  }
}
