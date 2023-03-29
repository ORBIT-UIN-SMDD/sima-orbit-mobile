import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:go_router/go_router.dart';
import 'package:sima_orbit_mobile/const/color.dart';
import 'package:sima_orbit_mobile/pages/auth/login_page.dart';
import 'package:sima_orbit_mobile/pages/intro_page.dart';

class onBoardingPage extends StatelessWidget {
  const onBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: 'Start Now',
      finishButtonTextStyle: TextStyle(fontSize: 18),
      onFinish: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return IntroPage();
          },
        ));
        context.goNamed("intro");
      },
      finishButtonColor: PrimaryColor,
      skipTextButton: Text(
        'Skip',
        style: TextStyle(
          fontSize: 16,
          color: PrimaryColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailingFunction: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => LoginPage(),
          ),
        );
      },
      controllerColor: PrimaryColor,
      totalPage: 3,
      headerBackgroundColor: Colors.white,
      pageBackgroundColor: Colors.white,
      background: [
        Image.asset(
          'assets/images/slide1.png',
          height: 380,
        ),
        Image.asset(
          'assets/images/slide2.png',
          height: 350,
        ),
        Column(
          children: [
            SizedBox(height: 70),
            Image.asset(
              'assets/images/slide3.png',
              height: 250,
            ),
          ],
        ),
      ],
      speed: 1.8,
      pageBodies: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 480,
              ),
              Text(
                'Data Keanggotaan',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: PrimaryColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Berisi Semua Data Pengguna Aplikasi SIMA Orbit Baik Anggota, Pengurus Maupun Alumni',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 480,
              ),
              Text(
                'INSTRUKSI & KEPANITIAAN',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: PrimaryColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Berisi semua data surat instruksi, surat keputusan  baik anggota maupun pengurus',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 480,
              ),
              Text(
                'AGENDA & PENGUMUMAN',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: PrimaryColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Berisi Tentang Agenda Yang Akan dilaksanakan Oleh UKM ORBIT',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
