import 'package:flutter/widgets.dart';
import 'select_item.dart';

class InterestsListView extends StatelessWidget {
  const InterestsListView({super.key});
  final List<String> titles = const [
    'Health',
    'Technology',
    'Finance',
    'Sports',
    'Politics',
    'Business',
    'Fashoin',
    'Education',
    'E-commerce',
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return SelectItem(title: titles[index]);
        },
      ),
    );
  }
}
