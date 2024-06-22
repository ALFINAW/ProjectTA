import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/product_form_controller.dart';

class ProductFormView extends StatefulWidget {
  ProductFormView({Key? key}) : super(key: key);

  Widget build(context, ProductFormController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: Text("ProductForm"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Form(
            key: controller.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Data produk",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                Divider(),
                QImagePicker(
                  label: "Photo",
                  validator: Validator.required,
                  value: controller.photo,
                  onChanged: (value) {
                    controller.photo = value;
                  },
                ),
                QTextField(
                  label: "Product name",
                  validator: Validator.required,
                  value: controller.productName,
                  onChanged: (value) {
                    controller.productName = value;
                  },
                ),
                QNumberField(
                  label: "Price",
                  validator: Validator.required,
                  value: controller.price?.toString(),
                  onChanged: (value) {
                    controller.price = double.tryParse(value) ?? 0;
                  },
                ),
                QMemoField(
                  label: "Description",
                  validator: Validator.required,
                  value: controller.description,
                  onChanged: (value) {
                    controller.description = value;
                  },
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Data penjual",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                Divider(),
                QImagePicker(
                  label: "Foto penjual",
                  validator: Validator.required,
                  value: controller.sellerPhoto,
                  onChanged: (value) {
                    controller.sellerPhoto = value;
                  },
                ),
                QTextField(
                  label: "Nama penjual",
                  validator: Validator.required,
                  value: controller.sellerName,
                  onChanged: (value) {
                    controller.sellerName = value;
                  },
                ),
                QTextField(
                  label: "No. telpon penjual",
                  validator: Validator.required,
                  value: controller.sellerPhoneNumber,
                  onChanged: (value) {
                    controller.sellerPhoneNumber = value;
                  },
                ),
                QTextField(
                  label: "Whatsapp penjual",
                  validator: Validator.required,
                  value: controller.sellerWhatsappNumber,
                  onChanged: (value) {
                    controller.sellerWhatsappNumber = value;
                  },
                ),
                QMemoField(
                  label: "Alamat penjual",
                  validator: Validator.required,
                  value: controller.sellerAddress,
                  onChanged: (value) {
                    controller.sellerAddress = value;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: QActionButton(
        label: "Save",
        onPressed: () async {
          bool isNotValid =
              controller.formKey.currentState!.validate() == false;
          if (isNotValid) {
            return;
          }
          controller.submit();
        },
      ),
    );
  }

  @override
  State<ProductFormView> createState() => ProductFormController();
}
