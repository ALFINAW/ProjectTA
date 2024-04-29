import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/admin_tambah_berita_controller.dart';

class AdminTambahBeritaView extends StatefulWidget {
  const AdminTambahBeritaView({Key? key}) : super(key: key);

  Widget build(context, AdminTambahBeritaController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tambah Berita",
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Judul berita :",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              const SizedBox(height: 8.0),
              QTextFieldForm(
                label: "",
                onChanged: (p0) {},
                hint: "masukan judul berita",
              ),
              const SizedBox(height: 10.0),
              Text(
                "Deskripsi :",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              const SizedBox(height: 8.0),
              QMemoField(
                label: '',
                onChanged: ((p0) {}),
                hint: "masukan deskripsi berita",
              ),
              const SizedBox(height: 10.0),
              Text(
                "Sertakan foto berita :",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              const SizedBox(height: 8.0),
              QImagePicker(
                label: "",
                validator: Validator.required,
                value: null,
                onChanged: (value) {},
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
  State<AdminTambahBeritaView> createState() => AdminTambahBeritaController();
}
