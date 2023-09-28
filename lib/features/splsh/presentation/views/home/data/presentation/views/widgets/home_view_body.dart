import 'package:flutter/material.dart';
import 'cusomt_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            CusomtAppBar(),
          ],
        ),
      ),
    ));
  }
}
