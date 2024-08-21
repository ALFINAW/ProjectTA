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
        title: Text("Pengajuan $jenisSurat",
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
                if (controller.isSuratPengajuanSkck) ...[
                  QTextFieldForm(
                    label: "NIK",
                    validator: Validator.required,
                    value: controller.nik,
                    onChanged: (value) {
                      controller.nik = value;
                    },
                  ),
                  QTextFieldForm(
                    label: "No. KK",
                    validator: Validator.required,
                    value: controller.kk,
                    onChanged: (value) {
                      controller.kk = value;
                    },
                  ),
                  QTextFieldForm(
                    label: "Kepala keluarga",
                    validator: Validator.required,
                    value: controller.kepalaKeluarga,
                    onChanged: (value) {
                      controller.kepalaKeluarga = value;
                    },
                  ),
                ],
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
                if (controller.isSuratPengajuanKtp)
                  QNumberField(
                    label: "Umur:",
                    validator: Validator.required,
                    value: controller.umur?.toString(),
                    onChanged: (value) {
                      controller.umur = int.tryParse(value) ?? 0;
                    },
                    hint: "masukan umur anda",
                  ),
                Visibility(
                  visible: controller.isSuratPengajuanKtp ||
                      controller.isSuratPengajuanSkck,
                  child: QTextFieldForm(
                    label: "Warga Negara:",
                    validator: Validator.required,
                    value: controller.wargaNegara,
                    onChanged: (value) {
                      controller.wargaNegara = value;
                    },
                    hint: "masukan warga negara anda",
                  ),
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
                  label: "Agama:",
                  validator: Validator.required,
                  value: controller.agama,
                  onChanged: (value) {
                    controller.agama = value;
                  },
                  hint: "masukan agama anda",
                ),
                Visibility(
                  visible: controller.isSuratPengajuanKk ||
                      controller.isSuratPengajuanSkck,
                  child: QDropdownField(
                    label: "Status Perkawinan:",
                    items: [
                      {
                        "label": "Lajang",
                        "value": "Lajang",
                      },
                      {
                        "label": "Menikah",
                        "value": "Menikah",
                      }
                    ],
                    validator: Validator.required,
                    value: controller.statusPerkawinan,
                    onChanged: (value, label) {
                      controller.statusPerkawinan = value;
                    },
                  ),
                ),
                Visibility(
                  visible: controller.isSuratPengajuanSkck,
                  child: QTextFieldForm(
                    label: "Pendidikan:",
                    validator: Validator.required,
                    value: controller.pendidikan,
                    onChanged: (value) {
                      controller.pendidikan = value;
                    },
                    hint: "masukan pekerjaan anda",
                  ),
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
                if (controller.isSuratPengajuanKtp)
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
                if (controller.isSuratPengajuanKtp)
                  QTextFieldForm(
                    label: "Golongan Darah:",
                    value: controller.golonganDarah,
                    validator: Validator.required,
                    onChanged: (value) {
                      controller.golonganDarah = value;
                    },
                    hint: "masukan golongan darah anda",
                  ),
                if (controller.isSuratPengajuanKk) ...[
                  Row(
                    children: [
                      Expanded(
                        child: H6(
                          title: "Keluarga yang ikut:",
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          controller.addKeluarga();
                        },
                        icon: const Icon(
                          Icons.add,
                          size: 24.0,
                        ),
                      ),
                    ],
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.keluargaList.length,
                    physics: const ScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      var item = controller.keluargaList[index];
                      return Container(
                        padding: const EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                          border: Border.all(
                            width: 1.0,
                            color: Colors.grey[400]!,
                          ),
                        ),
                        margin: const EdgeInsets.only(
                          bottom: 12.0,
                        ),
                        child: Transform.scale(
                          scale: 0.9,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              QTextFieldForm(
                                label: "Nama",
                                value: item["nama"],
                                onChanged: (value) {
                                  item["nama"] = value;
                                },
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
                                value: item["jenis_kelamin"],
                                onChanged: (value, label) {
                                  item["jenis_kelamin"] = value;
                                },
                              ),
                              QDropdownField(
                                label: "Status Perkawinan:",
                                items: [
                                  {
                                    "label": "Lajang",
                                    "value": "Lajang",
                                  },
                                  {
                                    "label": "Menikah",
                                    "value": "Menikah",
                                  }
                                ],
                                value: item["status_perkawinan"],
                                onChanged: (value, label) {
                                  item["status_perkawinan"] = value;
                                },
                              ),
                              QTextFieldForm(
                                label: "Tempat lahir:",
                                value: item["tempat_lahir"],
                                onChanged: (value) {
                                  item["tempat_lahir"] = value;
                                },
                                hint: "masukan tempat/tanggal lahir anda",
                              ),
                              QDatePicker(
                                label: "Tanggal lahir",
                                value: item["tanggal_lahir"],
                                onChanged: (value) {
                                  item["tanggal_lahir"] = value;
                                },
                              ),
                              InkWell(
                                onTap: () => controller.delete(item),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: Text(
                                    "Delete",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
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
