import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class PengajuanFormView extends StatefulWidget {
  final String jenisSurat;
  const PengajuanFormView({
    Key? key,
    required this.jenisSurat,
  }) : super(key: key);

  Widget build(context, PengajuanFormController controller) {
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
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                QTextFieldForm(
                  label: "Nama:",
                  validator: Validator.required,
                  value: controller.nama,
                  onChanged: (value) {
                    controller.nama = value;
                  },
                  hint: "masukan nama lengkap anda",
                ),
                QTextFieldForm(
                  label: "Tempat lahir:",
                  validator: Validator.required,
                  value: controller.tempatLahir,
                  onChanged: (value) {
                    controller.tempatLahir = value;
                  },
                  hint: "masukan tempat/tanggal lahir anda",
                ),
                QDatePicker(
                  label: "Tanggal lahir",
                  validator: Validator.required,
                  value: controller.tanggalLahir,
                  onChanged: (value) {
                    controller.tanggalLahir = value;
                  },
                ),
                QNumberField(
                  label: "Umur:",
                  validator: Validator.required,
                  value: controller.umur?.toString(),
                  onChanged: (value) {
                    controller.umur = int.tryParse(value) ?? 0;
                  },
                  hint: "masukan umur anda",
                ),
                QTextFieldForm(
                  label: "Warga Negara:",
                  validator: Validator.required,
                  value: controller.wargaNegara,
                  onChanged: (value) {
                    controller.wargaNegara = value;
                  },
                  hint: "masukan warga negara anda",
                ),
                QTextFieldForm(
                  label: "Agama:",
                  validator: Validator.required,
                  value: controller.agama,
                  onChanged: (value) {
                    controller.agama = value;
                  },
                  hint: "masukan agama anda",
                ),
                QTextFieldForm(
                  label: "Jenis Kelamin:",
                  validator: Validator.required,
                  value: controller.jenisKelamin,
                  onChanged: (value) {
                    controller.jenisKelamin = value;
                  },
                  hint: "masukan jenis kelamin anda",
                ),
                QDropdownField(
                  label: "Jenis Kelamin:",
                  items: [
                    {
                      "label": "Pria",
                      "value": "Pria",
                    },
                    {
                      "label": "Wanita",
                      "value": "Wanita",
                    }
                  ],
                  validator: Validator.required,
                  value: controller.jenisKelamin,
                  onChanged: (value, label) {
                    controller.jenisKelamin = value;
                  },
                ),
                QTextFieldForm(
                  label: "Pekerjaan:",
                  validator: Validator.required,
                  value: controller.pekerjaan,
                  onChanged: (value) {
                    controller.pekerjaan = value;
                  },
                  hint: "masukan pekerjaan anda",
                ),
                QTextFieldForm(
                  label: "Alamat / Tempat Tinggal:",
                  value: controller.alamat,
                  validator: Validator.required,
                  onChanged: (value) {
                    controller.alamat = value;
                  },
                  hint: "masukan alamat lengkap anda",
                ),
                QImagePickerAS(
                  label: "Fotokopi KK:",
                  value: controller.fotokopiKK,
                  validator: Validator.required,
                  onChanged: (value) {
                    controller.fotokopiKK = value;
                  },
                  hint: "upload fotokopi kk",
                ),
                QTextFieldForm(
                  label: "Keperluan:",
                  value: controller.keperluan,
                  onChanged: (value) {
                    controller.keperluan = value;
                  },
                  validator: Validator.required,
                  hint: "masukan keperluan anda",
                ),
                QTextFieldForm(
                  label: "Golongan Darah:",
                  value: controller.golonganDarah,
                  validator: Validator.required,
                  onChanged: (value) {
                    controller.golonganDarah = value;
                  },
                  hint: "masukan golongan darah anda",
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: QActionButton(
        label: "Kirim",
        onPressed: () {
          bool isNotValid =
              controller.formKey.currentState!.validate() == false;
          if (isNotValid) {
            return;
          }
          controller.submit();
        },
      ),
    );
  }

  @override
  State<PengajuanFormView> createState() => PengajuanFormController();
}
