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
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: controller.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sertakan foto yang berguna untuk membantu pengecekan petugas :",
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                const SizedBox(height: 5.0),
                QImagePicker(
                  label: "",
                  validator: Validator.required,
                  value: controller.photo,
                  onChanged: (value) {
                    controller.photo = value;
                  },
                ),
                QTextField(
                  label: "Judul aduan",
                  validator: Validator.required,
                  value: controller.title,
                  onChanged: (value) {
                    controller.title = value;
                  },
                ),
                QMemoField(
                  label: "Alamat aduan",
                  validator: Validator.required,
                  value: controller.address,
                  onChanged: (value) {
                    controller.address = value;
                  },
                ),
                const SizedBox(
                  height: 12.0,
                ),
                QMemoField(
                  label: "Keterangan",
                  validator: Validator.required,
                  value: controller.notes,
                  onChanged: (value) {
                    controller.notes = value;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: QActionButton(
        label: "Kirim",
        onPressed: () async {
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
  State<UserAjukanPengaduanView> createState() =>
      UserAjukanPengaduanController();
}
