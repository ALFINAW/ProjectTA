import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/admin_tambah_berita_view.dart';

class AdminTambahBeritaController extends State<AdminTambahBeritaView> {
  static late AdminTambahBeritaController instance;
  late AdminTambahBeritaView view;

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
