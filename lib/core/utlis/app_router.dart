import 'package:go_router/go_router.dart';
import 'package:news_app/features/splsh/presentation/views/home/data/presentation/views/home.dart';
import 'package:news_app/features/splsh/presentation/views/splsh_view.dart';

abstract class AppRouter {
  static const kHomeView = '/HomeView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplshView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    ),
  ]);
}
