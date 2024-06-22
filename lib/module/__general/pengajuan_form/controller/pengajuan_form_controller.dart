import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:faker_dart/faker_dart.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class PengajuanFormController extends State<PengajuanFormView> {
  static late PengajuanFormController instance;
  late PengajuanFormView view;

  @override
  void initState() {
    instance = this;
    super.initState();

    if (kDebugMode) {
      var faker = Faker.instance;
      nama = faker.name.fullName();
      tempatLahir = faker.address.city();
      tanggalLahir = DateTime.now().subtract(Duration(days: 365 * 20));
      umur = Random().nextInt(40) + 1;
      wargaNegara = faker.address.country();
      agama = faker.lorem.word();
      jenisKelamin = "Pria";
      pekerjaan = "Wiraswasta";
      alamat = faker.address.streetAddress();
      fotokopiKK =
          "https://res.cloudinary.com/dotz74j1p/image/upload/v1715660683/no-image.jpg";
      keperluan = faker.lorem.sentence();
      golonganDarah = "A";
    }
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String? nama;
  String? tempatLahir;
  DateTime? tanggalLahir;
  int? umur;
  String? wargaNegara;
  String? agama;
  String? jenisKelamin;
  String? pekerjaan;
  String? alamat;
  String? fotokopiKK;
  String? keperluan;
  String? golonganDarah;
  String? status = "Pending";

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  submit() async {
    showLoading();
    await FirebaseFirestore.instance.collection("user_request").add({
      "nama": nama,
      "tempat_lahir": tempatLahir,
      "tanggal_lahir": tanggalLahir,
      "umur": umur,
      "warga_negara": wargaNegara,
      "agama": agama,
      "jenis_kelamin": jenisKelamin,
      "pekerjaan": pekerjaan,
      "alamat": alamat,
      "fotokopi_kk": fotokopiKK,
      "keperluan": keperluan,
      "golongan_darah": golonganDarah,
      "jenis_surat": widget.jenisSurat,
      "status": status,
      "created_at": Timestamp.now(),
      "created_by": currentUser?.uid,
    });
    hideLoading();
    Get.back();
    Get.back();
    ss("Berhasil menyimpan data!");
  }
}
