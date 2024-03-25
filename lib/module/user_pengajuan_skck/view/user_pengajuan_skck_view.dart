import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/user_pengajuan_skck_controller.dart';

class UserPengajuanSkckView extends StatefulWidget {
  const UserPengajuanSkckView({Key? key}) : super(key: key);

  Widget build(context, UserPengajuanSkckController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pengajuan Surat Pengantar SKCK",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: backgroundColor,
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              QTextFieldForm(
                label: "Nama Lengkap:",
                onChanged: (p0) {},
                hint: "masukan nama lengkap anda",
              ),
              QTextFieldForm(
                label: "NIK:",
                onChanged: (p0) {},
                hint: "masukan nik anda",
              ),
              QTextFieldForm(
                label: "No. KK:",
                onChanged: (p0) {},
                hint: "masukan no kk anda",
              ),
              QTextFieldForm(
                label: "Kepala Keluarga:",
                onChanged: (p0) {},
                hint: "masukan kepala keluarga anda",
              ),
              QTextFieldForm(
                label: "Tempat / Tanggal Lahir:",
                onChanged: (p0) {},
                hint: "masukan tempat/tanggal lahir anda",
              ),
              QTextFieldForm(
                label: "Agama:",
                onChanged: (p0) {},
                hint: "masukan agama anda",
              ),
              QTextFieldForm(
                label: "Jenis Kelamin:",
                onChanged: (p0) {},
                hint: "masukan jenis kelamin anda",
              ),
              QTextFieldForm(
                label: "Alamat / Tempat Tinggal:",
                onChanged: (p0) {},
                hint: "masukan alamat lengkap anda",
              ),
              QTextFieldForm(
                label: "Status:",
                onChanged: (p0) {},
                hint: "masukan status anda",
              ),
              QTextFieldForm(
                label: "Pendidikan:",
                onChanged: (p0) {},
                hint: "masukan pendidikan anda",
              ),
              QTextFieldForm(
                label: "Pekerjaan:",
                onChanged: (p0) {},
                hint: "masukan pekerjaan anda",
              ),
              QTextFieldForm(
                label: "Kewarganegaraan:",
                onChanged: (p0) {},
                hint: "masukan kewarganegaraan anda",
              ),
              QTextFieldForm(
                label: "Keperluan:",
                onChanged: (p0) {},
                hint: "masukan keperluan anda",
              ),
              const SizedBox(height: 15.0),
              QButtonForm(label: "Kirim", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<UserPengajuanSkckView> createState() => UserPengajuanSkckController();
}
