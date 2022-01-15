import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.grey),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications, color: Colors.grey),
          label: 'Notificacões',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat, color: Colors.grey),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.format_list_bulleted, color: Colors.grey),
          label: 'Pedidos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.send, color: Colors.grey),
          label: 'Entregues',
        ),
      ],
    );
  }
}
