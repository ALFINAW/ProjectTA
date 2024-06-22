import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ProdukDesaTerbaruWidget extends StatelessWidget {
  const ProdukDesaTerbaruWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 24,
            offset: Offset(0, 11),
          ),
        ],
        border: Border.all(
          width: 1.0,
          color: Colors.grey[300]!,
        ),
      ),
      child: Column(
        children: [
          H4(
              title: 'Produk Desa',
              subtitle: 'Lihat semua',
              onPressed: () => Get.to(ProductListView())),
          const SizedBox(
            height: 5.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Lihat produk usaha kecil menengah",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              )
            ],
          ),
          const SizedBox(height: 20.0),
          StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection("products")
                .limit(5)
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasError) return const Text("Error");
              if (snapshot.data == null) return Container();
              if (snapshot.data!.docs.isEmpty) {
                return const Text("No Data");
              }
              final data = snapshot.data!;
              var items = data.docs;
              return SizedBox(
                height: 260.0,
                child: ListView.builder(
                  itemCount: items.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.zero,
                  clipBehavior: Clip.none,
                  itemBuilder: (context, index) {
                    var item = items[index].data() as Map<String, dynamic>;
                    item["id"] = items[index].id;

                    return GestureDetector(
                        onTap: () => Get.to(ProductDetailView(
                              item: item,
                            )),
                        child: Container(
                          margin: const EdgeInsets.only(right: 15.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 24,
                                offset: Offset(0, 11),
                              ),
                            ],
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(6.0),
                                topLeft: Radius.circular(6.0),
                                bottomLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  width: 150,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        item["photo"] ??
                                            "https://res.cloudinary.com/dotz74j1p/image/upload/v1715660683/no-image.jpg",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        6.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Row(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            item["product_name"] ?? "-",
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            item["seller_name"],
                                            style: TextStyle(
                                              fontSize: 14.0,
                                            ),
                                          ),
                                          Text(
                                            "${(item["price"] as double).currency}",
                                            style: TextStyle(
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.bold,
                                              color: primaryColor,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 8.0,
                                          ),
                                        ],
                                      ))
                                ],
                              ),
                            ],
                          ),
                        ));
                  },
                ),
              );
            },
          ),
          const SizedBox(
            height: 5.0,
          ),
        ],
      ),
    );
  }
}
