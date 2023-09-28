import 'package:flutter/material.dart';

import '../../../../../core/utlis/text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: ElevatedButton(
          child: const Text(
            'Submit',
            style: StylesOfText.textStyle16,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
