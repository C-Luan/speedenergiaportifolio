import 'package:flutter/material.dart';

class MenuBarHome extends StatelessWidget {
  final ValueChanged<int> onMenuClick;
  const MenuBarHome({super.key, required this.onMenuClick});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28, right: 28),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // const Image(
          //     height: 75,
          //     image: AssetImage(
          //       'assets/logo/logo-sem-fundo.png',
          //     )),
          Row(
            children: [
              TextButton(
                onPressed: () => onMenuClick(1),
                child: const Text(
                  'Início',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
              TextButton(
                onPressed: () => onMenuClick(2),
                child: const Text(
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  'Valores',
                ),
              ),
              TextButton(
                onPressed: () => onMenuClick(3),
                child: const Text(
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  'Serviços',
                ),
              ),
              TextButton(
                onPressed: () => onMenuClick(4),
                child: const Text(
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  'Feedback',
                ),
              ),
              TextButton(
                onPressed: () => onMenuClick(5),
                child: const Text(
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  'about',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
