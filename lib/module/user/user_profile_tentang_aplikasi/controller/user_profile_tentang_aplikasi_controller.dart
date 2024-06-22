import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/user_profile_tentang_aplikasi_view.dart';

class UserProfileTentangAplikasiController
    extends State<UserProfileTentangAplikasiView> {
  static late UserProfileTentangAplikasiController instance;
  late UserProfileTentangAplikasiView view;

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
