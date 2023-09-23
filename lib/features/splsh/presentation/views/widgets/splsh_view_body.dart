import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_logo.dart';

class SplshViewBody extends StatefulWidget {
  const SplshViewBody({super.key});

  @override
  State<SplshViewBody> createState() => _SplshViewBodyState();
}

class _SplshViewBodyState extends State<SplshViewBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(width: 20.0, height: 100.0),
            const CustomNewsLogo(),
            const SizedBox(width: 20.0, height: 100.0),
            DefaultTextStyle(
              style: const TextStyle(
                fontSize: 40.0,
                fontFamily: 'Horizon',
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  RotateAnimatedText(
                    'AWESOME',
                  ),
                  RotateAnimatedText(
                    'OPTIMISTIC',
                  ),
                  RotateAnimatedText(
                    'DIFFERENT',
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
