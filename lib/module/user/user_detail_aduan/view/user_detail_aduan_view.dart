import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:timeline_tile/timeline_tile.dart';

class UserDetailAduanView extends StatefulWidget {
  final Map<String, dynamic> item;
  const UserDetailAduanView({
    Key? key,
    required this.item,
  }) : super(key: key);

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
              if (isAdmin) ...[
                // BaseContainer(
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Container(
                //         width: MediaQuery.of(context).size.width,
                //         child: Text(
                //           "Progress Aduan",
                //           textAlign: TextAlign.center,
                //           style: TextStyle(
                //             fontSize: 16.0,
                //             fontWeight: FontWeight.bold,
                //           ),
                //         ),
                //       ),
                //       const SizedBox(
                //         height: 12.0,
                //       ),
                //       Row(
                //         children: [
                //           Checkbox(
                //             value: controller.terimaLaporanPengaduan,
                //             onChanged: (value) {
                //               controller.terimaLaporanPengaduan =
                //                   value ?? false;
                //               controller.refresh();
                //             },
                //           ),
                //           Expanded(
                //             child: Text(
                //               "Terima laporan pengaduan",
                //               style: TextStyle(
                //                 fontSize: 14.0,
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //       Row(
                //         children: [
                //           Checkbox(
                //             value: controller.petugasMengerjakanLaporan,
                //             onChanged: (value) {
                //               controller.petugasMengerjakanLaporan =
                //                   value ?? false;
                //               controller.refresh();
                //             },
                //           ),
                //           Expanded(
                //             child: Text(
                //               "Petugas mengerjakan laporan",
                //               style: TextStyle(
                //                 fontSize: 14.0,
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //       Row(
                //         children: [
                //           Checkbox(
                //             value: controller.petugasTelahMenyelesaikanLaporan,
                //             onChanged: (value) {
                //               controller.petugasTelahMenyelesaikanLaporan =
                //                   value ?? false;
                //               controller.refresh();
                //             },
                //           ),
                //           Expanded(
                //             child: Text(
                //               "Petugas telah menyelesaikan laporan",
                //               style: TextStyle(
                //                 fontSize: 14.0,
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //     ],
                //   ),
                // ),
                // const SizedBox(
                //   height: 12.0,
                // ),
                BaseContainer(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          "Tindak Lanjut Petugas Aduan",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      QTextField(
                        label: "Nama petugas:",
                        validator: Validator.required,
                        value: controller.namaPetugas,
                        onChanged: (value) {
                          controller.namaPetugas = value;
                        },
                      ),
                      QImagePicker(
                        label: "Sertakan foto tindak lanjut:",
                        validator: Validator.required,
                        value: controller.photoPetugas,
                        onChanged: (value) {
                          controller.photoPetugas = value;
                        },
                      ),
                      QMemoField(
                        label: "Keterangan",
                        validator: Validator.required,
                        value: controller.keterangan,
                        onChanged: (value) {
                          controller.keterangan = value;
                        },
                      ),
                      QDropdownField(
                        label: "Status",
                        validator: Validator.required,
                        items: [
                          {
                            "label": "Pending",
                            "value": "Pending",
                          },
                          {
                            "label": "Ongoing",
                            "value": "Ongoing",
                          },
                          {
                            "label": "Done",
                            "value": "Done",
                          }
                        ],
                        value: item["status"],
                        onChanged: (value, label) {
                          controller.status = value;
                        },
                      ),
                    ],
                  ),
                ),
              ],
              if (isUser) ...[
                BaseContainer(
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
                                  "#${item["id"]}",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 12.0,
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
                              "${item["status"]}",
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
                            "${item["nama_petugas"] ?? "-"}",
                            style: TextStyle(
                              fontSize: 14.0,
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
                            "${(item["created_at"] as Timestamp).toDate().dMMMykkmmss}",
                            style: TextStyle(
                              fontSize: 14.0,
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
                          Expanded(
                            child: Text(
                              "${item["address"]}",
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 13.0),
                BaseContainer(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 235.0,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              item["photo"] ??
                                  "https://res.cloudinary.com/dotz74j1p/image/upload/v1715660683/no-image.jpg",
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
                      const SizedBox(height: 15.0),
                      Text(
                        "${item["title"]}",
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        "${item["notes"]}",
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 13.0),
                BaseContainer(
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
                                "${item["status"]}",
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
                            Builder(builder: (context) {
                              bool isPending = item["status"] == "Pending";
                              bool isOngoing = item["status"] == "Ongoing";
                              bool isDone = item["status"] == "Done";

                              // isPending = true;
                              // isOngoing = true;
                              // isDone = true;

                              if (isDone) {
                                isDone = true;
                                isOngoing = true;
                                isPending = true;
                              } else if (isOngoing) {
                                isDone = false;
                                isOngoing = true;
                                isPending = true;
                              } else if (isPending) {
                                isDone = false;
                                isOngoing = false;
                                isPending = true;
                              }

                              return Column(
                                children: [
                                  TimelineTile(
                                      alignment: TimelineAlign.start,
                                      afterLineStyle: LineStyle(
                                        color: isOngoing
                                            ? primaryColor
                                            : Colors.grey,
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                                      beforeLineStyle: LineStyle(
                                        color: isOngoing
                                            ? primaryColor
                                            : Colors.grey,
                                        thickness: 4,
                                      ),
                                      afterLineStyle: LineStyle(
                                        color:
                                            isDone ? primaryColor : Colors.grey,
                                        thickness: 4,
                                      ),
                                      indicatorStyle: IndicatorStyle(
                                        width: 20,
                                        color: isOngoing
                                            ? primaryColor
                                            : Colors.grey,
                                      ),
                                      endChild: Container(
                                        padding: EdgeInsets.all(15.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Laporan pengaduan diterima pemerintah desa',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: isOngoing
                                                    ? FontWeight.bold
                                                    : null,
                                              ),
                                            ),
                                            Text(
                                              '25 Maret 2024, 16:59',
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: isOngoing
                                                    ? primaryColor
                                                    : Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                  TimelineTile(
                                      alignment: TimelineAlign.start,
                                      beforeLineStyle: LineStyle(
                                        color:
                                            isDone ? primaryColor : Colors.grey,
                                        thickness: 4,
                                      ),
                                      lineXY: 0,
                                      isLast: true,
                                      indicatorStyle: IndicatorStyle(
                                        width: 20,
                                        color:
                                            isDone ? primaryColor : Colors.grey,
                                      ),
                                      endChild: Container(
                                        padding: EdgeInsets.all(15.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Masyarakat melaporkan pengaduan',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: isDone
                                                    ? FontWeight.bold
                                                    : null,
                                              ),
                                            ),
                                            Text(
                                              '25 Maret 2024, 16:59',
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: isDone
                                                    ? primaryColor
                                                    : Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                ],
                              );
                            }),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
      bottomNavigationBar: isUser
          ? null
          : QActionButton(
              label: "Update",
              onPressed: () => controller.update(),
            ),
    );
  }

  @override
  State<UserDetailAduanView> createState() => UserDetailAduanController();
}

class BaseContainer extends StatelessWidget {
  final Widget child;
  const BaseContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      child: child,
    );
  }
}
