import 'package:go_router/go_router.dart';
import 'package:news_app/features/interests/presentation/views/interests_view.dart';

import 'package:news_app/features/splsh/presentation/views/splsh_view.dart';

import '../../features/home/data/presentation/views/home.dart';

abstract class AppRouter {
  static const kHomeView = '/HomeView';
  static const kInterestsView = '/InterstsView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplshView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    ),
    // GoRoute(
    //   path: kInterestsView,
    //   builder: (context, state) => const InterstesView(),

    // ),
  ]);
}
