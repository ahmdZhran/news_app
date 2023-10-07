import 'package:flutter/material.dart';
import 'package:news_app/features/bottom_bar/presentation/view/bottom_navigation_controller.dart.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return const BottomNavigationController();
  }
}
