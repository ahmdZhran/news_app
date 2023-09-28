import 'package:flutter/material.dart';
import 'package:news_app/core/utlis/const_colors.dart';
import 'package:news_app/core/utlis/text_style.dart';
import 'package:news_app/core/widgets/custom_logo.dart';

import 'cusomt_app_bar.dart';
import 'custom_search_icon.dart';

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
