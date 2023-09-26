import 'package:flutter/material.dart';
import 'package:news_app/features/interests/presentation/views/views_model/titels_model.dart';

import '../../../../../core/utlis/const_colors.dart';
import '../../../../../core/utlis/text_style.dart';

class SelectItem extends StatelessWidget {
  const SelectItem({
    super.key,
    required this.interestsTitles,
  });
  final InterestsTitles interestsTitles;
  @override
  Widget build(BuildContext context) {
    return Padding(
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
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(80),
                  topLeft: Radius.circular(80),
                  bottomRight: Radius.circular(80),
                  topRight: Radius.circular(80),
                ),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    interestsTitles.titleOfInterests,
                    style: StylesOfText.textStyle18,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
