import 'package:flutter/material.dart';
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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          elevation: 0,
          currentIndex: selectedIndex,
          onTap: _onTabSelected,
          items: [
            _buildBottomNavBarItem('Home', Icons.home),
            _buildBottomNavBarItem('Saved', Icons.save),
            _buildBottomNavBarItem('Search', Icons.search),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavBarItem(String text, IconData icon) {
    return BottomNavigationBarItem(
      icon: CircleAvatar(
        backgroundColor: Colors.white,
        child: Icon(
          icon,
          color: Colors.black,
        ),
      ),
      label: text,
    );
  }
}
