import 'package:gluestack_demo/router/router.dart';
import 'package:gluestack_demo/utils/custom_colors.dart';
import 'package:go_router/go_router.dart';

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
      child: GSApp.router(
        themeMode: Provider.of<ThemeProvider>(context).themeMode,
        debugShowCheckedModeBanner: false,
        darkTheme: GSThemeData(
            brightness: Brightness.dark,
            scaffoldBackgroundColor: const Color(0xFF171717)),
        theme: GSThemeData(scaffoldBackgroundColor: Colors.white),
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        routerConfig: router,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GSVStack(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            context.go("/user-profile");
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
            context.go("/tutor-profile");
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
            context.go("/seller-details");
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
            context.go("/qr-code");
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
    );
  }
}
