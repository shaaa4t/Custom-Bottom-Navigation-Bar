import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  final int defaultSelectedIndex;
  final Function(int) onChange;
  final List<IconData> iconList;
  final double sizeIcon;
  final Color selectedColor;
  CustomBottomNavBar({
    this.defaultSelectedIndex = 0,
    required this.onChange,
    required this.iconList,
    this.sizeIcon = 24,
    this.selectedColor = Colors.green,
  });

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;
  List<IconData> _iconList = [];

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.defaultSelectedIndex;
    _iconList = widget.iconList;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _navBarItemList = [];

    for (var i = 0; i < _iconList.length; i++) {
      _navBarItemList.add(buildNavBarItem(_iconList[i], i));
    }

    return Row(
      children: _navBarItemList,
    );
  }

  Widget buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        widget.onChange(index);
        _selectedIndex = index;
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width / _iconList.length,
        decoration: index == _selectedIndex
            ? BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 4, color: widget.selectedColor)),
                gradient: LinearGradient(colors: [
                  widget.selectedColor.withOpacity(0.3),
                  widget.selectedColor.withOpacity(0.015),
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
              )
            : BoxDecoration(),
        child: Icon(
          icon,
          color: index == _selectedIndex ? Colors.black : Colors.grey,
          size: widget.sizeIcon,
        ),
      ),
    );
  }
}
