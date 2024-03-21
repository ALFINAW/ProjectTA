import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/user_news_list_view.dart';

class UserNewsListController extends State<UserNewsListView> {
  static late UserNewsListController instance;
  late UserNewsListView view;

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
