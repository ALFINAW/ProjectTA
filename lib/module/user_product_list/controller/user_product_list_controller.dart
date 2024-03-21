import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/user_product_list_view.dart';

class UserProductListController extends State<UserProductListView> {
  static late UserProductListController instance;
  late UserProductListView view;

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
