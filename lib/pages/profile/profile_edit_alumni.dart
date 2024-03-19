import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:sima_orbit_mobile/const/color.dart';
import 'package:sima_orbit_mobile/provider/profile_provider.dart';
import 'package:sima_orbit_mobile/widget/textfield_costum.dart';

class ProfileEditAlumni extends StatelessWidget {
  const ProfileEditAlumni({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Edit Profile"),
          backgroundColor: PrimaryColor,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            child: Consumer<ProfileProvider>(
              builder: (context, state, child) {
                return Column(
                  children: [
                    SizedBox(height: 8),
                    TextFieldCustom(
                      label: "Email",
                      hintText: "Enter Your Email",
                      controller: state.emailC,
                      errorText: state.emailE,
                    ),
                    SizedBox(height: 12),
                    TextFieldCustom(
                      label: "Phone",
                      hintText: "Enter Your Phone",
                      controller: state.phoneC,
                      errorText: state.phoneE,
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          child: TextFieldCustom(
                            label: "Tempat Lahir",
                            hintText: "Masukkan Tempat Lahir mu",
                            controller: state.tempatLahirC,
                            errorText: state.tempatLahirE,
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: TextFieldCustom(
                              readOnly: true,
                              label: "Tanggal Lahir",
                              hintText: "Masukkan Tanggal Lahir mu",
                              onTap: () async =>
                                  await state.TanggalLahirdatePicker(context),
                              controller: state.tanggalLahirC,
                              errorText: state.tanggalLahirE),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    TextFieldCustom(
                      label: "Periode",
                      hintText: "Enter Your periode",
                      controller: state.periodeC,
                      errorText: state.periodeE,
                    ),
                    SizedBox(height: 12),
                    TextFieldCustom(
                      label: "Alamat",
                      hintText: "Enter Your Address",
                      controller: state.alamatC,
                      errorText: state.alamatE,
                    ),
                    SizedBox(height: 12),
                    TextFieldCustom(
                      label: "Pekerjaan",
                      hintText: "Enter Your Job",
                      controller: state.pekerjaanC,
                      errorText: state.pekerjaanE,
                    ),
                    SizedBox(height: 12),
                    TextFieldCustom(
                      label: "Golongan Darah",
                      hintText: "Enter Your Blood Group",
                      controller: state.golonganDarahC,
                      errorText: state.golonganDarahE,
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Kosongkan password dibawah, jika anda tidak ingin mengubah password",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    SizedBox(height: 12),
                    TextFieldCustom(
                      label: "New Password",
                      hintText: "Enter Your New Password",
                      controller: state.passwordC,
                      errorText: state.passwordE,
                    ),
                    SizedBox(height: 12),
                    TextFieldCustom(
                      label: "Repeat New Password",
                      hintText: "Enter Your New Password Again",
                      controller: state.repeatPasswordC,
                      errorText: state.repeatPasswordE,
                    ),
                    SizedBox(height: 20),
                    RoundedLoadingButton(
                      child: Text('Simpan',
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                      color: PrimaryColor,
                      controller: state.btnSaveProfile,
                      onPressed: () => state.saveProfile(context),
                    ),
                  ],
                );
              },
            ),
          ),
        ));
  }
}
