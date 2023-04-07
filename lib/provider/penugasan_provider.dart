import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sima_orbit_mobile/data/api_service.dart';
import 'package:sima_orbit_mobile/data/models/penugasan_anggota_model.dart';
import 'package:sima_orbit_mobile/data/models/penugasan_pengurus_model.dart';

class PenugasanProvider extends ChangeNotifier {
  bool isLoading = true;
  PenugasanPengurus? penugasanPengurus;
  PenugasanAnggota? penugasanAnggota;

  String? status;

  void getPenugasan() async {
    var result = await ApiServices().PenugasanEndpoint();
    final prefs = await SharedPreferences.getInstance();
    status = prefs.getString('status');
    if (status == "pengurus") {
      penugasanPengurus = PenugasanPengurus.fromJson(result);
      isLoading = false;
      notifyListeners();
    } else if (status == "anggota") {
      penugasanAnggota = PenugasanAnggota.fromJson(result);
      isLoading = false;
      notifyListeners();
    }else if (status == "alumni") {

      isLoading = false;
      notifyListeners();
    }
  }

  int selectPengurus = 0;
  void toDetailPengurus(BuildContext context, int index) {
    selectPengurus = index;
    notifyListeners();
    context.goNamed("detail_penugasan");
  }
}
