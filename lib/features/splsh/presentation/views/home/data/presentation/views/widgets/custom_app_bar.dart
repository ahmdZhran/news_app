import 'package:flutter/material.dart';

import '../../../../../../../../../core/utlis/text_style.dart';
import '../../../../../../../../../core/widgets/custom_logo.dart';
import 'custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomNewsLogo(
          width: 43,
          hight: 43,
          fontSize: 30,
        ),
        const Text(
          'ews',
          style: StylesOfText.textStyle30,
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const CustomSearchIcon(),
        ),
      ],
    );
  }
}
