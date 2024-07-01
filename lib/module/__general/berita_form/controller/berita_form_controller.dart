import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class BeritFormController extends State<BeritaFormView> {
  static late BeritFormController instance;
  late BeritaFormView view;

  @override
  void initState() {
    super.initState();
    instance = this;
    WidgetsBinding.instance.addPostFrameCallback((_) => onReady());
    if (kDebugMode) {
      photo =
          "https://res.cloudinary.com/dotz74j1p/image/upload/v1715660683/no-image.jpg";
      title = "Example title ${Random().nextInt(1000)}";
      body =
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.";
    }
  }

  void onReady() {}

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String? photo;
  String? title;
  String? body;
  save() async {
    showLoading();
    await FirebaseFirestore.instance.collection("news").add({
      "photo": photo,
      "title": title,
      "body": body,
      "like_count": 0,
      "created_at": Timestamp.now(),
    });
    hideLoading();
    Get.back();
    ss("Berhasil membuat berita");
  }
}
