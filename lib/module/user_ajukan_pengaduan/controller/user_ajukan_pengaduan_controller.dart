import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/user_ajukan_pengaduan_view.dart';

class UserAjukanPengaduanController extends State<UserAjukanPengaduanView> {
  static late UserAjukanPengaduanController instance;
  late UserAjukanPengaduanView view;

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
