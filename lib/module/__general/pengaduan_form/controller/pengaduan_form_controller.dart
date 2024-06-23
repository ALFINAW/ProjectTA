import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class PengaduanFormController extends State<PengaduanFormView> {
  static late PengaduanFormController instance;
  late PengaduanFormView view;

  @override
  void initState() {
    instance = this;
    super.initState();

    if (kDebugMode) {
      photo =
          "https://res.cloudinary.com/dotz74j1p/image/upload/v1715660683/no-image.jpg";
      title = "Aduan xxx ${Random().nextInt(10000)}";
      address = "Jl. xxx xxx xxx xxxx";
      notes =
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.";
    }
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String? photo;
  String? title;
  String? address;
  String? notes;

  submit() async {
    showLoading();
    await FirebaseFirestore.instance.collection("aduan").add({
      "photo": photo,
      "title": title,
      "address": address,
      "notes": notes,
      "status": "Pending",
      "created_at": Timestamp.now(),
    });
    hideLoading();
    Get.back();
    ss("Berhasil membuat aduan");
  }
}
