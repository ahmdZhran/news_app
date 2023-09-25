import 'package:flutter/material.dart';

import '../../../../../core/utlis/const_colors.dart';
import '../../../../../core/utlis/text_style.dart';

class SelectItem extends StatelessWidget {
  const SelectItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 65,
          width: 65,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
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
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Health',
                  style: StylesOfText.textStyle18,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
