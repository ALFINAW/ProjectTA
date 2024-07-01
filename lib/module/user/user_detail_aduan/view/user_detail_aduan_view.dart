import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:timeline_tile/timeline_tile.dart';

class UserDetailAduanView extends StatefulWidget {
  const UserDetailAduanView({Key? key}) : super(key: key);

  Widget build(context, UserDetailAduanController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Aduan",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(13.0),
          color: backgroundColor,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Nomor Aduan",
                                style: TextStyle(
                                  fontSize: 15.0,
                                ),
                              ),
                              Text(
                                "#AW0005",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 17.0, right: 17.0, top: 3.0, bottom: 3.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1.3,
                              color: Colors.red,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                          ),
                          child: Text(
                            "Lapor",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 5.0),
                    Container(
                        height: 0.80,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.black),
                    const SizedBox(height: 15.0),
                    Row(
                      children: [
                        const Icon(
                          Icons.person_2_outlined,
                          size: 27.0,
                        ),
                        const SizedBox(width: 15.0),
                        Text(
                          "Rizal",
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      children: [
                        const Icon(
                          Icons.date_range_outlined,
                          size: 27.0,
                        ),
                        const SizedBox(width: 15.0),
                        Text(
                          "25 Maret 2024, 16:59",
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          size: 27.0,
                        ),
                        const SizedBox(width: 15.0),
                        Text(
                          "Jl. Rajawali RT/RW 04/05 Karangrena",
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 13.0),
              Container(
                padding: const EdgeInsets.all(20.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            height: 235.0,
                            width: MediaQuery.of(context).size.width * 0.55,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://images.unsplash.com/photo-1560782202-154b39d57ef2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cG90aG9sZXN8ZW58MHx8MHx8fDA%3D",
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  8.0,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          Container(
                            height: 235.0,
                            width: MediaQuery.of(context).size.width * 0.55,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://images.unsplash.com/photo-1587763483696-6d41d2de6084?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cG90aG9sZXN8ZW58MHx8MHx8fDA%3D",
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  8.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    Text(
                      "Jalan Berlubang",
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      "Jalan berlubang ini sudah sangat parah dan mengganggu perjalanan warga yang melewati daerah tersebut, mohon segera diperbaiki. ",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 13.0),
              Container(
                padding: const EdgeInsets.all(20.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Riwayat Aduan",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Status:",
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                            const SizedBox(width: 5.0),
                            Text(
                              "Lapor",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Container(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        children: [
                          // TimelineTile(
                          //     alignment: TimelineAlign.start,
                          //     lineXY: 0.1,
                          //     isFirst: true,
                          //     indicatorStyle: IndicatorStyle(
                          //       width: 20,
                          //       color: Colors.grey,
                          //     ),
                          //     endChild: Container(
                          //       padding: EdgeInsets.all(15.0),
                          //       child: Column(
                          //         crossAxisAlignment: CrossAxisAlignment.start,
                          //         children: [
                          //           Text(
                          //             'Petugas telah menyelesaikan laporan',
                          //             style: TextStyle(
                          //               fontSize: 16,
                          //             ),
                          //           ),
                          //           Text(
                          //             '-',
                          //             style: TextStyle(
                          //               fontSize: 15,
                          //               color: Colors.grey,
                          //             ),
                          //           ),
                          //         ],
                          //       ),
                          //     )),
                          // TimelineTile(
                          //     alignment: TimelineAlign.start,
                          //     indicatorStyle: IndicatorStyle(
                          //       width: 20,
                          //       color: Colors.grey,
                          //     ),
                          //     endChild: Container(
                          //       padding: EdgeInsets.all(15.0),
                          //       child: Column(
                          //         crossAxisAlignment: CrossAxisAlignment.start,
                          //         children: [
                          //           Text(
                          //             'Petugas mengerjakan laporan',
                          //             style: TextStyle(
                          //               fontSize: 16,
                          //             ),
                          //           ),
                          //           Text(
                          //             '-',
                          //             style: TextStyle(
                          //               fontSize: 15,
                          //               color: Colors.grey,
                          //             ),
                          //           ),
                          //         ],
                          //       ),
                          //     )),
                          TimelineTile(
                              alignment: TimelineAlign.start,
                              afterLineStyle: LineStyle(
                                color: primaryColor,
                                thickness: 4,
                              ),
                              isFirst: true,
                              indicatorStyle: IndicatorStyle(
                                width: 20,
                                color: primaryColor,
                              ),
                              endChild: Container(
                                padding: EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Admin desa telah menerima laporan',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: primaryColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '25 Maret 2024, 17:03',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: primaryColor,
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          TimelineTile(
                              alignment: TimelineAlign.start,
                              indicatorStyle: IndicatorStyle(
                                width: 20,
                                color: Colors.grey,
                              ),
                              endChild: Container(
                                padding: EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Laporan pengaduan diterima pemerintah desa',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      '25 Maret 2024, 16:59',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          TimelineTile(
                              alignment: TimelineAlign.start,
                              lineXY: 0,
                              isLast: true,
                              indicatorStyle: IndicatorStyle(
                                width: 20,
                                color: Colors.grey,
                              ),
                              endChild: Container(
                                padding: EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Masyarakat melaporkan pengaduan',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      '25 Maret 2024, 16:59',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<UserDetailAduanView> createState() => UserDetailAduanController();
}
