import 'package:flutter/material.dart';
import 'package:news_app/core/utlis/const_colors.dart';
import 'package:news_app/core/utlis/text_style.dart';

import 'linterests_list_view.dart';

class IntersetsViewBody extends StatelessWidget {
  const IntersetsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 10),
              child: Text(
                'Select Interests',
                style: StylesOfText.textStyle25,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const InterestsListView(),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                child: const Text(
                  'Submit',
                  style: StylesOfText.textStyle16,
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
