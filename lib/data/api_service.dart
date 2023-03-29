import 'dart:developer';

import 'package:dio/dio.dart';

class ApiServices {
  String _url = "http://10.0.2.2:3000/api";
  Dio dio = Dio();

  Future<Map<String, dynamic>> ListFakultasEndpoint() async {
    try {
      var response = await dio.get("$_url/fakultas");
      log(response.data.toString());

      return response.data;
    } on DioError catch (e) {
      return {
        "status": "failed",
        "message": "Terjadi Kesalahan (Error : ${e.toString()})"
      };
    }
  }

  Future<Map<String, dynamic>> ListprodiEndpoint(int fakultasId) async {
    try {
      var response = await dio.get("$_url/prodi?fakultas_id=$fakultasId");
      log(response.data.toString());

      return response.data;
    } on DioError catch (e) {
      return {
        "status": "failed",
        "message": "Terjadi Kesalahan (Error : ${e.toString()})"
      };
    }
  }

  Future<Map<String, dynamic>> ListBidangEndpoint() async {
    try {
      var response = await dio.get("$_url/bidang");
      log(response.data.toString());

      return response.data;
    } on DioError catch (e) {
      return {
        "status": "failed",
        "message": "Terjadi Kesalahan (Error : ${e.toString()})"
      };
    }
  }

  Future RegisterEndpoint(FormData data) async {
    try {
      var response = await dio.post("$_url/register", data: data);
      log(response.data.toString());

      return response.data;
    } on DioError catch (e) {
      if (e.response!.statusCode == 400) {
        return e.response?.data;
      } else {
        return {
          "status": "failed",
          "message": "Terjadi Kesalahan (Error : ${e.toString()})"
        };
      }
    }
  }

  Future LoginEndpoint(Object? data) async {
    try {
      var response = await dio.get("$_url/login", data: data);
      log(response.data.toString());

      return response.data;
    } on DioError catch (e) {
      log(e.toString());
      if (e.response!.statusCode == 400) {
        return e.response?.data;
      } else {
        return {
          "status": "failed",
          "message": "Terjadi Kesalahan (Error : ${e.toString()})"
        };
      }
    }
  }
}
