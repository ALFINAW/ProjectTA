import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/widget/form/textfield/text_field_form_dark.dart';
import '../controller/admin_detail_ajuan_controller.dart';

class AdminDetailAjuanView extends StatefulWidget {
  final Map<String, dynamic> item;
  const AdminDetailAjuanView({
    super.key,
    required this.item,
  });

  @override
  State<AdminDetailAjuanView> createState() => _AdminDetailAjuanViewState();
}

class _AdminDetailAjuanViewState extends State<AdminDetailAjuanView> {
  bool _isMale = false;
  bool _isFemale = false;

  approve(String id) async {
    await FirebaseFirestore.instance.collection("user_request").doc(id).update({
      "status": "Approved",
    });
    Get.back();
    ss("Berhasil approve");
  }

  reject(String id) async {
    await FirebaseFirestore.instance.collection("user_request").doc(id).update({
      "status": "Rejected",
    });
    Get.back();
    ss("Berhasil reject");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Pengajuan Surat",
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
                    Text(
                      "Nama :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "${widget.item["nama"]}",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      "Tempat / Tanggal Lahir :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "${widget.item["tempat_lahir"]}, ${(widget.item["tanggal_lahir"].toDate() as DateTime).dMMMy}",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      "Umur :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "${widget.item["umur"]}",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      "Warga Negara :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "${widget.item["warga_negara"]}",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      "Agama :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "${widget.item["agama"]}",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      "Jenis Kelamin :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "${widget.item["jenis_kelamin"]}",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      "Pekerjaan :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "${widget.item["pekerjaan"]}",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      "Alamat / Tempat Tinggal :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "${widget.item["alamat"]}",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      "Fotokopi KK :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Image.network(
                      widget.item["fotokopi_kk"] ??
                          "https://res.cloudinary.com/dotz74j1p/image/upload/v1715660683/no-image.jpg",
                      width: 200.0,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      "Keperluan :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "${widget.item["keperluan"]}",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      "Golongan Darah :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "${widget.item["golongan_darah"]}",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      "Status :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "${widget.item["status"]}",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Divider(),
                    const SizedBox(height: 8.0),
                    AbsorbPointer(
                      absorbing: isAdmin,
                      child: QMemoField(
                        label: "Keterangan",
                        validator: Validator.required,
                        value: widget.item["keterangan"] ?? "",
                        onChanged: (value) {
                          FirebaseFirestore.instance
                              .collection("user_request")
                              .doc(widget.item["id"])
                              .update({
                            "keterangan": value,
                            "price": 25,
                          });
                        },
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    if (widget.item["status"] == "Pending" && isAdmin)
                      Container(
                        margin: const EdgeInsets.only(
                          top: 12.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () => approve(widget.item["id"]),
                                child: Text('Approve'),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.green,
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () => reject(widget.item["id"]),
                                child: Text('Reject'),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.red,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 13.0),
            ],
          ),
        ),
      ),
    );
  }
}
