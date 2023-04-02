import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:sima_orbit_mobile/const/color.dart';
import 'package:sima_orbit_mobile/provider/agenda_provider.dart';
import 'package:skeletons/skeletons.dart';

class AgendaPage extends StatelessWidget {
  const AgendaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xffE2E2EB),
      appBar: AppBar(
        title: Text("Agenda"),
        centerTitle: true,
        backgroundColor: PrimaryColor,
      ),
      body: Padding(
          padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
          child: Consumer<AgendaProvider>(
            builder: (context, state, child) {
              return state.isLoading == false
                  ? ListView.builder(
                      itemCount: state.agenda!.agenda.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 15),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Color(0xffEBEBEF),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.all(3),
                                child: Column(
                                  children: [
                                    Text(
                                      state.agenda!.agenda[index].agendaNama,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.black),
                                    ),
                                    SizedBox(height: 15),
                                    Container(
                                      width: double.infinity,
                                      height: 2,
                                      color: PrimaryColor,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 7),
                              Text(
                                "Deskripsi",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                              SizedBox(height: 3),
                              Text(
                                state.agenda!.agenda[index].agendaDeskripsi,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                              SizedBox(height: 7),
                              Text(
                                "Tanggal",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                              SizedBox(height: 3),
                              Text(
                                state.agenda!.agenda[index].agendaMulai +
                                    " - " +
                                    state.agenda!.agenda[index].agendaSelesai,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                              SizedBox(height: 7),
                              Text(
                                "waktu",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                              SizedBox(height: 3),
                              Text(
                                state.agenda!.agenda[index].agendaWaktu,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                              SizedBox(height: 7),
                              Text(
                                "Lokasi",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                              SizedBox(height: 3),
                              Text(
                                state.agenda!.agenda[index].agendaTempat,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                              SizedBox(height: 7),
                              Text(
                                "Keterangan",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                              SizedBox(height: 3),
                              Text(
                                state.agenda!.agenda[index].agendaKeterangan,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                              SizedBox(height: 10)
                            ],
                          ),
                        );
                      },
                    )
                  : SkeletonListView();
            },
          )),
    );
  }
}
