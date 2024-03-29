import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/user_ajukan_pengaduan_controller.dart';

class UserAjukanPengaduanView extends StatefulWidget {
  const UserAjukanPengaduanView({Key? key}) : super(key: key);

  Widget build(context, UserAjukanPengaduanController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ajukan Pengaduan",
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
                "Sertakan foto yang berguna untuk membantu pengecekan petugas:",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              const SizedBox(height: 8.0),
              QImagePicker(
                label: "Foto",
                validator: Validator.required,
                value: null,
                onChanged: (value) {},
              ),
              Text(
                "Judul Aduan:",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              const SizedBox(height: 8.0),
              QTextFieldForm(
                label: "",
                onChanged: (p0) {},
                hint: "masukan judul aduan",
              ),
              Text(
                "Tambahkan Keterangan:",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              const SizedBox(height: 8.0),
              QTextFieldForm(
                label: "",
                onChanged: (p0) {},
                hint: "masukan keterangan",
              ),
              Text(
                "Tambahkan Alamat:",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              const SizedBox(height: 8.0),
              QTextFieldForm(
                label: "",
                onChanged: (p0) {},
                hint: "masukan alamat",
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
  State<UserAjukanPengaduanView> createState() =>
      UserAjukanPengaduanController();
}
