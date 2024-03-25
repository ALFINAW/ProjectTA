import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/widget/form/button/button_form.dart';
import 'package:hyper_ui/shared/widget/form/image_picker/image_picker_ajuan_surat.dart';
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
                label: "Tempat / Tanggal Lahir:",
                onChanged: (p0) {},
                hint: "masukan tempat/tanggal lahir anda",
              ),
              QTextFieldForm(
                label: "Umur:",
                onChanged: (p0) {},
                hint: "masukan umur anda",
              ),
              QTextFieldForm(
                label: "Warga Negara:",
                onChanged: (p0) {},
                hint: "masukan warga negara anda",
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
                label: "Pekerjaan:",
                onChanged: (p0) {},
                hint: "masukan pekerjaan anda",
              ),
              QTextFieldForm(
                label: "Alamat / Tempat Tinggal:",
                onChanged: (p0) {},
                hint: "masukan alamat lengkap anda",
              ),
              QImagePickerAS(
                label: "Fotokopi KK:",
                validator: Validator.required,
                value: null,
                onChanged: (value) {},
                hint: "upload fotokopi kk",
              ),
              QTextFieldForm(
                label: "Keperluan:",
                onChanged: (p0) {},
                hint: "masukan keperluan anda",
              ),
              QTextFieldForm(
                label: "Golongan Darah:",
                onChanged: (p0) {},
                hint: "masukan golongan darah anda",
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
  State<UserPengajuanKtpView> createState() => UserPengajuanKtpController();
}
