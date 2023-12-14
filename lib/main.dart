import 'package:flutter/material.dart';
import 'package:gluestack_demo/provider/theme_provider.dart';
import 'package:gluestack_demo/screens/seller_details_screen.dart';
import 'package:gluestack_demo/screens/tutor_profile_screen.dart';
import 'package:gluestack_demo/screens/user_profile_screen.dart';
import 'package:gluestack_ui/gluestack_ui.dart';
import 'package:provider/provider.dart';

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
      gluestackTokenConfig: GluestackTokenConfig(),
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
