import 'package:flutter/material.dart';
import '../../../../core/models/icon_bottom_bar.dart';
import '../../../saved_item/presentation/view/saved_item.dart';
import '../../../search/presentation/views/search_view.dart';
import '../../../splsh/presentation/views/home/data/presentation/views/widgets/home_view_body.dart';

class BottomNavigationController extends StatefulWidget {
  const BottomNavigationController({Key? key}) : super(key: key);
  @override
  State<BottomNavigationController> createState() =>
      _BottomNavigationControllerState();
}

class _BottomNavigationControllerState
    extends State<BottomNavigationController> {
  int selectedIndex = 0;
  final List<Widget> screens = [
    const HomeViewBody(),
    const SearchView(),
    const SavedItem(),
  ];
  void _onTabSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.orange,
        height: 80,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildBottomBarButton('Home', Icons.home, 0),
              _buildBottomBarButton('Saved', Icons.save, 1),
              _buildBottomBarButton('Search', Icons.search, 2),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBottomBarButton(String text, IconData icon, int index) {
    return IconBottomBar(
      text: text,
      icon: icon,
      selected: selectedIndex == index,
      onPressed: () => _onTabSelected(index),
    );
  }
}
