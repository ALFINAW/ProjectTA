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
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        "Progress Aduan",
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
                    Row(
                      children: [
                        Checkbox(
                          value: controller.terimaLaporanPengaduan,
                          onChanged: (value) {
                            controller.terimaLaporanPengaduan = value ?? false;
                            controller.refresh();
                          },
                        ),
                        Expanded(
                          child: Text(
                            "Terima laporan pengaduan",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: controller.petugasMengerjakanLaporan,
                          onChanged: (value) {
                            controller.petugasMengerjakanLaporan =
                                value ?? false;
                            controller.refresh();
                          },
                        ),
                        Expanded(
                          child: Text(
                            "Petugas mengerjakan laporan",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: controller.petugasTelahMenyelesaikanLaporan,
                          onChanged: (value) {
                            controller.petugasTelahMenyelesaikanLaporan =
                                value ?? false;
                            controller.refresh();
                          },
                        ),
                        Expanded(
                          child: Text(
                            "Petugas telah menyelesaikan laporan",
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
              const SizedBox(
                height: 12.0,
              ),
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: QActionButton(
        label: "Update",
        onPressed: () => controller.update(),
      ),
    );
  }

  @override
  State<UserDetailAduanView> createState() => UserDetailAduanController();
}
