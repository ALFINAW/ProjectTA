import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/product_list_controller.dart';

class ProductListView extends StatefulWidget {
  const ProductListView({Key? key}) : super(key: key);

  Widget build(context, ProductListController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Produk Desa",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
        actions: const [],
      ),
      floatingActionButton: isUser
          ? null
          : FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () async {
                await Get.to(ProductFormView());
              },
            ),
      body: Container(
        color: backgroundColor,
        padding: const EdgeInsets.all(13.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 24,
                    offset: Offset(0, 11),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: Colors.grey[300]!,
                      )),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.blueGrey[900],
                  ),
                  suffixIcon: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.sort,
                      color: Colors.blueGrey[900],
                    ),
                  ),
                ),
                onChanged: (value) {
                  controller.updateSearch(value);
                },
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection("products")
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) return const Text("Error");
                  if (snapshot.data == null) return Container();
                  if (snapshot.data!.docs.isEmpty) {
                    return const Text("No Data");
                  }
                  final data = snapshot.data!;
                  var allItems = data.docs;

                  var items = allItems;

                  if (controller.search.isNotEmpty) {
                    var search = controller.search.toLowerCase();
                    items.removeWhere((i) {
                      var item = i.data() as Map<String, dynamic>;
                      return item["product_name"]
                              .toString()
                              .toLowerCase()
                              .contains(search) ==
                          false;
                    });
                  }

                  return GridView.builder(
                    padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1.0 / 1.5,
                      crossAxisCount: 2,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                    ),
                    itemCount: items.length,
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      var data = items[index];
                      var item = data.data() as Map<String, dynamic>;
                      item["id"] = data.id;

                      return GestureDetector(
                          onTap: () => Get.to(ProductDetailView(
                                item: item,
                              )),
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 5.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(6.0),
                                  topLeft: Radius.circular(6.0),
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0)),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
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
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        item["product_name"] ?? "-",
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4.0,
                                      ),
                                      Text(
                                        item["seller_name"],
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 12.0,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4.0,
                                      ),
                                      Text(
                                        "${(item["price"] as double).currency}",
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                          color: primaryColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ));
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<ProductListView> createState() => ProductListController();
}
