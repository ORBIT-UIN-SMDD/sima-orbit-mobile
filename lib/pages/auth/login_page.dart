import 'package:drop_shadow_image/drop_shadow_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:sima_orbit_mobile/const/color.dart';
import 'package:sima_orbit_mobile/provider/auth_provider.dart';
import 'package:sima_orbit_mobile/widget/textfield_costum.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Consumer<AuthProvider>(
        builder: (context, state, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropShadowImage(
                borderRadius: 5,
                //@blurRadius if not defined default value is
                blurRadius: 5,
                //@offset default value is Offset(8,8)
                offset: Offset(1, 2),
                image: Image.asset(
                  "assets/images/logosima.png",
                  width: 130,
                ),
              ),
              Text(
                "Selamat Datang",
                style: TextStyle(
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w100),
              ),
              Text(
                "SISTEM INFORMASI MANAJEMEN ORBIT",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 80),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    TextFieldCustom(
                        label: "NIM",
                        hintText: "NIM",
                        errorText: state.nimLoginE,
                        controller: state.nimLoginC),
                    SizedBox(height: 18),
                    TextFieldCustom(
                        label: "Password",
                        hintText: "Password",
                        isPassword: true,
                        errorText: state.passLoginE,
                        controller: state.passLoginC),
                    Container(
                      width: double.infinity,
                      alignment: Alignment.topRight,
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Lupa Password?",
                            style: TextStyle(color: Colors.red),
                          )),
                    ),
                    RoundedLoadingButton(
                      child:
                          Text('Login', style: TextStyle(color: Colors.white)),
                      color: PrimaryColor,
                      controller: state.btnLoginController,
                      onPressed: () {
                        // state.Login(context);
                        context.goNamed("home_page");
                        ;
                      },
                    ),
                  ],
                ),
              )
            ],
          );
        },
      )),
    );
  }
}
