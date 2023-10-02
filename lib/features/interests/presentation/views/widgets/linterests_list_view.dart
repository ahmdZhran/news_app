import 'package:flutter/widgets.dart';
import '../../../../../core/models/titels_model.dart';
import 'select_item.dart';

class InterestsListView extends StatefulWidget {
  const InterestsListView({super.key});

  @override
  State<InterestsListView> createState() => _InterestsListViewState();
}

class _InterestsListViewState extends State<InterestsListView> {
  final List<InterestsTitles> titles = const [
    InterestsTitles(titleOfInterests: 'Health'),
    InterestsTitles(titleOfInterests: 'Technology'),
    InterestsTitles(titleOfInterests: 'Finance'),
    InterestsTitles(titleOfInterests: 'Sports'),
    InterestsTitles(titleOfInterests: 'Politics'),
    InterestsTitles(titleOfInterests: 'Business'),
    InterestsTitles(titleOfInterests: 'Fashoin'),
    InterestsTitles(titleOfInterests: 'Education'),
    InterestsTitles(titleOfInterests: 'E-commerce'),
  ];

  List<InterestsTitles> selectedInterests = [];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return SelectItem(
            interestsTitles: titles[index],
          );
        },
      ),
    );
  }
}
