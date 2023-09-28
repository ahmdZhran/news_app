import 'package:flutter/material.dart';

class IconBottomBar extends StatefulWidget {
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
  State<IconBottomBar> createState() => _IconBottomBarState();
}

class _IconBottomBarState extends State<IconBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: widget.onPressed,
          icon: Icon(
            widget.icon,
            color: widget.selected ? Colors.white : Colors.blue,
          ),
        ),
        Text(widget.text)
      ],
    );
  }
}
