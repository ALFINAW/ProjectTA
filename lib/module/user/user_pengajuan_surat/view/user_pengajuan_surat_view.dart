import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/user_pengajuan_surat_controller.dart';

class UserPengajuanSuratView extends StatefulWidget {
  const UserPengajuanSuratView({Key? key}) : super(key: key);

  Widget build(context, UserPengajuanSuratController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pengajuan Surat",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
        actions: const [],
      ),
      body: Container(
        color: backgroundColor,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            InkWell(
              onTap: () => Get.to(PengajuanFormView(
                jenisSurat: "Surat Pengantar KTP",
              )),
              child: Container(
                padding: const EdgeInsets.all(15.0),
                height: 80,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 24,
                      offset: Offset(0, 11),
                    ),
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/icon/ktp.png",
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 15.0),
                    Expanded(
                      child: Text(
                        "Pengajuan Surat Pengantar KTP",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15.0),
            InkWell(
              onTap: () => Get.to(PengajuanFormView(
                jenisSurat: "Surat Pengantar KK",
              )),
              child: Container(
                padding: const EdgeInsets.all(15.0),
                height: 80,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 24,
                      offset: Offset(0, 11),
                    ),
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/icon/kk.png",
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 15.0),
                    Expanded(
                      child: Text(
                        "Pengajuan Surat Pengantar KK",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15.0),
            InkWell(
              onTap: () => Get.to(PengajuanFormView(
                jenisSurat: "Surat Pengantar SKCK",
              )),
              child: Container(
                padding: const EdgeInsets.all(15.0),
                height: 80,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 24,
                      offset: Offset(0, 11),
                    ),
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/icon/skck.png",
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 15.0),
                    Expanded(
                      child: Text(
                        "Pengajuan Surat Pengantar SKCK",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<UserPengajuanSuratView> createState() => UserPengajuanSuratController();
}
