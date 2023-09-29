import 'package:flutter/material.dart';

import '../../../../core/models/icon_bottom_bar.dart';
import '../../../saved_item/presentation/view/saved_item.dart';
import '../../../search/presentation/views/search_view.dart';
import '../../../splsh/presentation/views/home/data/presentation/views/widgets/home_view_body.dart';

class BottomNavigationController extends StatefulWidget {
  const BottomNavigationController({super.key});

  @override
  State<BottomNavigationController> createState() =>
      _BottomNavigationControllerState();
}

class _BottomNavigationControllerState
    extends State<BottomNavigationController> {
  int selectedIndex = 0;
  final screens = [
    const HomeViewBody(),
    const SearchView(),
    const SavedItem(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(color: Colors.orange),
        child: SizedBox(
          height: 80,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconBottomBar(
                  text: 'Home',
                  icon: Icons.home,
                  selected: selectedIndex == 0,
                  onPressed: () {
                    setState(() {
                      selectedIndex = 0;
                    });
                  },
                ),
                IconBottomBar(
                  text: 'Saved',
                  icon: Icons.save,
                  selected: selectedIndex == 1,
                  onPressed: () {
                    setState(() {
                      selectedIndex = 1;
                    });
                  },
                ),
                IconBottomBar(
                  text: 'search',
                  icon: Icons.search,
                  selected: selectedIndex == 2,
                  onPressed: () {
                    setState(() {
                      selectedIndex = 2;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
