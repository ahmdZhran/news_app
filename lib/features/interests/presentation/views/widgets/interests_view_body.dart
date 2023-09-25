import 'package:flutter/material.dart';
import 'package:news_app/core/utlis/text_style.dart';

class IntersetsViewBody extends StatelessWidget {
  const IntersetsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 30, top: 10, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Select Interests',
              style: StylesOfText.textStyle25,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
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
            )
          ],
        ),
      ),
    );
  }
}
