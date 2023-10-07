import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../../core/models/titels_model.dart';
import '../../../../../core/utlis/const_colors.dart';
import '../../../../../core/utlis/text_style.dart';

class InterestsListView extends StatefulWidget {
  const InterestsListView({
    super.key,
    required this.interestsTitles,
  });

  final InterestsTitles interestsTitles;

  @override
  State<InterestsListView> createState() => _InterestsListViewState();
}

class _InterestsListViewState extends State<InterestsListView> {
  final List<InterestsTitles> titles = [
    // InterestsTitles(titleOfInterests: 'Health'),
    // InterestsTitles(titleOfInterests: 'Technology'),
    // InterestsTitles(titleOfInterests: 'Finance'),
    // InterestsTitles(titleOfInterests: 'Sports'),
    // InterestsTitles(titleOfInterests: 'Politics'),
    // InterestsTitles(titleOfInterests: 'Business'),
    // InterestsTitles(titleOfInterests: 'Fashoin'),
    // InterestsTitles(titleOfInterests: 'Education'),
    // InterestsTitles(titleOfInterests: 'E-commerce'),
    InterestsTitles('Health', false),
    InterestsTitles('Technology', false),
    InterestsTitles('Finance', false),
    InterestsTitles('Sports', false),
    InterestsTitles('Politics', false),
    InterestsTitles('Business', false),
    InterestsTitles('Fashoin', false),
    InterestsTitles('Education', false),
    InterestsTitles('E-commerce', false),
  ];

  List<InterestsTitles> selectedInterests = [];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: 65,
                    width: 65,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: kMyWhiteColor,
                    ),
                    child: Center(
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: kMyGreyColor,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(80),
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            widget.interestsTitles.titleOfInterests,
                            style: StylesOfText.textStyle18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
