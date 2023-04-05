import 'dart:developer';

import 'package:flutter/material.dart';
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
  int nim = 0;

  String? statusPref = "";

  Future<void> GetProfile() async {
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

      notifyListeners();
    } else if (statusPref == 'anggota') {
      profileAnggota = ProfileAnggota.fromJson(result);
      foto =
          "https://sima.orbituinbkt.com/profile/anggota/${profileAnggota!.profile.foto}";
      nama = profileAnggota!.profile.nama;
      nim = profileAnggota!.profile.nim;
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
}
