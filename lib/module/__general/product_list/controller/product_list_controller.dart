import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/product_list_view.dart';

class ProductListController extends State<ProductListView> {
  static late ProductListController instance;
  late ProductListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String search = "";
  updateSearch(String value) {
    search = value;
    setState(() {});
  }
}
