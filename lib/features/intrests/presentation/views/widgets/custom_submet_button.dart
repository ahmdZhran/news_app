import 'package:flutter/material.dart';
import 'package:news_app/core/utlis/text_styles.dart';

class CustomSubmitButton extends StatelessWidget {
  final String label;
  final Color buttonColor;
  final VoidCallback onPressed;

  const CustomSubmitButton({
    required this.label,
    required this.buttonColor,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: SizedBox(
        height: 60,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
          ),
          child: Text(
            label,
            style: StylesOfText.textStyle16,
          ),
        ),
      ),
    );
  }
}
