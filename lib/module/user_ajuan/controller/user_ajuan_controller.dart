import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/user_ajuan_view.dart';

class UserAjuanController extends State<UserAjuanView> {
  static late UserAjuanController instance;
  late UserAjuanView view;

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
