import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sima_orbit_mobile/const/color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 2), () {
      context.goNamed("auto_login");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/ilustrasi/bgsplash.png"),
              fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/logosima.png",
                  width: 250,
                ),
              ),
            ),
            Positioned.fill(
              bottom: 20,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "POWERED BY",
                      style: TextStyle(
                          color: whiteColor, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    Image.asset(
                      "assets/images/logoorbit.png",
                      width: 80,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
