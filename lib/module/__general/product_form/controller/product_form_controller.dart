import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:faker_dart/faker_dart.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/product_form_view.dart';

class ProductFormController extends State<ProductFormView> {
  static late ProductFormController instance;
  late ProductFormView view;

  @override
  void initState() {
    super.initState();
    instance = this;
    WidgetsBinding.instance.addPostFrameCallback((_) => onReady());

    if (kDebugMode) {
      photo =
          "https://res.cloudinary.com/dotz74j1p/image/upload/v1715660683/no-image.jpg";
      productName = Faker.instance.commerce.productName();
      price = Random().nextInt(1000) + 100;
      description =
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.";

      sellerPhoto =
          "https://res.cloudinary.com/dotz74j1p/raw/upload/v1716044999/t3jxwmbgwelsvgsmby4c.png";
      sellerName = Faker.instance.name.fullName();
      sellerPhoneNumber = "+6288902915754";
      sellerWhatsappNumber = "+6288902915754";
      sellerAddress = Faker.instance.address.streetAddress();
    }
  }

  void onReady() {}

  @override
  void dispose() {
    super.dispose();
  }

  String? photo;
  String? productName;
  double? price;
  String? description;

  String? sellerPhoto;
  String? sellerName;
  String? sellerPhoneNumber;
  String? sellerWhatsappNumber;
  String? sellerAddress;

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future<void> submit() async {
    showLoading();
    await FirebaseFirestore.instance.collection("products").add({
      "photo": photo,
      "product_name": productName,
      "price": price,
      "description": description,
      "seller_photo": sellerPhoto,
      "seller_name": sellerName,
      "seller_phone_number": sellerPhoneNumber,
      "seller_whatsapp_number": sellerWhatsappNumber,
      "seller_address": sellerAddress,
      "createdAt": Timestamp.now(),
    });
    hideLoading();
    Get.back();
    ss("Berhasil menambahkan produk");
  }
}
