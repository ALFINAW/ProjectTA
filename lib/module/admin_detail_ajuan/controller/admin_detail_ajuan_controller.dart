import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/admin_detail_ajuan_view.dart';

class AdminDetailAjuanController extends State<AdminDetailAjuanView> {
  static late AdminDetailAjuanController instance;
  late AdminDetailAjuanView view;

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
