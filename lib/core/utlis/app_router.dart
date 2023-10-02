import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/features/home/presentation/view/home.dart';

import '../../features/intrests/presentation/views/intrests_view.dart';
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
      path: kInterestsView,
      builder: (context, state) => const InterestsView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeVeiw(),
    ),
  ]);
}
