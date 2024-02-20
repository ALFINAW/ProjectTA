import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/user_informasi_desa_view.dart';

class UserInformasiDesaController extends State<UserInformasiDesaView> {
  static late UserInformasiDesaController instance;
  late UserInformasiDesaView view;

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
