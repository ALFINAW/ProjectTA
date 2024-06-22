import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/berita_list_view.dart';

class BeritaListController extends State<BeritaListView> {
  static late BeritaListController instance;
  late BeritaListView view;

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
