import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/admin_detail_aduan_view.dart';

class AdminDetailAduanController extends State<AdminDetailAduanView> {
  static late AdminDetailAduanController instance;
  late AdminDetailAduanView view;

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
