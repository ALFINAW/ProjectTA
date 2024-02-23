import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/user_pengajuan_skck_view.dart';

class UserPengajuanSkckController extends State<UserPengajuanSkckView> {
  static late UserPengajuanSkckController instance;
  late UserPengajuanSkckView view;

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
