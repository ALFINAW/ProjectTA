import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/user_pengajuan_surat_list_view.dart';

class UserPengajuanSuratListController
    extends State<UserPengajuanSuratListView> {
  static late UserPengajuanSuratListController instance;
  late UserPengajuanSuratListView view;

  @override
  void initState() {
    super.initState();
    instance = this;
    WidgetsBinding.instance.addPostFrameCallback((_) => onReady());
  }

  void onReady() {}

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String filterStatus = "Pending";
  updateFilterStatus(String value) {
    filterStatus = value;
    setState(() {});
  }

  approve(String id) async {
    await FirebaseFirestore.instance.collection("user_request").doc(id).update({
      "status": "Approved",
    });
    ss("Berhasil approve");
  }

  reject(String id) async {
    await FirebaseFirestore.instance.collection("user_request").doc(id).update({
      "status": "Rejected",
    });
    ss("Berhasil reject");
  }
}
