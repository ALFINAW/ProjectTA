import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/admin_riwayat_pengaduan_view.dart';

class AdminRiwayatPengaduanController extends State<AdminRiwayatPengaduanView> {
  static late AdminRiwayatPengaduanController instance;
  late AdminRiwayatPengaduanView view;

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
