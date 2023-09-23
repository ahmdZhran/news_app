import 'package:flutter/material.dart';

class CustomNewsLogo extends StatelessWidget {
  const CustomNewsLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: const Text(
        ' N',
        style: TextStyle(
          fontSize: 43,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontFamily: 'Skranji',
        ),
      ),
    );
  }
}
