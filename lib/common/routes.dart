import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sima_orbit_mobile/pages/auth/auto_login.dart';
import 'package:sima_orbit_mobile/pages/auth/login_page.dart';
import 'package:sima_orbit_mobile/pages/auth/register_page.dart';
import 'package:sima_orbit_mobile/pages/bottom_navigation.dart';
import 'package:sima_orbit_mobile/pages/camera.dart';
import 'package:sima_orbit_mobile/pages/intro_page.dart';
import 'package:sima_orbit_mobile/pages/onboarding_page.dart';

final GoRouter routes = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/autoLogin',
      name: 'auto_login',
      builder: (BuildContext context, GoRouterState state) {
        return AutoLogin();
      },
    ),
    GoRoute(
      path: '/onboarding',
      name: "onboarding",
      builder: (BuildContext context, GoRouterState state) {
        return onBoardingPage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'intro',
          name: 'intro',
          builder: (BuildContext context, GoRouterState state) {
            return const IntroPage();
          },
          routes: [
            GoRoute(
              path: 'login',
              name: 'login',
              builder: (BuildContext context, GoRouterState state) {
                return LoginPage();
              },
            ),
            GoRoute(
                path: 'register',
                name: 'register',
                builder: (BuildContext context, GoRouterState state) {
                  return RegisterPage();
                },
                routes: [
                  GoRoute(
                    path: 'camera',
                    name: 'camera',
                    builder: (BuildContext context, GoRouterState state) {
                      return Camera();
                    },
                  ),
                ]),
          ],
        ),
      ],
    ),
    GoRoute(
      path: '/',
      name: "home_page",
      builder: (BuildContext context, GoRouterState state) {
        return BottomNavigation();
      },
    ),
  ],
  initialLocation: "/autoLogin",
  debugLogDiagnostics: true,
  routerNeglect: true,
);
