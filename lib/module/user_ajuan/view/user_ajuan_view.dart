import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/user_ajuan_controller.dart';

class UserAjuanView extends StatefulWidget {
  const UserAjuanView({Key? key}) : super(key: key);

  Widget build(context, UserAjuanController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("UserAjuan"),
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
  State<UserAjuanView> createState() => UserAjuanController();
}
