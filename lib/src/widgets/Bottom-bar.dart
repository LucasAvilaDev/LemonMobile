import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:lemon/src/pages/credencial_page.dart';
import 'package:lemon/src/pages/home_page.dart';
import 'package:lemon/src/pages/mis_reservas_page.dart';




class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  BottomBarState createState() => BottomBarState();
}



class BottomBarState extends State<BottomBar> {
  int currentPageIndex = 0;

  final List<Widget> _pages = [
  const HomeScreen(),
  const MiCredencialPage(),
  const ScheduledClassesPage(),
//const ProfileScreen(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPageIndex, // Muestra la página en base al índice seleccionado
        children: _pages, // Las páginas de tu aplicación
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex, // Índice seleccionado
        destinations: const <NavigationDestination>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.calendar_month),
            icon: Icon(Icons.calendar_month_outlined),
            label: 'Mis reservas',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.fitness_center),
            icon: Icon(Icons.fitness_center_outlined),
            label: 'Entrenamientos',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon: Icon(Icons.person_outline),
            label: 'Mi Perfil',
          ),
        ],
      ),
    );
  }
}

