import 'package:flutter/material.dart';
import 'package:sima_orbit_mobile/data/api_service.dart';
import 'package:sima_orbit_mobile/data/models/pengumuman_model.dart';

class PengumumanProvider extends ChangeNotifier {
  bool isLoading = true;
  Pengumuman? pengumuman;

  void getPengumuman() async {
    var result = await ApiServices().PengumumanEndpoint();
    pengumuman = Pengumuman.fromJson(result);
    isLoading = false;
    notifyListeners();
  }
  Future getPengumumanAsync() async {
    var result = await ApiServices().PengumumanEndpoint();
    pengumuman = Pengumuman.fromJson(result);
    isLoading = false;
    notifyListeners();
  }
}
