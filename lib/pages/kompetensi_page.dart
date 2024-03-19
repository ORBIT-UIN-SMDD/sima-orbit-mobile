import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sima_orbit_mobile/const/color.dart';
import 'package:sima_orbit_mobile/provider/kompetensi_provider.dart';
import 'package:skeletons/skeletons.dart';

class KompetensiPage extends StatelessWidget {
  const KompetensiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Kompetensi"),
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
                child: Consumer<KompetensiProvider>(
                  builder: (context, state, child) {
                    return state.isLoading == false
                        ? ListView.builder(
                            itemCount: state.kompetensi!.kompetensi.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () =>
                                    state.toDetailKompetensi(context, index),
                                child: Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                      color: Color(0xffEBEBEF),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        "assets/icons/sertifikat.png",
                                        width: 50,
                                      ),
                                      SizedBox(width: 10),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                                state
                                                    .kompetensi!
                                                    .kompetensi[index]
                                                    .kompetensiNama,
                                                style: TextStyle(fontSize: 16)),
                                            SizedBox(height: 3),
                                            Text(
                                                "Bidang : " +
                                                    state
                                                        .kompetensi!
                                                        .kompetensi[index]
                                                        .bidang
                                                        .bidangNama,
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            SizedBox(height: 3),
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
                                                        .kompetensi!
                                                        .kompetensi[index]
                                                        .kompetensiTanggal,
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.grey,
                                                    )),
                                              ],
                                            ),
                                          ],
                                        ),
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
