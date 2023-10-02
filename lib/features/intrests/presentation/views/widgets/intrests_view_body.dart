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
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Select Interests',
                  style: StylesOfText.textStyle25,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: interestsList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  color: kMyWhiteColor,
                                  borderRadius: BorderRadius.circular(80),
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      interestsList[index].title,
                                      style:
                                          const TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
