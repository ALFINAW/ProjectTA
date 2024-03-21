import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/user_news_detail_controller.dart';

class UserNewsDetailView extends StatefulWidget {
  const UserNewsDetailView({Key? key}) : super(key: key);

  Widget build(context, UserNewsDetailController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("UserNewsDetail"),
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
  State<UserNewsDetailView> createState() => UserNewsDetailController();
}
