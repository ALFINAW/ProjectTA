import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/user_pengajuan_ktp_view.dart';

class UserPengajuanKtpController extends State<UserPengajuanKtpView> {
  static late UserPengajuanKtpController instance;
  late UserPengajuanKtpView view;

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
