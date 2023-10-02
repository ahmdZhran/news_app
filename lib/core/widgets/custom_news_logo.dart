import 'package:flutter/material.dart';

class CustomNewsLogo extends StatelessWidget {
  const CustomNewsLogo({
    super.key,
    required this.width,
    required this.hight,
    required this.fontSize,
  });
  final double width;
  final double hight;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: hight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Text(
        ' N',
        style: TextStyle(
          fontSize: fontSize,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontFamily: 'Skranji',
        ),
      ),
    );
  }
}
