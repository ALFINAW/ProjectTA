import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/widget/form/image_picker/image_picker_dark.dart';
import 'package:hyper_ui/shared/widget/form/memo_field/memo_field_dark.dart';

import '../controller/admin_detail_aduan_controller.dart';

class AdminDetailAduanView extends StatefulWidget {
  const AdminDetailAduanView({super.key});

  @override
  State<AdminDetailAduanView> createState() => _AdminDetailAduanViewState();
}

class _AdminDetailAduanViewState extends State<AdminDetailAduanView> {
  bool _isMale = false;
  bool _isFemale = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Pengaduan",
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
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Nomor Aduan",
                                style: TextStyle(
                                  fontSize: 15.0,
                                ),
                              ),
                              Text(
                                "#AW0001",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 17.0, right: 17.0, top: 3.0, bottom: 3.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1.3,
                              color: Colors.red,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                          ),
                          child: Text(
                            "Lapor",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 5.0),
                    Container(
                        height: 0.80,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.black),
                    const SizedBox(height: 15.0),
                    Row(
                      children: [
                        const Icon(
                          Icons.person_2_outlined,
                          size: 27.0,
                        ),
                        const SizedBox(width: 15.0),
                        Text(
                          "Alfin123",
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      children: [
                        const Icon(
                          Icons.date_range_outlined,
                          size: 27.0,
                        ),
                        const SizedBox(width: 15.0),
                        Text(
                          "25 Maret 2024, 16:59",
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          size: 27.0,
                        ),
                        const SizedBox(width: 15.0),
                        Text(
                          "Jl. Rajawali RT/RW 04/05 Karangrena",
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 13.0),
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
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            height: 235.0,
                            width: MediaQuery.of(context).size.width * 0.55,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://images.unsplash.com/photo-1515162816999-a0c47dc192f7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cG90aG9sZXN8ZW58MHx8MHx8fDA%3D",
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  8.0,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          Container(
                            height: 235.0,
                            width: MediaQuery.of(context).size.width * 0.55,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://images.unsplash.com/photo-1587763483696-6d41d2de6084?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cG90aG9sZXN8ZW58MHx8MHx8fDA%3D",
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  8.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    Text(
                      "Jalan Berlubang",
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      "Jalan berlubang ini sudah sangat parah dan mengganggu perjalanan warga yang melewati daerah tersebut, mohon segera diperbaiki. ",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 13.0),
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
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Progres Aduan",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    CheckboxListTile(
                      title: Text(
                        'Terima laporan pengaduan',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      contentPadding: EdgeInsets.only(left: -8.0),
                      controlAffinity: ListTileControlAffinity.leading,
                      value: _isMale,
                      onChanged: (bool? value) {
                        setState(() {
                          _isMale = value ?? false;
                          if (_isMale) {
                            _isFemale = false;
                          }
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(
                        'Petugas mengerjakan laporan',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      contentPadding: EdgeInsets.only(left: -8.0),
                      controlAffinity: ListTileControlAffinity.leading,
                      value: _isMale,
                      onChanged: (bool? value) {
                        setState(() {
                          _isMale = value ?? false;
                          if (_isMale) {
                            _isFemale = false;
                          }
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text(
                        'Petugas telah menyelesaikan laporan',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      contentPadding: EdgeInsets.only(left: -8.0),
                      controlAffinity: ListTileControlAffinity.leading,
                      value: _isMale,
                      onChanged: (bool? value) {
                        setState(() {
                          _isMale = value ?? false;
                          if (_isMale) {
                            _isFemale = false;
                          }
                        });
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 13.0),
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
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Tindak Lanjut Petugas",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      "Nama petugas :",
                      style: TextStyle(fontSize: 15.0),
                    ),
                    const SizedBox(height: 5.0),
                    QTextFieldFormDark(
                      label: "",
                      onChanged: (p0) {},
                      hint: "masukan nama petugas",
                    ),
                    Text(
                      "Sertakan foto tindak lanjut :",
                      style: TextStyle(fontSize: 15.0),
                    ),
                    const SizedBox(height: 5.0),
                    QImagePickerDark(
                      label: "",
                      validator: Validator.required,
                      value: null,
                      onChanged: (value) {},
                    ),
                    Text(
                      "Keterangan :",
                      style: TextStyle(fontSize: 15.0),
                    ),
                    const SizedBox(height: 5.0),
                    QMemoFieldDark(
                      label: '',
                      onChanged: ((p0) {}),
                      hint: "masukan deskripsi produk",
                    ),
                    const SizedBox(height: 15.0),
                    QButtonForm(label: "Kirim", onPressed: () {}),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
