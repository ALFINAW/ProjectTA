import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/berita_detail_view.dart';

class BeritaDetailController extends State<BeritaDetailView> {
  static late BeritaDetailController instance;
  late BeritaDetailView view;

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
