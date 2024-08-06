import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/user_detail_aduan_view.dart';

class UserDetailAduanController extends State<UserDetailAduanView> {
  static late UserDetailAduanController instance;
  late UserDetailAduanView view;

  @override
  void initState() {
    instance = this;
    super.initState();
    terimaLaporanPengaduan = widget.item["terima_laporan_pengaduan"] == "Sudah";
    petugasMengerjakanLaporan =
        widget.item["petugas_mengerjakan_laporan"] == "Sudah";
    petugasTelahMenyelesaikanLaporan =
        widget.item["petugas_telah_menyelesaikan_laporan"] == "Sudah";
    namaPetugas = widget.item["nama_petugas"];
    photoPetugas = widget.item["photo_petugas"];
    keterangan = widget.item["keterangan"];
    status = widget.item["status"];
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  bool terimaLaporanPengaduan = false;
  bool petugasMengerjakanLaporan = false;
  bool petugasTelahMenyelesaikanLaporan = false;

  String? namaPetugas;
  String? photoPetugas;
  String? keterangan;
  String? status;

  refresh() {
    setState(() {});
  }

  update() async {
    FirebaseFirestore.instance
        .collection("aduan")
        .doc(widget.item["id"])
        .update({
      "terima_laporan_pengaduan": terimaLaporanPengaduan ? "Sudah" : "Belum",
      "petugas_mengerjakan_laporan":
          petugasMengerjakanLaporan ? "Sudah" : "Belum",
      "petugas_telah_menyelesaikan_laporan":
          petugasTelahMenyelesaikanLaporan ? "Sudah" : "Belum",
      "nama_petugas": namaPetugas,
      "photo_petugas": photoPetugas,
      "keterangan": keterangan,
      "status": status,
    });
    Get.back();
    ss("Berhasil mengupdate aduan!");
  }
}
