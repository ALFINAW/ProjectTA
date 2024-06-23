import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class AdminDashboardController extends State<AdminDashboardView> {
  static late AdminDashboardController instance;
  late AdminDashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int currentIndex = 0;
  final CarouselController carouselController = CarouselController();
  logout() async {
    await FirebaseAuth.instance.signOut();
    Get.offAll(WellcomeView());
  }
}
