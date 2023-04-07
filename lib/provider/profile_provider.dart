import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sima_orbit_mobile/data/api_service.dart';
import 'package:sima_orbit_mobile/data/models/profile_alumni_model.dart';
import 'package:sima_orbit_mobile/data/models/profile_anggota_model.dart';
import 'package:sima_orbit_mobile/data/models/profile_pengurus_model.dart';

class ProfileProvider extends ChangeNotifier {
  bool isLoading = true;
  ProfilePengurus? profilePengurus;
  ProfileAnggota? profileAnggota;
  ProfileAlumni? profileAlumni;

  String foto = "https://sima.orbituinbkt.com/assets/img/avatars/1.png";
  String nama = "";
  String bidang = "";
  int nim = 0;

  String? statusPref = "";

  Future<void> GetProfile() async {
    isLoading = true;
    notifyListeners();

    final prefs = await SharedPreferences.getInstance();
    statusPref = await prefs.getString('status');
    log("STATUS : " + statusPref.toString());
    notifyListeners();

    Map<String, dynamic> result = await ApiServices().ProfileEndpoint();
    if (statusPref == "pengurus") {
      profilePengurus = ProfilePengurus.fromJson(result);
      foto =
          "https://sima.orbituinbkt.com/profile/pengurus/${profilePengurus!.profile.foto}";
      nama = profilePengurus!.profile.nama;
      nim = profilePengurus!.profile.nim;
      bidang = " - ${profilePengurus!.profile.bidang.bidangNama.toUpperCase()}";

      notifyListeners();
    } else if (statusPref == 'anggota') {
      profileAnggota = ProfileAnggota.fromJson(result);
      foto =
          "https://sima.orbituinbkt.com/profile/anggota/${profileAnggota!.profile.foto}";
      nama = profileAnggota!.profile.nama;
      nim = profileAnggota!.profile.nim;
      bidang = " - ${profileAnggota!.profile.bidang.bidangNama.toUpperCase()}";
      notifyListeners();
    } else if (statusPref == 'alumni') {
      profileAlumni = ProfileAlumni.fromJson(result);
      foto =
          "https://sima.orbituinbkt.com/profile/alumni/${profileAlumni!.profile.foto}";
      nama = profileAlumni!.profile.nama;
      nim = profileAlumni!.profile.nim;
      notifyListeners();
    }
    log(result.toString());

    isLoading = false;
    notifyListeners();
  }

  String status = '';
  Future<void> getStatus() async {
    final prefs = await SharedPreferences.getInstance();
    String? statusPref = prefs.getString('status');
    status = statusPref!;
    notifyListeners();
  }

  int activeSlider = 0;
  void sliderKTA(int index) {
    activeSlider = index;
    notifyListeners();
  }

  final TextEditingController emailC = TextEditingController();
  final TextEditingController phoneC = TextEditingController();
  final TextEditingController tempatLahirC = TextEditingController();
  final TextEditingController tanggalLahirC = TextEditingController();
  final TextEditingController passwordC = TextEditingController();
  final TextEditingController repeatPasswordC = TextEditingController();

  //FOR ALUMNI
  final TextEditingController periodeC = TextEditingController();
  final TextEditingController alamatC = TextEditingController();
  final TextEditingController pekerjaanC = TextEditingController();
  final TextEditingController golonganDarahC = TextEditingController();

  String? emailE;
  String? phoneE;
  String? tempatLahirE;
  String? tanggalLahirE;
  String? passwordE;
  String? repeatPasswordE;

  //FOR ALUMNI
  String? periodeE;
  String? alamatE;
  String? pekerjaanE;
  String? golonganDarahE;

  Future<void> TanggalLahirdatePicker(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        //DateTime.now() - not to allow to choose before today.
        lastDate: DateTime(2100));

    if (pickedDate != null) {
      print(pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
      print(
          formattedDate); //formatted date output using intl package =>  2021-03-16

      tanggalLahirC.text = formattedDate; //set output date to TextField value.
      notifyListeners();
    } else {}
  }

  void editProfile(BuildContext context) {
    if (statusPref == "pengurus") {
      emailC.text = profilePengurus!.profile.email;
      phoneC.text = profilePengurus!.profile.noTelp;
      tempatLahirC.text = profilePengurus!.profile.tempatLahir;
      tanggalLahirC.text = profilePengurus!.profile.tanggalLahir;
      notifyListeners();

      context.goNamed("edit_pengurus");
      notifyListeners();
    } else if (statusPref == 'anggota') {
      emailC.text = profileAnggota!.profile.email;
      phoneC.text = profileAnggota!.profile.noTelp;
      tempatLahirC.text = profileAnggota!.profile.tempatLahir;
      tanggalLahirC.text = profileAnggota!.profile.tanggalLahir;
      notifyListeners();

      context.goNamed("edit_anggota");
      notifyListeners();
    } else if (statusPref == 'alumni') {
      emailC.text = profileAlumni!.profile.email;
      phoneC.text = profileAlumni!.profile.noTelp;
      tempatLahirC.text = profileAlumni!.profile.tempatLahir;
      tanggalLahirC.text = profileAlumni!.profile.tanggalLahir;

      periodeC.text = profileAlumni!.profile.periode.toString();
      alamatC.text = profileAlumni!.profile.alamat;
      pekerjaanC.text = profileAlumni!.profile.pekerjaan;
      golonganDarahC.text = profileAlumni!.profile.golonganDarah;
      notifyListeners();

      context.goNamed("edit_alumni");
      notifyListeners();
    }
  }

  final RoundedLoadingButtonController btnSaveProfile =
      RoundedLoadingButtonController();

  Future<void> saveProfile(BuildContext context) async {
    final bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(emailC.text);

    if (emailC.text == "") {
      emailE = "email Ini Harus Diisi";
    } else if (!emailValid) {
      emailE = "Email ini tidak valid";
    } else {
      emailE = null;
    }

    if (phoneC.text == "") {
      phoneE = "Phone Ini Harus Diisi";
    } else {
      phoneE = null;
    }

    if (tempatLahirC.text == "") {
      tempatLahirE = "Tempat Lahir Harus Diisi";
    } else {
      tempatLahirE = null;
    }

    if (tanggalLahirC.text == "") {
      tanggalLahirE = "Tanggal Lahir Harus Diisi";
    } else {
      tanggalLahirE = null;
    }
    notifyListeners();

    Object data = {};

    if (statusPref == "pengurus" || statusPref == "anggota") {
      if (emailE == null &&
          phoneE == null &&
          tempatLahirE == null &&
          tanggalLahirE == null) {
        if (passwordC.text != "") {
          if (passwordC.text.length < 8) {
            passwordE = "password harus lebih dari 8 karakter";
          } else {
            passwordE = null;
          }

          if (repeatPasswordC.text == "") {
            repeatPasswordE = "Repeat password Harus Diisi";
          } else if (repeatPasswordC.text.length < 8) {
            repeatPasswordE = "paasword harus lebih dari 8 karakter";
          } else if (repeatPasswordC.text != passwordC.text) {
            repeatPasswordE = "Repeat password harus sama dengan password";
          } else {
            repeatPasswordE = null;
          }
          notifyListeners();
        }

        if (passwordE == null && repeatPasswordE == null) {
          data = {
            "email": emailC.text,
            "no_telp": phoneC.text,
            "tempat_lahir": tempatLahirC.text,
            "tanggal_lahir": tanggalLahirC.text,
            "password": passwordC.text
          };
          var response = await ApiServices().editProfileEndpoint(data);
          log(response.toString());
          GetProfile();
          btnSaveProfile.success();
          context.pop();

          notifyListeners();
        } else if (passwordC.text == "" && passwordC.text.length < 8) {
          data = {
            "email": emailC.text,
            "no_telp": phoneC.text,
            "tempat_lahir": tempatLahirC.text,
            "tanggal_lahir": tanggalLahirC.text
          };
          var response = await ApiServices().editProfileEndpoint(data);
          log(response.toString());
          GetProfile();
          btnSaveProfile.success();
          context.pop();

          notifyListeners();
        } else {
          btnSaveProfile.error();
          notifyListeners();
          Timer(Duration(seconds: 2), () {
            btnSaveProfile.reset();
          });
          notifyListeners();
        }
      } else {
        btnSaveProfile.error();
        notifyListeners();
        Timer(Duration(seconds: 2), () {
          btnSaveProfile.reset();
        });
        notifyListeners();
      }
    }
//TODO : INI FUNGSI UNTUK ALUMNI

    else if (statusPref == "alumni") {
      if (periodeC.text == "") {
        periodeE = "Periode Harus Diisi";
      } else {
        periodeE = null;
      }

      if (alamatC.text == "") {
        alamatE = "Alamat Harus Diisi";
      } else {
        alamatE = null;
      }

      if (pekerjaanC.text == "") {
        pekerjaanE = "Pekerjaan Harus Diisi";
      } else {
        pekerjaanE = null;
      }

      if (golonganDarahC.text == "") {
        golonganDarahE = "Golongan Darah Harus Diisi";
      } else {
        golonganDarahE = null;
      }

      if (emailE == null &&
          phoneE == null &&
          tempatLahirE == null &&
          tanggalLahirE == null &&
          periodeE == null &&
          alamatE == null &&
          pekerjaanE == null &&
          golonganDarahE == null) {
        if (passwordC.text != "") {
          if (passwordC.text.length < 8) {
            passwordE = "password harus lebih dari 8 karakter";
          } else {
            passwordE = null;
          }

          if (repeatPasswordC.text == "") {
            repeatPasswordE = "Repeat password Harus Diisi";
          } else if (repeatPasswordC.text.length < 8) {
            repeatPasswordE = "paasword harus lebih dari 8 karakter";
          } else if (repeatPasswordC.text != passwordC.text) {
            repeatPasswordE = "Repeat password harus sama dengan password";
          } else {
            repeatPasswordE = null;
          }
          notifyListeners();
        }

        if (passwordE == null && repeatPasswordE == null) {
          data = {
            "email": emailC.text,
            "no_telp": phoneC.text,
            "tempat_lahir": tempatLahirC.text,
            "tanggal_lahir": tanggalLahirC.text,
            "periode": periodeC.text,
            "alamat": alamatC.text,
            "pekerjaan": pekerjaanC.text,
            "golongan_darah": golonganDarahC.text,
            "password": passwordC.text,
          };
          var response = await ApiServices().editProfileEndpoint(data);
          log(response.toString());
          GetProfile();
          btnSaveProfile.success();
          context.pop();

          notifyListeners();
        } else if (passwordC.text == "" && passwordC.text.length < 8) {
          data = {
            "email": emailC.text,
            "no_telp": phoneC.text,
            "tempat_lahir": tempatLahirC.text,
            "tanggal_lahir": tanggalLahirC.text,
            "periode": periodeC.text,
            "alamat": alamatC.text,
            "pekerjaan": pekerjaanC.text,
            "golongan_darah": golonganDarahC.text,
          };
          var response = await ApiServices().editProfileEndpoint(data);
          log(response.toString());
          GetProfile();
          btnSaveProfile.success();
          context.pop();

          notifyListeners();
        } else {
          btnSaveProfile.error();
          notifyListeners();
          Timer(Duration(seconds: 2), () {
            btnSaveProfile.reset();
          });
          notifyListeners();
        }
      } else {
        btnSaveProfile.error();
        notifyListeners();
        Timer(Duration(seconds: 2), () {
          btnSaveProfile.reset();
        });
        notifyListeners();
      }
    }
  }
}
