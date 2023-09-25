import 'package:flutter/material.dart';
import 'package:news_app/core/utlis/text_style.dart';

import 'linterests_list_view.dart';
import 'select_item.dart';

class IntersetsViewBody extends StatelessWidget {
  const IntersetsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10),
              child: Text(
                'Select Interests',
                style: StylesOfText.textStyle25,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InterestsListView()
          ],
        ),
      ),
    );
  }
}
