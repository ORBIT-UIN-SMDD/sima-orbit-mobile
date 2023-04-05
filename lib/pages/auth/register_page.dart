import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:sima_orbit_mobile/const/color.dart';
import 'package:sima_orbit_mobile/provider/auth_provider.dart';
import 'package:sima_orbit_mobile/widget/textfield_costum.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        title: Text(
          "Buat Akun",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Consumer<AuthProvider>(
              builder: (context, state, child) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 15),
                    Text("Daftar Sebagai Anggota"),
                    SizedBox(height: 12),
                    state.imageRegister != null
                        ? Image.file(
                            state.imageRegister!,
                            width: 100,
                          )
                        : Image.asset(
                            "assets/ilustrasi/add_photo.png",
                            width: 100,
                          ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton.icon(
                            onPressed: () async {
                              context.goNamed("camera");
                            },
                            icon: Icon(
                              Icons.photo_camera,
                              size: 22,
                            ),
                            label: Text(
                              "Ambil Foto",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            )),
                        TextButton.icon(
                            onPressed: () {
                              state.pickImage(context);
                            },
                            icon: Icon(
                              Icons.photo,
                              size: 22,
                            ),
                            label: Text(
                              "Unggah Foto",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            )),
                      ],
                    ),
                    SizedBox(height: 8),
                    TextFieldCustom(
                      label: "NIM",
                      hintText: "Enter Your NIM",
                      controller: state.nimRegisterC,
                      errorText: state.nimRegisterE,
                    ),
                    SizedBox(height: 12),
                    TextFieldCustom(
                      label: "Nama",
                      hintText: "Enter Your Name",
                      controller: state.nameRegisterC,
                      errorText: state.nameRegisterE,
                    ),
                    SizedBox(height: 12),
                    TextFieldCustom(
                      label: "Email",
                      hintText: "Enter Your Email",
                      controller: state.emailRegisterC,
                      errorText: state.emailRegisterE,
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          child: TextFieldCustom(
                            label: "Tempat Lahir",
                            hintText: "Masukkan Tempat Lahir mu",
                            controller: state.tempatLahirRegisterC,
                            errorText: state.tempatLahirRegisterE,
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
                              controller: state.tanggalLahirRegisterC,
                              errorText: state.tanggalLahirRegisterE),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 8),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(
                            color: PrimaryColor,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Jenis Kelamin",
                              style: TextStyle(fontSize: 16)),
                          Row(
                            children: [
                              Radio(
                                visualDensity:
                                    const VisualDensity(vertical: -4),
                                value: 1,
                                groupValue: state.radioJenisKelamin,
                                onChanged: (int? value) {
                                  state.jenisKelaminRadioButton(value!);
                                },
                              ),
                              const Text("Laki-Laki",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16))
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                visualDensity: VisualDensity(vertical: -4),
                                value: 0,
                                groupValue: state.radioJenisKelamin,
                                onChanged: (int? value) {
                                  // setState(() {
                                  state.jenisKelaminRadioButton(value!);
                                  // });
                                },
                              ),
                              const Text("Perempuan",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16))
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 12),
                    TextFieldCustom(
                      maxLines: 3,
                      label: "Alamat",
                      hintText: "Masukkan Alamat Mu",
                      controller: state.alamatRegisterC,
                      errorText: state.alamatRegisterE,
                    ),
                    SizedBox(height: 12),
                    DropdownButtonHideUnderline(
                      child: DropdownButtonFormField2(
                        decoration: InputDecoration(
                          errorText: state.fakultasRegisterE,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: PrimaryColor),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: PrimaryColor),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          isDense: true,
                          contentPadding: EdgeInsets.all(10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        dropdownDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        hint: Text(
                          'Fakultas',
                        ),
                        items: state.listFakultas?.fakultas
                            .map((item) => DropdownMenuItem<int>(
                                  value: item.fakultasId,
                                  child: Text(
                                    item.fakultasNama,
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ))
                            .toList(),
                        value: state.ValueFakultas,
                        onChanged: (value) {
                          state.fakultasDropdown(value as int);
                        },
                        buttonHeight: 40,
                        buttonWidth: 140,
                        itemHeight: 40,
                      ),
                    ),
                    SizedBox(height: 12),
                    state.ValueFakultas != null
                        ? Padding(
                            padding: const EdgeInsets.only(bottom: 12),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButtonFormField2(
                                decoration: InputDecoration(
                                  filled: true,
                                  errorText: state.prodiRegisterE,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: PrimaryColor),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: PrimaryColor),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(10),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                dropdownDecoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                                hint: Text(
                                  'Program Studi',
                                ),
                                items: state.listProdi?.prodi
                                    .map((item) => DropdownMenuItem<int>(
                                          value: item.prodiId,
                                          child: Text(
                                            item.prodiNama,
                                            style: const TextStyle(
                                              fontSize: 14,
                                            ),
                                          ),
                                        ))
                                    .toList(),
                                value: state.ValueProdi,
                                onChanged: (value) {
                                  state.prodiDropdown(value as int);
                                },
                                buttonHeight: 40,
                                buttonWidth: 140,
                                itemHeight: 40,
                              ),
                            ),
                          )
                        : Container(),
                    DropdownButtonHideUnderline(
                      child: DropdownButtonFormField2(
                        decoration: InputDecoration(
                          errorText: state.bidangRegisterE,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: PrimaryColor),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: PrimaryColor),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          isDense: true,
                          contentPadding: EdgeInsets.all(10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        dropdownDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        hint: Text(
                          'Bidang yang diminati',
                        ),
                        items: state.listBidang?.bidang
                            .map((item) => DropdownMenuItem<int>(
                                  value: item.bidangId,
                                  child: Text(
                                    item.bidangNama,
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ))
                            .toList(),
                        value: state.ValueFakultas,
                        onChanged: (value) {
                          state.bidangDropdown(value as int);
                        },
                        buttonHeight: 40,
                        buttonWidth: 140,
                        itemHeight: 40,
                      ),
                    ),
                    SizedBox(height: 12),
                    TextFieldCustom(
                      label: "No. Telepon",
                      hintText: "Masukkan No Telp mu",
                      controller: state.noTelpRegisterC,
                      errorText: state.noTelpRegisterE,
                    ),
                    SizedBox(height: 12),
                    TextFieldCustom(
                        controller: state.passRegisterC,
                        errorText: state.passRegisterE,
                        label: "Password",
                        hintText: "Enter Your Password",
                        isPassword: true),
                    SizedBox(height: 12),
                    TextFieldCustom(
                      controller: state.passRepeatRegisterC,
                      errorText: state.passRepeatRegisterE,
                      label: "Repeat Password",
                      hintText: "Enter Your Password",
                      isPassword: true,
                    ),
                    SizedBox(height: 30),
                    RoundedLoadingButton(
                      child: Text('Register',
                          style: TextStyle(color: Colors.white)),
                      color: PrimaryColor,
                      controller: state.btnRegisterController,
                      onPressed: () {
                        state.Register(context);
                      },
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have An Account?",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        SizedBox(width: 12),
                        Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30)
                  ],
                );
              },
            )),
      ),
    );
  }
}
