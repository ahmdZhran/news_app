import 'package:flutter/material.dart';

import '../../../../../../../../../core/models/icon_bottom_bar.dart';
import '../../../../../../../../saved_item/presentation/view/saved_item.dart';
import '../../../../../../../../search/presentation/views/search_view.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  int selectedIndex = 0;
  final screens = [
    const TestView(),
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

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
            body: Column(
      children: [
        CustomAppBar(),
      ],
    )));
  }
}
