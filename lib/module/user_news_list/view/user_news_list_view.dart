import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/user_news_list_controller.dart';

class UserNewsListView extends StatefulWidget {
  const UserNewsListView({Key? key}) : super(key: key);

  Widget build(context, UserNewsListController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("UserNewsList"),
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
  State<UserNewsListView> createState() => UserNewsListController();
}
