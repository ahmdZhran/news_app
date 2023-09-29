import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/bottom_bar/presentation/view/bottom_navigation_controller.dart.dart';
import 'package:news_app/features/bottom_bar/presentation/view/view_model/cubit/bottom_navigation_cubit.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavigationCubit(),
      child: const BottomNavigationController(),
    );
  }
}
