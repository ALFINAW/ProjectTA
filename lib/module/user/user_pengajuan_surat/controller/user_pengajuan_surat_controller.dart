import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/user_pengajuan_surat_view.dart';

class UserPengajuanSuratController extends State<UserPengajuanSuratView> {
  static late UserPengajuanSuratController instance;
  late UserPengajuanSuratView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
