import 'package:flutter/material.dart';

import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
            body: Padding(
      padding: EdgeInsets.all(17.0),
      child: Column(
        children: [
          CustomAppBar(),
        ],
      ),
    )));
  }
}
