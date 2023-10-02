import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/splsh_view/presentaion/view/splsh_view.dart';

abstract class AppRouter {
  static const kHomeView = '/HomeView';
  static const kInterestsView = '/InterstsView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplshView(),
    ),
    GoRoute(
      path: 'HomeView',
      builder: (context, state) => const SplshView(),
    ),
  ]);
}
