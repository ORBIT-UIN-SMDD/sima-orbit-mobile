import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sima_orbit_mobile/const/color.dart';
import 'package:sima_orbit_mobile/pages/home_page.dart';
import 'package:sima_orbit_mobile/pages/kta_page.dart';
import 'package:sima_orbit_mobile/pages/profile_page.dart';
import 'package:sima_orbit_mobile/provider/bottom_navigation_provider.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    KtaPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(
          Provider.of<BottomNavigationProvider>(context).selectedIndex),
      bottomNavigationBar: CurvedNavigationBar(
        color: PrimaryColor,
        backgroundColor: whiteColor,
        height: 55,
        items: <Widget>[
          Icon(Icons.home, color: whiteColor),
          Icon(Icons.card_membership, color: whiteColor),
          Icon(Icons.person_2_rounded, color: whiteColor)
        ],
        onTap: (value) =>
            Provider.of<BottomNavigationProvider>(context, listen: false)
                .onTap(value),
      ),
    );
  }
}
