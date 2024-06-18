import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/product_detail_controller.dart';

class ProductDetailView extends StatefulWidget {
  final Map<String, dynamic> item;
  const ProductDetailView({
    Key? key,
    required this.item,
  }) : super(key: key);

  Widget build(context, ProductDetailController controller) {
    controller.view = this;
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 400.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(item["photo"] ??
                                "https://res.cloudinary.com/dotz74j1p/image/upload/v1715660683/no-image.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      //circle_icon
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16.0, left: 10.0),
                          child: InkWell(
                            onTap: () => Get.back(),
                            child: CircleAvatar(
                              backgroundColor: Colors.grey[300],
                              child: Icon(
                                Icons.arrow_back,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 24,
                          offset: Offset(0, 11),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item["product_name"] ?? "-",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "${(item["price"] as double).currency}",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: primaryColor),
                        ),
                        const SizedBox(height: 20.0),
                        Container(
                            height: 0.80,
                            width: MediaQuery.of(context).size.width,
                            color: Colors.black),
                        const SizedBox(height: 20.0),
                        Text(
                          "Deskripsi Produk",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Text(
                          "${item["description"]}",
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                          maxLines: 7,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 10.0),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 24,
                          offset: Offset(0, 11),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Profil Penjual",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Row(
                          children: [
                            //circle_image
                            CircleAvatar(
                              radius: 35.0,
                              backgroundImage: NetworkImage(
                                item["seller_photo"] ??
                                    "https://res.cloudinary.com/dotz74j1p/image/upload/v1715660683/no-image.jpg",
                              ),
                            ),
                            const SizedBox(width: 15.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item["seller_name"],
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 10.0),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.location_pin,
                                      size: 16.0,
                                    ),
                                    const SizedBox(width: 5.0),
                                    Text(
                                      item["seller_address"],
                                      style: TextStyle(
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 10.0),
                      ],
                    ),
                  ),
                  const SizedBox(height: 90.0),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin:
                  const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                //row_button
                children: [
                  Expanded(
                    child: QButtonProductDark(
                      label: "Chat",
                      icon: Icons.chat_outlined,
                      onPressed: () async {
                        var number = item["seller_whatsapp_number"]
                            .toString()
                            .replaceAll("+", "");
                        launchUrl(Uri.parse("https://wa.me/$number"));
                      },
                    ),
                  ),
                  const SizedBox(width: 5.0),
                  Expanded(
                    child: QOutlineButtonProductDark(
                      label: "Call",
                      icon: Icons.phone_in_talk_rounded,
                      onPressed: () async {
                        var number = item["seller_phone_number"]
                            .toString()
                            .replaceAll("+", "");
                        launchUrl(Uri.parse("tel:$number"));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<ProductDetailView> createState() => ProductDetailController();
}
