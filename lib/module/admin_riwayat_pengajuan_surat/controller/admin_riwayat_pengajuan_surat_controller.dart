import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/admin_riwayat_pengajuan_surat_view.dart';

class AdminRiwayatPengajuanSuratController
    extends State<AdminRiwayatPengajuanSuratView> {
  static late AdminRiwayatPengajuanSuratController instance;
  late AdminRiwayatPengajuanSuratView view;

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
