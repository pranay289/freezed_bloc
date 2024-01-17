import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_bloc/features/home/presentation/screens/home.dart';
import 'package:sample_bloc/features/home/presentation/screens/second_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellKey = GlobalKey<NavigatorState>();

class AppRoutes {
  AppRoutes._();

  static final instance = AppRoutes._();

  static final routes = GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: "/",
      redirect: (context, state) {
        return null;
      },
      routes: [
        // ShellRoute(
        //     navigatorKey: _shellKey,
        //     builder: (context, state, child) {
        //       return child;
        //     },
        //     routes: [
        //       GoRoute(
        //         path: '/',
        //         builder: (context, state) => const HomeScreen(),
        //       ),
        //       GoRoute(
        //         path: "/second",
        //         builder: (context, state) => const MySecondScreen(),
        //       ),
        //     ]),
        GoRoute(
          path: '/',
          name: "first",
          builder: (context, state) =>  MySecondScreen(),
          routes: [
            GoRoute(
              name: "second",
              path:"second",
              builder:(context, state) => const HomeScreen(),
            ),
          ]
        ),
        //  GoRoute(
        //       path:"/second",
        //       builder:(context, state) => const MySecondScreen(),
        //     ),
      ]);
}
