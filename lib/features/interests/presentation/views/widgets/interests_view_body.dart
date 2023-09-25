import 'package:flutter/material.dart';
import 'package:news_app/core/utlis/text_style.dart';

class IntersetsViewBody extends StatelessWidget {
  const IntersetsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Text(
              'Select interests',
              style: StylesOfText.textStyle25,
            )
          ],
        ),
      ),
    );
  }
}
