import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/admin_riwayat_pengajuan_surat_controller.dart';

class AdminRiwayatPengajuanSuratView extends StatefulWidget {
  const AdminRiwayatPengajuanSuratView({Key? key}) : super(key: key);

  Widget build(context, AdminRiwayatPengajuanSuratController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Riwayat Pengajuan Surat",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(13.0),
        color: backgroundColor,
        child: ListView.builder(
          itemCount: 10,
          physics: const ScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () => Get.to(AdminDetailAjuanView()),
              child: Container(
                margin: const EdgeInsets.only(bottom: 13.0),
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 24,
                      offset: Offset(0, 11),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pengajuan Surat Keterangan KTP",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12.0),
                    Text(
                      "Alfin Andrias Wardoyo",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 12.0),
                    Text(
                      "23 Maret 2024",
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    const SizedBox(height: 12.0),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "Selesai",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.blue,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  State<AdminRiwayatPengajuanSuratView> createState() =>
      AdminRiwayatPengajuanSuratController();
}
