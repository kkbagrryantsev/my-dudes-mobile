import 'package:flutter/material.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          label: 'Карта',
          icon: Icon(Icons.map_outlined),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message_outlined),
          label: 'Мессенжер',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
        BottomNavigationBarItem(
          label: 'Миты',
          icon: Icon(Icons.meeting_room),
        ),
        BottomNavigationBarItem(
          label: 'Сервисы',
          icon: Icon(Icons.grid_view),
        ),
      ],
      showUnselectedLabels: true,
      iconSize: 30
      // Customize the font size and other styles as needed
    );
  }
}
