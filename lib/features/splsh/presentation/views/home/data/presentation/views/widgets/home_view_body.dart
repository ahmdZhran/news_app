import 'package:flutter/material.dart';
import 'package:news_app/features/search/presentation/views/search_view.dart';
import 'cusomt_app_bar.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  int _selectedIndex = 0;
  final screens = [
    const SearchView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(color: Colors.amber),
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
                    selected: _selectedIndex == 0,
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 0;
                      });
                    },
                  ),
                  IconBottomBar(
                    text: 'Add',
                    icon: Icons.add,
                    selected: _selectedIndex == 1,
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 1;
                      });
                    },
                  ),
                  IconBottomBar(
                    text: 'search',
                    icon: Icons.access_alarm_rounded,
                    selected: _selectedIndex == 2,
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 2;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              children: [
                CusomtAppBar(),
              ],
            ),
          ),
        ));
  }
}

// class BottomNavigationBar extends StatefulWidget {
//   const BottomNavigationBar({super.key});

//   @override
//   State<BottomNavigationBar> createState() => _BottomNavigationBarState();
// }

// class _BottomNavigationBarState extends State<BottomNavigationBar> {

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(color: Colors.amber),
//       child: SizedBox(
//         height: 80,
//         width: MediaQuery.of(context).size.width,
//         child: Padding(
//           padding: const EdgeInsets.only(left: 25, right: 25),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               IconBottomBar(
//                 text: 'Home',
//                 icon: Icons.home,
//                 selected: _selectedIndex == 0,
//                 onPressed: () {
//                   setState(() {
//                     _selectedIndex = 0;
//                   });
//                 },
//               ),
//               IconBottomBar(
//                 text: 'Add',
//                 icon: Icons.add,
//                 selected: _selectedIndex == 1,
//                 onPressed: () {
//                   setState(() {
//                     _selectedIndex = 1;
//                   });
//                 },
//               ),
//               IconBottomBar(
//                 text: 'search',
//                 icon: Icons.access_alarm_rounded,
//                 selected: _selectedIndex == 2,
//                 onPressed: () {
//                   setState(() {
//                     _selectedIndex = 2;
//                   });
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class IconBottomBar extends StatelessWidget {
  const IconBottomBar(
      {super.key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed});
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: selected ? Colors.white : Colors.blue,
          ),
        ),
        Text(text)
      ],
    );
  }
}
