import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/auth_service.dart';
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

  String email = "";
  String password = "";
  login() async {
    showLoading();
    try {
      await AuthService().login(
        email: email,
        password: password,
      );
      hideLoading();
      if (isAdmin) {
        Get.offAll(AdminDashboardView());
      } else {
        Get.offAll(UserMainNavigationView());
      }
    } on Exception catch (err) {
      hideLoading();
      print(err);
      se(err.toString());
    }
  }
}
