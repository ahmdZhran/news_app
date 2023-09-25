import 'package:flutter/material.dart';
import 'package:news_app/core/utlis/text_style.dart';

import 'select_item.dart';

class IntersetsViewBody extends StatelessWidget {
  const IntersetsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 30, top: 10, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Interests',
              style: StylesOfText.textStyle25,
            ),
            SizedBox(
              height: 10,
            ),
            SelectItem()
          ],
        ),
      ),
    );
  }
}
