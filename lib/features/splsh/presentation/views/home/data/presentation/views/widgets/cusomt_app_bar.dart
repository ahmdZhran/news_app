import 'package:flutter/material.dart';

import '../../../../../../../../../core/utlis/text_style.dart';
import '../../../../../../../../../core/widgets/custom_logo.dart';
import 'custom_search_icon.dart';

class CusomtAppBar extends StatelessWidget {
  const CusomtAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomNewsLogo(),
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
