import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/user_detail_ajuan_view.dart';

class UserDetailAjuanController extends State<UserDetailAjuanView> {
  static late UserDetailAjuanController instance;
  late UserDetailAjuanView view;

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
