import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/user_product_detail_view.dart';

class UserProductDetailController extends State<UserProductDetailView> {
  static late UserProductDetailController instance;
  late UserProductDetailView view;

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
