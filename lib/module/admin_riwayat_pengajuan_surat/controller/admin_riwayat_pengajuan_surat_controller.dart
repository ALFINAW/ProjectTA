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

  List<Map<String, String>> riwayatAjuan = [
    {
      "surat": "KTP",
      "nama": "Danu Hartono",
      "tanggal": "23 Maret 2024",
    },
    {
      "surat": "KK",
      "nama": "Deni Sudirwo",
      "tanggal": "12 Frebuari 2024",
    },
    {
      "surat": "KTP",
      "nama": "Soif Nur Hidayat",
      "tanggal": "12 Januari 2024",
    },
    {
      "surat": "SKCK",
      "nama": "Yasin Rohim Makumuloh",
      "tanggal": "27 Desember 2023",
    },
    {
      "surat": "SKCK",
      "nama": "Yudika Ranja",
      "tanggal": "25 Desember 2023",
    },
  ];
}
