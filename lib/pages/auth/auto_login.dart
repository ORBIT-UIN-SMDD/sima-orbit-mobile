import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sima_orbit_mobile/pages/bottom_navigation.dart';
import 'package:sima_orbit_mobile/pages/home_page.dart';
import 'package:sima_orbit_mobile/pages/onboarding_page.dart';

class AutoLogin extends StatelessWidget {
  const AutoLogin({Key? key}) : super(key: key);

  Future<bool> Token() async {
    final prefs = await SharedPreferences.getInstance();
    final String? token = prefs.getString('token');

    if (token != null) {
      print("TOKEN AUTHORIZATION : " + token);
      return true;
    } else {
      print("TOKEN AUTHORIZATION : " + "NULL");
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: Token(),
      builder: (context, AsyncSnapshot<bool> snapshot) {
        if (snapshot.hasData) {
          return snapshot.data! ? BottomNavigation() : onBoardingPage();
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
