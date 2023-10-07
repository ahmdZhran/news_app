import 'package:flutter/material.dart';
import 'package:news_app/core/models/titels_model.dart';
import 'package:news_app/core/utlis/const_colors.dart';

import 'widgets/interests_view_body.dart';

class InterstesView extends StatelessWidget {
  const InterstesView({super.key, required this.interestsTitles});
  final InterestsTitles interestsTitles;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMyPinkColor,
      body: IntersetsViewBody(
        interestTitels: interestsTitles,
      ),
    );
  }
}
