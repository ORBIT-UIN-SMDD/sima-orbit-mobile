import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:sima_orbit_mobile/const/color.dart';
import 'package:sima_orbit_mobile/provider/penugasan_provider.dart';
import 'package:skeletons/skeletons.dart';

class PenugasanPage extends StatelessWidget {
  const PenugasanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Penugasan & Kepanitiaan"),
          centerTitle: true,
          backgroundColor: PrimaryColor,
        ),
        body: Padding(
          padding: const EdgeInsets.only(right: 15, left: 15, top: 20),
          child: Column(
            children: [
              TextField(
                maxLines: 1,
                decoration: InputDecoration(
                  // labelStyle: TextStyle(color: PrimaryColor),
                  hintText: "Cari",
                  isDense: true,
                  focusColor: PrimaryColor,
                  filled: true,
                  prefixIcon: Icon(Icons.search, size: 30),
                  prefixIconColor: PrimaryColor,
                  suffixIcon: Icon(Icons.close, size: 25),
                  suffixIconColor: PrimaryColor,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: PrimaryColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: PrimaryColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Expanded(
                child: Consumer<PenugasanProvider>(
                  builder: (context, state, child) {
                    return state.isLoading == false
                        ? ListView.builder(
                            itemCount: state.Penugasan!.penugasan.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () =>
                                    state.toDetailPengurus(context, index),
                                child: Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                      color: Color(0xffEBEBEF),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.circle,
                                        size: 20,
                                        color: Colors.green,
                                      ),
                                      SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                              state.Penugasan!.penugasan[index]
                                                  .penugasan.penugasanNama,
                                              style: TextStyle(fontSize: 16)),
                                          Text(
                                              state.Penugasan!.penugasan[index]
                                                  .bidangTugas,
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold)),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.calendar_month,
                                                color: Colors.grey,
                                                size: 20,
                                              ),
                                              SizedBox(width: 10),
                                              Text(
                                                  state
                                                          .Penugasan!
                                                          .penugasan[index]
                                                          .penugasan
                                                          .penugasanMulai
                                                          .toString() +
                                                      " - " +
                                                      state
                                                          .Penugasan!
                                                          .penugasan[index]
                                                          .penugasan
                                                          .penugasanSelesai
                                                          .toString(),
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.grey,
                                                  )),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.location_on,
                                                color: Colors.grey,
                                                size: 20,
                                              ),
                                              SizedBox(width: 10),
                                              Text(
                                                  state
                                                      .Penugasan!
                                                      .penugasan[index]
                                                      .penugasan
                                                      .penugasanTempat,
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.grey,
                                                  )),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          )
                        : SkeletonListView();
                  },
                ),
              )
            ],
          ),
        ));
  }
}
