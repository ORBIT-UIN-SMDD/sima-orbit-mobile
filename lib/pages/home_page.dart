import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:sima_orbit_mobile/const/color.dart';
import 'package:sima_orbit_mobile/provider/profile_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Consumer<ProfileProvider>(
              builder: (context, state, child) {
                return Container(
                  width: double.infinity,
                  height: 90 + MediaQuery.of(context).viewPadding.top,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      color: PrimaryColor,
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(40))),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: ListTile(
                      leading: state.isLoading == false
                          ? CircleAvatar(
                              backgroundImage: NetworkImage(state.foto),
                              backgroundColor: whiteColor,
                              radius: 30,
                            )
                          : CircleAvatar(
                              radius: 30,
                              backgroundColor: whiteColor,
                              child: CircularProgressIndicator(),
                            ),
                      title: Text(
                        "Hello",
                        style: TextStyle(
                            color: whiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      subtitle: state.isLoading == false
                          ? Text(
                              state.profilePengurus!.profile.nama,
                              style: TextStyle(
                                  color: whiteColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            )
                          : Text("-"),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.notifications,
                          size: 30,
                        ),
                        color: whiteColor,
                        onPressed: () => context.goNamed("notifikasi"),
                      ),
                    ),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    "Feature",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              child: Icon(
                                Icons.file_present_sharp,
                                size: 40,
                                color: Color(0xff8E44AD),
                              ),
                              decoration: BoxDecoration(
                                  color: Color(0xffE8DAEF),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "AD/ART",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              child: Icon(
                                Icons.precision_manufacturing,
                                size: 40,
                                color: Color(0xffF39C12),
                              ),
                              decoration: BoxDecoration(
                                  color: Color(0xffFDEBD0),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Peraturan",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () => context.goNamed("informasi"),
                              child: Container(
                                width: 70,
                                height: 70,
                                child: Icon(
                                  Icons.web,
                                  size: 40,
                                  color: Color(0xff2ECC71),
                                ),
                                decoration: BoxDecoration(
                                    color: Color(0xffD5F5E3),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Informasi",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () => context.goNamed("about"),
                          child: Column(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                child: Icon(
                                  Icons.info_outline,
                                  size: 40,
                                  color: Color(0xffE74C3C),
                                ),
                                decoration: BoxDecoration(
                                    color: Color(0xffFADBD8),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "About",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Personal",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      InkWell(
                        onTap: () => context.goNamed("kompetensi"),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 10),
                                child: Row(
                                  children: [
                                    Image.asset("assets/icons/kompetensi.png"),
                                    SizedBox(width: 10),
                                    Text(
                                      "Kompetensi",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color: Color(0xffBABBCA),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Text(
                                  "Berisi tentang Penilaian diri dan penilaian Kompetensi bagi anggota ORBIT",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 13),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      InkWell(
                        onTap: () => context.goNamed("penugasan"),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 10),
                                child: Row(
                                  children: [
                                    Image.asset("assets/icons/penugasan.png"),
                                    SizedBox(width: 10),
                                    Text(
                                      "Penugasan",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color: Color(0xffBABBCA),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Text(
                                  "Berisi Monitoring Penugasan, SK tugas, absensi, pelaporan",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 13),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      InkWell(
                        onTap: () => context.goNamed("agenda"),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 10),
                                child: Row(
                                  children: [
                                    Image.asset("assets/icons/agenda.png"),
                                    SizedBox(width: 10),
                                    Text(
                                      "Agenda",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color: Color(0xffBABBCA),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Text(
                                  "Berisi Tentang Agenda Yang Akan dilaksanakan Oleh UKM ORBIT",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 13),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
