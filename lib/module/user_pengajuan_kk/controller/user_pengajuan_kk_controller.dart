import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/user_pengajuan_kk_view.dart';
import 'family_member_controller.dart';

class UserPengajuanKkController extends State<UserPengajuanKkView> {
  static late UserPengajuanKkController instance;
  late UserPengajuanKkView view;
  late FamilyMemberController familyMemberController;

  UserPengajuanKkController() {
    instance = this;
    familyMemberController = FamilyMemberController();
  }
  

  @override
  void initState() {
    instance = this;
    familyMemberController = FamilyMemberController();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
