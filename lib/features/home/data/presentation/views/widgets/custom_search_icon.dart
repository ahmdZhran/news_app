import 'package:flutter/widgets.dart';

import '../../../../../../../../../core/utlis/const_colors.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Image.asset(
        'assets/icons/search.png',
        color: kMyWhiteColor,
      ),
    );
  }
}
