import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:camerawesome/camerawesome_plugin.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http_parser/http_parser.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sima_orbit_mobile/data/api_service.dart';
import 'package:sima_orbit_mobile/data/models/list_bidang_model.dart';
import 'package:sima_orbit_mobile/data/models/list_fakultas_model.dart';
import 'package:sima_orbit_mobile/data/models/list_prodi_model.dart';

class AuthProvider extends ChangeNotifier {
  final RoundedLoadingButtonController btnRegisterController =
      RoundedLoadingButtonController();
  final RoundedLoadingButtonController btnLoginController =
      RoundedLoadingButtonController();

//TODO: Ini adalah provider Register

  int radioJenisKelamin = 1;

  File? imageRegister;

  final TextEditingController nimRegisterC = TextEditingController();
  final TextEditingController nameRegisterC = TextEditingController();
  final TextEditingController tempatLahirRegisterC = TextEditingController();
  final TextEditingController tanggalLahirRegisterC = TextEditingController();
  final TextEditingController alamatRegisterC = TextEditingController();
  final TextEditingController noTelpRegisterC = TextEditingController();
  final TextEditingController emailRegisterC = TextEditingController();
  final TextEditingController passRegisterC = TextEditingController();
  final TextEditingController passRepeatRegisterC = TextEditingController();

  String? nimRegisterE;
  String? nameRegisterE;
  String? emailRegisterE;
  String? tempatLahirRegisterE;
  String? tanggalLahirRegisterE;
  String? alamatRegisterE;
  String? fakultasRegisterE;
  String? prodiRegisterE;
  String? bidangRegisterE;
  String? noTelpRegisterE;
  String? passRegisterE;
  String? passRepeatRegisterE;

  ListFakultas? listFakultas;
  void fakultas() async {
    Map<String, dynamic> result = await ApiServices().ListFakultasEndpoint();
    notifyListeners();
    if (result["status"] == "success") {
      listFakultas = ListFakultas.fromJson(result);
      notifyListeners();
    }
  }

  int? ValueFakultas;
  void fakultasDropdown(int fakultas) async {
    ValueFakultas == null;
    ValueProdi == null;
    listProdi == null;
    notifyListeners();
    await prodi(fakultas);
    ValueFakultas = fakultas;
    notifyListeners();
  }

  ListProdi? listProdi;
  Future prodi(int fakultasId) async {
    Map<String, dynamic> result =
        await ApiServices().ListprodiEndpoint(fakultasId);
    notifyListeners();
    if (result["status"] == "success") {
      listProdi = ListProdi.fromJson(result);
      notifyListeners();
    }
  }

  int? ValueProdi;
  void prodiDropdown(int prodi) {
    ValueProdi = prodi;
    notifyListeners();
  }

  ListBidang? listBidang;
  void bidang() async {
    Map<String, dynamic> result = await ApiServices().ListBidangEndpoint();
    notifyListeners();
    if (result["status"] == "success") {
      listBidang = ListBidang.fromJson(result);
      notifyListeners();
    }
  }

  int? ValueBidang;
  void bidangDropdown(int bidang) {
    ValueBidang = bidang;
    notifyListeners();
  }

  void jenisKelaminRadioButton(int value) {
    radioJenisKelamin = value;
    notifyListeners();
  }

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

      tanggalLahirRegisterC.text =
          formattedDate; //set output date to TextField value.
      notifyListeners();
    } else {}
  }

  Future<void> TakePicture(MediaCapture image, BuildContext context) async {
    Navigator.pop(context);
    print(image.filePath);
    if (image.filePath != null) {
      CroppedFile? croppedFile = await ImageCropper().cropImage(
        sourcePath: image.filePath,
        aspectRatio: CropAspectRatio(ratioX: 3, ratioY: 4),
        uiSettings: [
          AndroidUiSettings(
              toolbarTitle: 'Cropper',
              toolbarColor: Colors.deepOrange,
              toolbarWidgetColor: Colors.white,
              initAspectRatio: CropAspectRatioPreset.original,
              lockAspectRatio: false),
          IOSUiSettings(
            title: 'Cropper',
          ),
          WebUiSettings(
            context: context,
          ),
        ],
      );
      if (croppedFile != null) {
        imageRegister = File(croppedFile.path);
        notifyListeners();
        log(croppedFile.path);
      }
    }
  }

  Future<void> pickImage(BuildContext context) async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      CroppedFile? croppedFile = await ImageCropper().cropImage(
        sourcePath: image.path,
        aspectRatio: CropAspectRatio(ratioX: 3, ratioY: 4),
        uiSettings: [
          AndroidUiSettings(
              toolbarTitle: 'Cropper',
              toolbarColor: Colors.deepOrange,
              toolbarWidgetColor: Colors.white,
              initAspectRatio: CropAspectRatioPreset.original,
              lockAspectRatio: false),
          IOSUiSettings(
            title: 'Cropper',
          ),
          WebUiSettings(
            context: context,
          ),
        ],
      );
      if (croppedFile != null) {
        imageRegister = File(croppedFile.path);
        notifyListeners();
        log(croppedFile.path);
      }
    }
  }

  void Register(BuildContext context) async {
    if (nimRegisterC.text == "") {
      nimRegisterE = "NIM Harus Diisi";
    } else {
      nimRegisterE = null;
    }

    if (nameRegisterC.text == "") {
      nameRegisterE = "Nama Harus Diisi";
    } else {
      nameRegisterE = null;
    }

    final bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(emailRegisterC.text);

    if (emailRegisterC.text == "") {
      emailRegisterE = "email Ini Harus Diisi";
    } else if (!emailValid) {
      emailRegisterE = "Email ini tidak valid";
    } else {
      emailRegisterE = null;
    }

    if (tempatLahirRegisterC.text == "") {
      tempatLahirRegisterE = "Tempat Lahir Harus Diisi";
    } else {
      tempatLahirRegisterE = null;
    }

    if (tanggalLahirRegisterC.text == "") {
      tanggalLahirRegisterE = "Tanggal Lahir Harus Diisi";
    } else {
      tanggalLahirRegisterE = null;
    }

    if (alamatRegisterC.text == "") {
      alamatRegisterE = "Alamat Harus Diisi";
    } else {
      alamatRegisterE = null;
    }

    if (ValueFakultas == null) {
      fakultasRegisterE = "Fakultas Harus Dipilih";
    } else {
      fakultasRegisterE = null;
    }

    if (ValueProdi == null) {
      prodiRegisterE = "Program Studi Harus Dipilih";
    } else {
      prodiRegisterE = null;
    }

    if (ValueBidang == null) {
      bidangRegisterE = "Bidang harus dipilih";
    } else {
      bidangRegisterE = null;
    }

    if (noTelpRegisterC.text == "") {
      noTelpRegisterE = "No.Telp Harus Diisi";
    } else {
      noTelpRegisterE = null;
    }

    if (passRegisterC.text == "") {
      passRegisterE = "Password Harus Diisi";
    } else if (passRegisterC.text.length < 8) {
      passRegisterE = "password harus lebih dari 8 karakter";
    } else {
      passRegisterE = null;
    }

    if (passRepeatRegisterC.text == "") {
      passRepeatRegisterE = "Repeat password Harus Diisi";
    } else if (passRepeatRegisterC.text.length < 8) {
      passRepeatRegisterE = "paasword harus lebih dari 8 karakter";
    } else if (passRepeatRegisterC.text != passRegisterC.text) {
      passRepeatRegisterE = "Repeat password harus sama dengan password";
    } else {
      passRepeatRegisterE = null;
    }

    if (nimRegisterE == null &&
        nameRegisterE == null &&
        emailRegisterE == null &&
        tempatLahirRegisterE == null &&
        tanggalLahirRegisterE == null &&
        fakultasRegisterE == null &&
        prodiRegisterE == null &&
        alamatRegisterE == null &&
        bidangRegisterE == null &&
        noTelpRegisterE == null &&
        passRegisterE == null &&
        passRepeatRegisterE == null) {
      Map<String, dynamic> allData = {
        "nim": nimRegisterC.text,
        "foto": await MultipartFile.fromFile(imageRegister!.path,
            contentType: MediaType('image', 'png'),
            filename: "${nimRegisterC.text}-${nameRegisterC.text}"),
        "nama": nameRegisterC.text,
        "email": emailRegisterC.text,
        "tempat_lahir": tempatLahirRegisterC.text,
        "tanggal_lahir": tanggalLahirRegisterC.text,
        "jenis_kelamin": radioJenisKelamin,
        "alamat": alamatRegisterC.text,
        "fakultas_id": ValueFakultas,
        "prodi_id": ValueProdi,
        "bidang_id": ValueBidang,
        "no_telp": noTelpRegisterC.text,
        "password": passRegisterC.text
      };

      log(allData.toString());

      FormData data = FormData.fromMap(allData);
      var res = await ApiServices().RegisterEndpoint(data);

      if (res["status"] == "success") {
        btnRegisterController.success();
        context.goNamed("login");
        notifyListeners();
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(SnackBar(
            elevation: 0,
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.transparent,
            content: AwesomeSnackbarContent(
              title: 'Register Berhasil',
              message: "silahkan Login untuk masuk",
              contentType: ContentType.success,
            ),
          ));
      } else {
        btnRegisterController.error();
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(SnackBar(
            elevation: 0,
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.transparent,
            content: AwesomeSnackbarContent(
              title: 'Terjadi Kesalahan',
              message: res["message"],
              contentType: ContentType.failure,
            ),
          ));
        notifyListeners();
        Timer(
          Duration(seconds: 3),
          () {
            btnRegisterController.reset();
            notifyListeners();
          },
        );
      }
    } else {
      btnRegisterController.error();
      notifyListeners();
      Timer(
        Duration(seconds: 2),
        () {
          btnRegisterController.reset();
          notifyListeners();
        },
      );
    }
  }

//TODO: Ini adalah provider untuk Login

  final TextEditingController nimLoginC = TextEditingController();
  final TextEditingController passLoginC = TextEditingController();

  String? nimLoginE;
  String? passLoginE;

  Future<void> Login(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();

    if (nimLoginC.text == "") {
      nimLoginE = "Field Ini Harus Diisi";
    } else if (nimLoginC.text.length < 6) {
      nimLoginE = "NIM ini tidak valid";
    } else {
      nimLoginE = "";
    }

    if (passLoginC.text == "") {
      passLoginE = "Field Ini Harus Diisi";
    } else if (passLoginC.text.length < 8) {
      passLoginE = "password harus lebih dari 8 karakter";
    } else {
      passLoginE = "";
    }

    if (nimLoginE == '' && passLoginE == '') {
      var LoginObject = {"nim": nimLoginC.text, "password": passLoginC.text};
      var res = await ApiServices().LoginEndpoint(LoginObject);
      if (res["status"] == "success") {
        btnLoginController.success();
        notifyListeners();
        await prefs.setString('token', res["token"]);
        print("TOKEN AUTHORIZATION : " + res["token"]);
        context.goNamed("home_page");
      } else {
        btnLoginController.error();
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(SnackBar(
            elevation: 0,
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.transparent,
            content: AwesomeSnackbarContent(
              title: 'Terjadi Kesalahan',
              message: res["message"],
              contentType: ContentType.failure,
            ),
          ));
        notifyListeners();
        Timer(
          Duration(seconds: 3),
          () {
            btnLoginController.reset();
            notifyListeners();
          },
        );
      }
    } else {
      btnLoginController.error();
      notifyListeners();
      Timer(
        Duration(seconds: 2),
        () {
          btnLoginController.reset();
          notifyListeners();
        },
      );
    }
  }

  bool isFinishedLogout = false;
  void FinishLogout() {
    isFinishedLogout = true;
    notifyListeners();
  }

  Future<void> logout(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
    context.goNamed("onboarding");
  }
}
