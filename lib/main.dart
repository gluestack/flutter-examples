import 'package:gluestack_demo/utils/custom_colors.dart';

import 'public.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return GluestackProvider(
      gluestackTokenConfig: GluestackTokenConfig(
        gsColorsToken: GSColorsToken(
          primary300: CustomColors.themeColor,
          primary400: CustomColors.themeColor,
          primary500: CustomColors.themeColor,
          primary600: CustomColors.themeColor,
          purple100: CustomColors.buttonTextColor,
          lightBlue50: CustomColors.contentLightBackgroundColor,
          lightBlue100: CustomColors.lightBackground,
          darkBlue50: CustomColors.contentDarkBackgroundColor,
          darkBlue100: CustomColors.darkBackground,
          darkBlue200: CustomColors.contentDarkBackground,
          backgroundLight800: Colors.grey.shade500,
          backgroundDark400: Colors.white,
          textDark200: Colors.white,
          backgroundLight200: Colors.grey.shade400.withOpacity(0.15),
        ),
      ),
      child: MaterialApp(
        navigatorKey: navigatorKey,
        title: 'Gluestack Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: Provider.of<ThemeProvider>(context).themeMode,
        home: GSVStack(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                navigatorKey.currentState!.push(
                  MaterialPageRoute(
                    builder: (context) => const UserProfileScreen(),
                  ),
                );
              },
              child: GSText(
                style: GSStyle(
                  textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: $GSFontSize.$lg,
                    color: $GSColors.blue700,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                text: 'User Profile Screen',
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                navigatorKey.currentState!.push(
                  MaterialPageRoute(
                    builder: (context) => const TutorProfileScreen(),
                  ),
                );
              },
              child: GSText(
                style: GSStyle(
                  textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: $GSFontSize.$lg,
                    color: $GSColors.blue700,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                text: 'Tutor Profile Screen',
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                navigatorKey.currentState!.push(
                  MaterialPageRoute(
                    builder: (context) => const SellerDetailsScreen(),
                  ),
                );
              },
              child: GSText(
                style: GSStyle(
                  textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: $GSFontSize.$lg,
                    color: $GSColors.blue700,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                text: 'Seller Details Screen',
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                navigatorKey.currentState!.push(
                  MaterialPageRoute(
                    builder: (context) => const QRCodeScreen(),
                  ),
                );
              },
              child: GSText(
                style: GSStyle(
                  textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: $GSFontSize.$lg,
                    color: $GSColors.blue700,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                text: 'QR Code Screen',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
