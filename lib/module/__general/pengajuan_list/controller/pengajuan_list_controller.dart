import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/pengajuan_list_view.dart';

class PengajuanListController extends State<PengajuanListView> {
  static late PengajuanListController instance;
  late PengajuanListView view;

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
}
