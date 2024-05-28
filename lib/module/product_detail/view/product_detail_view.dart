import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/product_detail_controller.dart';

class ProductDetailView extends StatefulWidget {
  const ProductDetailView({Key? key}) : super(key: key);

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
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://gcdnb.pbrd.co/images/NWhCKZZRvx0G.jpg?o=1"),
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
                          'Ayam Krispi',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Rp 12.000',
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
                          "Rasakan sensasi kelezatan sejati dengan Ayam Krispi kami yang begitu menggugah selera. Daging ayam segar pilihan terbaik dimasak dengan sempurna, dibalut dengan tepung renyah yang dibumbui dengan rempah-rempah rahasia warisan turun-temurun. Setiap gigitan akan membawa Anda pada petualangan rasa yang tak terlupakan. Kulit ayam yang digoreng hingga garing di luar namun tetap lembut dan juicy di dalam, menciptakan tekstur sempurna yang akan memanjakan lidah Anda. Rempah-rempah khas kami yang terdiri dari campuran bumbu rahasia memberikan sentuhan aroma harum yang menggugah selera dan rasa yang kaya akan citarasa.",
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
                                "https://gcdnb.pbrd.co/images/o5WOc5cCdP6W.jpg?o=1",
                              ),
                            ),
                            const SizedBox(width: 15.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Bang Jay",
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
                                      "Jl. Rajawali RT/RW 06/04",
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
                  QButtonProductDark(
                      label: "Chat Penjual",
                      icon: Icons.chat_outlined,
                      onPressed: () {}),
                  const SizedBox(width: 5.0),
                  Expanded(
                      child: QOutlineButtonProductDark(
                          label: "Hubungi Penjual",
                          icon: Icons.phone_in_talk_rounded,
                          onPressed: () {})),
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
