import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/user_ajukan_pengaduan_controller.dart';

class UserAjukanPengaduanView extends StatefulWidget {
  const UserAjukanPengaduanView({Key? key}) : super(key: key);

  Widget build(context, UserAjukanPengaduanController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("UserAjukanPengaduan"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<UserAjukanPengaduanView> createState() =>
      UserAjukanPengaduanController();
}
