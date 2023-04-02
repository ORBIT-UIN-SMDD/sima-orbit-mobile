import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sima_orbit_mobile/const/color.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/logosima.png",
                    width: 250,
                  ),
                  Text(
                    "SISTEM INFORMASI MANAJEMEN \nDAN ADMINISTRASI ORBIT",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                InkWell(
                  onTap: () => context.goNamed("login"),
                  child: Container(
                    height: 45,
                    width: 300,
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: PrimaryColor,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                SizedBox(height: 24),
                InkWell(
                  onTap: () => context.goNamed("register"),
                  child: Container(
                    height: 45,
                    width: 300,
                    child: Center(
                      child: Text(
                        "Register",
                        style: TextStyle(
                            color: PrimaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: PrimaryColor, width: 3),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Powered By",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 8),
                    Image.asset(
                      "assets/images/logoorbit.png",
                      width: 70,
                    )
                  ],
                ),
                SizedBox(height: 15),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
