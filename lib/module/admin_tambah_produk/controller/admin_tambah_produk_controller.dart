import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/admin_tambah_produk_view.dart';

class AdminTambahProdukController extends State<AdminTambahProdukView> {
  static late AdminTambahProdukController instance;
  late AdminTambahProdukView view;

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
