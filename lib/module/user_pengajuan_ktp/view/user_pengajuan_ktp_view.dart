import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/widget/form/button/button_form.dart';
import 'package:hyper_ui/shared/widget/form/textfield/text_field_form.dart';
import '../controller/user_pengajuan_ktp_controller.dart';

class UserPengajuanKtpView extends StatefulWidget {
  const UserPengajuanKtpView({Key? key}) : super(key: key);

  Widget build(context, UserPengajuanKtpController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pengajuan Surat Pengantar KTP",
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
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              QTextFieldForm(
                label: "Nama:",
                onChanged: (p0) {},
                hint: "masukan nama lengkap anda",
              ),
              QTextFieldForm(
                label: "Tempat/tanggal lahir:",
                onChanged: (p0) {},
                hint: "masukan tempat/tanggal lahir anda",
              ),
              QTextFieldForm(
                label: "Umur:",
                onChanged: (p0) {},
                hint: "masukan umur anda",
              ),
              QTextFieldForm(
                label: "Warga negara:",
                onChanged: (p0) {},
                hint: "masukan warga negara anda",
              ),
              QTextFieldForm(
                label: "Agama:",
                onChanged: (p0) {},
                hint: "masukan agama anda",
              ),
              QTextFieldForm(
                label: "Jenis kelamin:",
                onChanged: (p0) {},
                hint: "masukan jenis kelamin anda",
              ),
              QTextFieldForm(
                label: "Pekerjaan:",
                onChanged: (p0) {},
                hint: "masukan pekerjaan anda",
              ),
              QTextFieldForm(
                label: "Alamat/tempat tinggal:",
                onChanged: (p0) {},
                hint: "masukan alamat lengkap anda",
              ),
              QTextFieldForm(
                label: "Surat bukti diri:",
                onChanged: (p0) {},
                hint: "masukan no kk anda",
              ),
              QTextFieldForm(
                label: "Keperluan:",
                onChanged: (p0) {},
                hint: "masukan keperluan anda",
              ),
              QTextFieldForm(
                label: "Golongan darah:",
                onChanged: (p0) {},
                hint: "masukan golongan darah anda",
              ),
              const SizedBox(height: 15.0),
              QButtonForm(label: "Ajukan", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<UserPengajuanKtpView> createState() => UserPengajuanKtpController();
}
