import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
<<<<<<< HEAD:lib/module/product_detail/view/product_detail_view.dart
import '../controller/product_detail_controller.dart';
=======
import '../controller/user_product_detail_controller.dart';
>>>>>>> ed773b84ecaa6a6c3977387c45c48665656f9a9e:lib/module/user_product_detail/view/user_product_detail_view.dart

class ProductDetailView extends StatefulWidget {
  const ProductDetailView({Key? key}) : super(key: key);

  Widget build(context, ProductDetailController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("UserProductDetail"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<ProductDetailView> createState() => ProductDetailController();
}
