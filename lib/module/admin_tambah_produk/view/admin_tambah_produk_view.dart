import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/admin_tambah_produk_controller.dart';

class AdminTambahProdukView extends StatefulWidget {
  const AdminTambahProdukView({Key? key}) : super(key: key);

  Widget build(context, AdminTambahProdukController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tambah Produk",
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nama produk :",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              const SizedBox(height: 8.0),
              QTextFieldForm(
                label: "",
                onChanged: (p0) {},
                hint: "masukan nama produk",
              ),
              const SizedBox(height: 10.0),
              Text(
                "Deskripsi produk :",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              const SizedBox(height: 8.0),
              QMemoField(
                label: '',
                onChanged: ((p0) {}),
                hint: "masukan deskripsi produk",
              ),
              const SizedBox(height: 10.0),
              Text(
                "Harga :",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              const SizedBox(height: 8.0),
              QNumberField(label: '', onChanged: (p0) {}),
              const SizedBox(height: 10.0),
              Text(
                "Sertakan foto produk :",
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
              const SizedBox(height: 10.0),
              Text(
                "Nama penjual :",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              const SizedBox(height: 8.0),
              QTextFieldForm(
                label: "",
                onChanged: (p0) {},
                hint: "masukan nama penjual",
              ),
              const SizedBox(height: 10.0),
              Text(
                "Nomor telepon :",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              const SizedBox(height: 8.0),
              QTextFieldForm(
                label: "",
                onChanged: (p0) {},
                hint: "masukan nomor telepon",
              ),
              const SizedBox(height: 10.0),
              Text(
                "Alamat penjual :",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              const SizedBox(height: 8.0),
              QTextFieldForm(
                label: "",
                onChanged: (p0) {},
                hint: "masukan alamat penjual",
              ),
              const SizedBox(height: 10.0),
              Text(
                "Sertakan foto profil penjual :",
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
  State<AdminTambahProdukView> createState() => AdminTambahProdukController();
}
