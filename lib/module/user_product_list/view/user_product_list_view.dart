import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/user_product_list_controller.dart';

class UserProductListView extends StatefulWidget {
  const UserProductListView({Key? key}) : super(key: key);

  Widget build(context, UserProductListController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("UserProductList"),
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
  State<UserProductListView> createState() => UserProductListController();
}
