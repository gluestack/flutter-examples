import 'package:flutter/material.dart';
import 'package:gluestack_demo/main.dart';
import 'package:gluestack_demo/screens/qr_code/qr_code_screen.dart';
import 'package:gluestack_demo/screens/seller/seller_details_screen.dart';
import 'package:gluestack_demo/screens/tutor/tutor_profile_screen.dart';
import 'package:gluestack_demo/screens/user/user_profile_screen.dart';

import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: "user-profile",
          builder: (BuildContext context, GoRouterState state) {
            return const UserProfileScreen();
          },
        ),
        GoRoute(
          path: "tutor-profile",
          builder: (context, state) => const TutorProfileScreen(),
        ),
        GoRoute(
          path: "seller-details",
          builder: (context, state) => const SellerDetailsScreen(),
        ),
        GoRoute(
          path: "qr-code",
          builder: (context, state) => const QRCodeScreen(),
        ),
      ],
    ),
  ],
);
