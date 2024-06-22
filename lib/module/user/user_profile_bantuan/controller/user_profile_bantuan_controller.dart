import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/user_profile_bantuan_view.dart';

class UserProfileBantuanController extends State<UserProfileBantuanView> {
  static late UserProfileBantuanController instance;
  late UserProfileBantuanView view;

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
