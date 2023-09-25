import 'package:flutter/widgets.dart';

import 'select_item.dart';

class InterestsListView extends StatelessWidget {
  const InterestsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return const SelectItem();
        },
      ),
    );
  }
}
