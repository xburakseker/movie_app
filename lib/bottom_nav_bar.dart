import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:movie_app/mobx/mobx_viewmodel.dart';
import 'package:movie_app/ui/pages/home.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final MobxModelView vm = MobxModelView();

  List<Widget> pages = [const Home(), Container(), Container()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: vm.key,
      resizeToAvoidBottomInset: false,
      body: Observer(builder: (_) {
        return Center(child: pages[vm.selectedIndex]);
      }),
      bottomNavigationBar: Observer(
        builder: (context) {
          return BottomNavigationBar(
              onTap: (index) => vm.onItemTapped(index),
              currentIndex: vm.selectedIndex,
              unselectedIconTheme: const IconThemeData(color: Colors.blue),
              selectedIconTheme: const IconThemeData(color: Colors.white),
              backgroundColor: Colors.black,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
                BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
                BottomNavigationBarItem(icon: Icon(Icons.save_rounded), label: 'Watch List'),
              ]);
        },
      ),
    );
  }
}
