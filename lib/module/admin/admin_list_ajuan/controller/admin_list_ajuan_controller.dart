import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/admin_list_ajuan_view.dart';

class AdminListAjuanController extends State<AdminListAjuanView> {
  static late AdminListAjuanController instance;
  late AdminListAjuanView view;

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
