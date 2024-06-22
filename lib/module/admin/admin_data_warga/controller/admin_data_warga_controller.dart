import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/admin_data_warga_view.dart';

class AdminDataWargaController extends State<AdminDataWargaView> {
  static late AdminDataWargaController instance;
  late AdminDataWargaView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List<Map<String, String>> dataWarga = [
    {
      "username": "Danu",
      "nama lengkap": "Danu Hartono",
      "email": "danuhar22@gmail.com"
    },
    {
      "username": "Deni123",
      "nama lengkap": "Deni Sudirwo",
      "email": "sudirwod11@gmail.com"
    },
    {
      "username": "Soifnh",
      "nama lengkap": "Soif Nur Hidayat",
      "email": "soifnurh231@gmail.com"
    },
    {
      "username": "Yasinzu",
      "nama lengkap": "Yasin Rohim Makumuloh",
      "email": "yasinzu669@gmail.com"
    },
    {
      "username": "Dika",
      "nama lengkap": "Yudika Ranja",
      "email": "Dikaranja33@gmail.com"
    },
    {
      "username": "Rizal",
      "nama lengkap": "Rizal Mustofa Hasan",
      "email": " rizalmus23@gmail.com"
    },
  ];
}
