import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/pengajuan_form_option_view.dart';

class PengajuanFormOptionController extends State<PengajuanFormOptionView> {
  static late PengajuanFormOptionController instance;
  late PengajuanFormOptionView view;

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
