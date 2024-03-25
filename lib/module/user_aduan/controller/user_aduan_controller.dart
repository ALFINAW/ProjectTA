import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/user_aduan_view.dart';

class UserAduanController extends State<UserAduanView> {
  static late UserAduanController instance;
  late UserAduanView view;

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
