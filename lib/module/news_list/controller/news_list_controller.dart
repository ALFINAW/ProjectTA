import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/news_list_view.dart';

class NewsListController extends State<NewsListView> {
  static late NewsListController instance;
  late NewsListView view;

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
