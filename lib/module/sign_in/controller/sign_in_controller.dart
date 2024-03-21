import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/sign_in_view.dart';

class SignInController extends State<SignInView> {
  static late SignInController instance;
  late SignInView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  login() async {
    //logic utk login
    // Get.offAll(UserMainNavigationView());
    Get.offAll(AdminDashboardView());
  }
}
