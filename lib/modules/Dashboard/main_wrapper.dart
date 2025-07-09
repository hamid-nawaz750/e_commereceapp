import 'package:e_commereceapp/modules/Dashboard/controllers/navigation_controller.dart';
import 'package:e_commereceapp/modules/Dashboard/mian_screen.dart';
import 'package:e_commereceapp/modules/Dashboard/profile_screen.dart';
import 'package:e_commereceapp/modules/Dashboard/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainWrapper extends StatelessWidget {
  MainWrapper({super.key}) {
    Get.put(NavigationController());
  }
  //final NavigationController navigationController = NavigationController();

  final List<Widget> screens = [MainScreen(), ProfileScreen(), SettingScreen()];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationController>(
      builder: (controler) {
        return Scaffold(
          appBar: AppBar(title: Text('E_commerece App'), centerTitle: true),
          body: screens[controler.selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controler.selectedIndex,
            onTap: controler.changeTab,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'profile',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'setting',
              ),
            ],
          ),
        );
      },
    );
  }
}
