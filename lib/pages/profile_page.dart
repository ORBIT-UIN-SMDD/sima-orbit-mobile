import 'package:flutter/material.dart';
import 'package:sima_orbit_mobile/const/color.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Stack(
                children: [
                  Image.asset("assets/ilustrasi/ilustrasi1.png"),
                  Positioned.fill(
                    left: 30,
                    child: Align(
                      alignment: Alignment.center,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/yupi.jpg"),
                            radius: 30,
                          ),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Fajri Rinaldi Chan",
                                style:
                                    TextStyle(fontSize: 20, color: whiteColor),
                              ),
                              Text(
                                "NIM. 2520005",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: whiteColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 15),
              ListTile(
                leading: Icon(
                  Icons.tag,
                  size: 30,
                  color: PrimaryColor,
                ),
                title: Text('NIM'),
                subtitle: Text('2520005'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(
                  Icons.email,
                  size: 30,
                  color: PrimaryColor,
                ),
                title: Text('Email'),
                subtitle: Text('Fajri@gariskode.com'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(
                  Icons.phone,
                  size: 30,
                  color: PrimaryColor,
                ),
                title: Text('Phone'),
                subtitle: Text('089613390766'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(
                  Icons.remove_red_eye,
                  size: 30,
                  color: PrimaryColor,
                ),
                title: Text('password'),
                subtitle: Text('********'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(
                  Icons.all_inbox,
                  size: 30,
                  color: PrimaryColor,
                ),
                title: Text('Bidang'),
                subtitle: Text('Robotik'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(
                  Icons.location_city,
                  size: 30,
                  color: PrimaryColor,
                ),
                title: Text('Tempat Lahir'),
                subtitle: Text('Medan'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(
                  Icons.cake,
                  size: 30,
                  color: PrimaryColor,
                ),
                title: Text('Tanggal Lahir'),
                subtitle: Text('06-04-2002'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: SwipeableButtonView(
                    buttonText: 'SLIDE  TO LOGOUT',
                    buttonWidget: Container(
                      child: Icon(
                        Icons.logout,
                        color: Colors.grey,
                      ),
                    ),
                    activeColor: PrimaryColor,
                    isFinished: false,
                    onWaitingProcess: () {
                      Future.delayed(Duration(seconds: 2), () {});
                    },
                    onFinish: () async {},
                  ),
                ),
              ),
              SizedBox(height: 30)
            ],
          ),
        ),
      )),
    );
  }
}
