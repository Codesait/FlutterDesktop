import 'package:flutter/material.dart';
import 'package:projects/model/side_menu_nav_item.dart';

class Nav{
  List<SideNavItem> navMenuItems = [
    SideNavItem(index: 0, icons: Icons.dashboard_outlined, title: 'Dashboard'),
    SideNavItem(index: 1, icons: Icons.search, title: 'Discover Recipes'),
    SideNavItem(index: 2, icons: Icons.inbox_outlined, title: 'My Recipes'),
    SideNavItem(index: 3, icons: Icons.person_outline, title: 'Clients'),
    SideNavItem(index: 4, icons: Icons.fact_check_outlined, title: 'Check-Ins'),
    SideNavItem(index: 5, icons: Icons.chat, title: 'Messages'),

  ];


  List<SideNavItem> navProfileItems = [
    SideNavItem(index: 6, icons: Icons.account_circle_outlined, title: 'Account'),
    SideNavItem(index: 7, icons: Icons.help_outline, title: 'Help & Support'),
    SideNavItem(index: 8, icons: Icons.logout, title: 'Log Out'),


  ];
}