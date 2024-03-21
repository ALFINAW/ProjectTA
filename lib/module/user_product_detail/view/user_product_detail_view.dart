import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/user_product_detail_controller.dart';

class UserProductDetailView extends StatefulWidget {
  const UserProductDetailView({Key? key}) : super(key: key);

  Widget build(context, UserProductDetailController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("UserProductDetail"),
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
  State<UserProductDetailView> createState() => UserProductDetailController();
}
