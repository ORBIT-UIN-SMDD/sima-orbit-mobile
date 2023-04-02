import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sima_orbit_mobile/const/color.dart';
import 'package:sima_orbit_mobile/provider/pengumuman_provider.dart';
import 'package:skeletons/skeletons.dart';

class PengumumanPage extends StatelessWidget {
  const PengumumanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifikasi"),
        centerTitle: true,
        backgroundColor: PrimaryColor,
      ),
      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.only(right: 8, left: 8, top: 15),
              child: Consumer<PengumumanProvider>(
                builder: (context, state, child) {
                  return state.isLoading == false
                      ? CustomRefreshIndicator(
                          /// delegate with configuration
                          builder: MaterialIndicatorDelegate(
                            builder: (context, controller) {
                              return Icon(
                                Icons.local_fire_department,
                                color: PrimaryColor,
                                size: 30,
                              );
                            },
                          ),
                          onRefresh: () async =>
                              await state.getPengumumanAsync(),

                          child: ListView.builder(
                            itemCount: state.pengumuman!.pengumuman.length,
                            itemBuilder: (context, index) {
                              return Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                color: Color(0xffECF0F1),
                                child: Container(
                                    height: 90,
                                    width: double.infinity,
                                    child: Row(
                                      children: [
                                        Card(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          color: Color(0xffFDEBD0),
                                          child: Container(
                                            height: 75,
                                            width: 50,
                                            child: Icon(
                                              Icons.notifications,
                                              size: 35,
                                              color: Color(0xffF39C12),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                state
                                                    .pengumuman!
                                                    .pengumuman[index]
                                                    .pengumumanJudul,
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                              ),
                                              Text(
                                                state
                                                    .pengumuman!
                                                    .pengumuman[index]
                                                    .pengumumanDeskripsi,
                                                style: TextStyle(
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    )),
                              );
                            },
                          ),
                        )
                      : SkeletonListView();
                },
              ))),
    );
  }
}
