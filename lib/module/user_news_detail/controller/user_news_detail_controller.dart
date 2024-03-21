import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/user_news_detail_view.dart';

class UserNewsDetailController extends State<UserNewsDetailView> {
  static late UserNewsDetailController instance;
  late UserNewsDetailView view;

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
