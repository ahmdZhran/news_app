import 'package:flutter/material.dart';

class CustomInterestItem extends StatelessWidget {
  final String title;
  final Color backgroundColor;

  const CustomInterestItem({
    required this.title,
    required this.backgroundColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(80),
        ),
        padding: const EdgeInsets.only(left: 10.0),
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
