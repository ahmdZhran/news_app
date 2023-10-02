import 'package:flutter/material.dart';
import 'package:news_app/core/utlis/const_colors.dart';
import 'package:news_app/models/intrests_models.dart';

import '../../../../../core/utlis/text_styles.dart';

class IntrestsViewBody extends StatefulWidget {
  const IntrestsViewBody({super.key});

  @override
  State<IntrestsViewBody> createState() => _IntrestsViewBodyState();
}

class _IntrestsViewBodyState extends State<IntrestsViewBody> {
  List<InterestsModels> interestsList = [
    InterestsModels('Health', false),
    InterestsModels('Technology', false),
    InterestsModels('Finance', false),
    InterestsModels('Sports', false),
    InterestsModels('Politics', false),
    InterestsModels('Business', false),
    InterestsModels('Fashoin', false),
    InterestsModels('Education', false),
    InterestsModels('E-commerce', false),
  ];
  List<InterestsModels> selectedInterests = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kMyPinkColor,
        body: ListView.builder(
          itemBuilder: (context, index) {
            return null;
          },
        ));
  }
}
