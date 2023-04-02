import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sima_orbit_mobile/data/api_service.dart';
import 'package:sima_orbit_mobile/data/models/kompetensi_model.dart';

class KompetensiProvider extends ChangeNotifier {
  bool isLoading = true;
  Kompetensi? kompetensi;

  Future<void> getKompetensi() async {
    var result = await ApiServices().KompetensiEndpoint();
    kompetensi = Kompetensi.fromJson(result);
    isLoading = false;
    notifyListeners();
  }

  int selectkompetensi = 0;
  void toDetailKompetensi(BuildContext context, int index) {
    selectkompetensi = index;
    notifyListeners();
    context.goNamed("detail_kompetensi");
  }
}
