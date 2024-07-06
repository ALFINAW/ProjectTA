import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class UserDetailAjuanView extends StatefulWidget {
  final Map<String, dynamic> item;
  UserDetailAjuanView({
    Key? key,
    required this.item,
  }) : super(key: key);

  Widget build(context, UserDetailAjuanController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Ajuan Surat",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(13.0),
          color: backgroundColor,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20.0),
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
                          child: Text(
                            "${item!["jenis_surat"]}",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          "${item!["status"]}",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.orange[900],
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    Divider(),
                    Text(
                      "Nama :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      item["nama"],
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      "Tempat / Tanggal Lahir :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "${item["tempat_lahir"]}, ${(item["tanggal_lahir"].toDate() as DateTime).dMMMy}",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      "Umur :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "${item["umur"]}",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      "Warga Negara :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "${item["warga_negara"]}",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      "Agama :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "${item["agama"]}",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      "Jenis Kelamin :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "${item["jenis_kelamin"]}",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      "Pekerjaan :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "Belum kerja",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      "Alamat / Tempat Tinggal :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      item["alamat"],
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      "Fotokopi KK :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Image.network(
                      item["fotokopi_kk"] ??
                          "https://res.cloudinary.com/dotz74j1p/image/upload/v1715660683/no-image.jpg",
                      width: 200.0,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      "Keperluan :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      item["keperluan"] ?? "-",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      "Golongan Darah :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "${item["golongan_darah"]}",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      "Keterangan :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "${item["keterangan"] ?? "-"}",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              AbsorbPointer(
                absorbing: !isAdmin,
                child: Container(
                  padding: EdgeInsets.all(20.0),
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
                          "Keterangan",
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
                            value: controller.isApprove,
                            onChanged: (value) {
                              controller.isApprove = value ?? false;
                              controller.refresh();
                            },
                          ),
                          Expanded(
                            child: Text(
                              "Silahkan datang dan ambil surat anda di balai desa",
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      QTextField(
                        label: "Atau",
                        value: controller.rejectedNotes,
                        onChanged: (value) {
                          controller.rejectedNotes;
                          controller.refresh();
                        },
                      ),
                      Text(
                        "* Kosongkan jika di acc, isi jika tidak di acc",
                        style: TextStyle(
                          fontSize: 10.0,
                        ),
                      ),
                      QDatePicker(
                        label: "Tanggal",
                        validator: Validator.required,
                        value: controller.date,
                        onChanged: (value) {
                          print("value: $value");
                          controller.date = value;
                        },
                      ),
                      QTimePicker(
                        label: "Jam",
                        validator: Validator.required,
                        value: controller.time,
                        onChanged: (value) {
                          print("value: $value");
                          controller.time = value;
                        },
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: true,
                            onChanged: (value) {},
                          ),
                          Expanded(
                            child: Text(
                              "Sudah diambil?",
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      if (isAdmin)
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              foregroundColor: Colors.white,
                            ),
                            onPressed: () => controller.save(),
                            child: const Text("Save"),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<UserDetailAjuanView> createState() => UserDetailAjuanController();
}
