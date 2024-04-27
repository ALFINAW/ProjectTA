import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/admin_list_aduan_view.dart';

class AdminListAduanController extends State<AdminListAduanView> {
  static late AdminListAduanController instance;
  late AdminListAduanView view;

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
