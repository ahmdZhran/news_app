import 'package:flutter/material.dart';
import 'package:news_app/core/utlis/const_colors.dart';

class IntrestsViewBody extends StatefulWidget {
  const IntrestsViewBody({super.key});

  @override
  State<IntrestsViewBody> createState() => _IntrestsViewBodyState();
}

class _IntrestsViewBodyState extends State<IntrestsViewBody> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kMyPinkColor,
    );
  }
}
