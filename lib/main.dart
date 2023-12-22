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
          primary300: Theme.of(context).colorScheme.primary,
          primary400: Theme.of(context).colorScheme.primary,
          primary500: Theme.of(context).colorScheme.primary,
          primary600: Theme.of(context).colorScheme.primary,
          primary700: Theme.of(context).colorScheme.primary,
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
                  textStyle: const TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 20,
                    color: Color.fromARGB(255, 4, 65, 116),
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
                  textStyle: const TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 20,
                    color: Color.fromARGB(255, 4, 65, 116),
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
                  textStyle: const TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 20,
                    color: Color.fromARGB(255, 4, 65, 116),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                text: 'Seller Details Screen',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
