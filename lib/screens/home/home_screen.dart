import 'package:fintech/core/component/list_tile_widget.dart';
import 'package:fintech/core/utilities/colors.dart';
import 'package:fintech/gen/assets.gen.dart';
import 'package:fintech/screens/gold_plan.dart';
import 'package:fintech/screens/home_page.dart';
import 'package:fintech/screens/notification.dart';
import 'package:fintech/screens/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void onItemTapped(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: _navBarsItems(),
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.kPrimaryColor,
        unselectedItemColor: AppColors.kLightGreyColor,
        onTap: onItemTapped,
      ),
      body: _buildScreens().elementAt(_selectedIndex),
    );
  }

  List<BottomNavigationBarItem> _navBarsItems() {
    return [
      const BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.home),
        label: ("Home"),
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.backpack),
        label: ("Settings"),
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.notification_add_outlined),
        label: ("Notifications"),
      ),
      const BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.profile_circled),
        label: ("Account"),
      ),
    ];
  }

  List<Widget> _buildScreens() {
    return [
      const HomePage(),
      const GoldPlan(),
      const NotificationScreen(),
      const ProfileScreen(),
    ];
  }
}
