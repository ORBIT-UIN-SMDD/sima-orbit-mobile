import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sima_orbit_mobile/const/color.dart';
import 'package:sima_orbit_mobile/provider/auth_provider.dart';
import 'package:sima_orbit_mobile/provider/profile_provider.dart';
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
            child: Consumer<ProfileProvider>(
              builder: (context, state, child) {
                return Column(
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
                                    state.isLoading == false
                                        ? Text(
                                            state.profilePengurus!.profile.nama,
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: whiteColor),
                                          )
                                        : Text(
                                            "-",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: whiteColor),
                                          ),
                                    Text(
                                      "NIM. ${state.profilePengurus!.profile.nim}",
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
                      subtitle: Text(state.profilePengurus!.profile.nim.toString()),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.email,
                        size: 30,
                        color: PrimaryColor,
                      ),
                      title: Text('Email'),
                      subtitle: Text(state.profilePengurus!.profile.email),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.phone,
                        size: 30,
                        color: PrimaryColor,
                      ),
                      title: Text('Phone'),
                      subtitle: Text(state.profilePengurus!.profile.noTelp),
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
                      subtitle: Text(state.profilePengurus!.profile.bidang.bidangNama),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.location_city,
                        size: 30,
                        color: PrimaryColor,
                      ),
                      title: Text('Tempat Lahir'),
                      subtitle: Text(state.profilePengurus!.profile.tempatLahir),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.cake,
                        size: 30,
                        color: PrimaryColor,
                      ),
                      title: Text('Tanggal Lahir'),
                      subtitle:
                          Text(state.profilePengurus!.profile.tanggalLahir.toString()),
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
                          isFinished: Provider.of<AuthProvider>(context)
                              .isFinishedLogout,
                          onWaitingProcess: () {
                            Future.delayed(Duration(seconds: 2), () {
                              Provider.of<AuthProvider>(context, listen: false)
                                  .FinishLogout();
                            });
                          },
                          onFinish: () async {
                            Provider.of<AuthProvider>(context, listen: false)
                                .logout(context);
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 30)
                  ],
                );
              },
            )),
      )),
    );
  }
}
