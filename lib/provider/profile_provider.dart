import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sima_orbit_mobile/data/api_service.dart';
import 'package:sima_orbit_mobile/data/models/profile_model.dart';

class ProfileProvider extends ChangeNotifier {
  bool isLoading = true;
  Profile? profile;

  Future<void> GetProfile() async {
    isLoading = true;
    notifyListeners();
    Map<String, dynamic> result = await ApiServices().ProfileEndpoint();
    profile = Profile.fromJson(result);
    log(result.toString());
    isLoading = false;
    notifyListeners();
  }
}
