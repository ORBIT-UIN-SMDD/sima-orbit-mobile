import 'package:flutter/material.dart';
import 'package:sima_orbit_mobile/data/api_service.dart';
import 'package:sima_orbit_mobile/data/models/agenda_model.dart';

class AgendaProvider extends ChangeNotifier {
  bool isLoading = true;
  Agenda? agenda;

  void getAgenda() async {
    var result = await ApiServices().AgendaEndpoint();
    agenda = Agenda.fromJson(result);
    isLoading = false;
    notifyListeners();
  }
}
