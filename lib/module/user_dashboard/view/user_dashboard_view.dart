import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/user_dashboard_controller.dart';

class UserDashboardView extends StatefulWidget {
  const UserDashboardView({Key? key}) : super(key: key);

  Widget build(context, UserDashboardController controller) {
    controller.view = this;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Container(
            color: backgroundColor,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                      top: 20.0, bottom: 20.0, left: 17.0),
                  child: Row(
                    children: [
                      Text(
                        "Welcome back, ",
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      Text(
                        "Rizal",
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                /*
                TODO: Implement this @ controller
                int currentIndex = 0;
                final CarouselController carouselController = CarouselController();
                */
                Builder(builder: (context) {
                  List images = [
                    "https://images.unsplash.com/photo-1679648370654-2e5e1b4ebe2f?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    "https://plus.unsplash.com/premium_photo-1661963997035-971529a052cc?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8dmlsbGFnZSUyMG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D",
                    "https://images.unsplash.com/photo-1572908721147-0a9eb395762d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHZpbGxhZ2UlMjBuYXR1cmV8ZW58MHx8MHx8fDA%3D",
                    "https://images.unsplash.com/photo-1442544213729-6a15f1611937?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHZpbGxhZ2V8ZW58MHx8MHx8fDA%3D",
                    "https://images.unsplash.com/photo-1626497862618-4aa68df390fd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8aW5kb25lc2lhbiUyMGZvb2R8ZW58MHx8MHx8fDA%3D"
                  ];

                  return Column(
                    children: [
                      CarouselSlider(
                        carouselController: controller.carouselController,
                        options: CarouselOptions(
                          height: 190.0,
                          autoPlay: true,
                          enlargeCenterPage: false,
                          viewportFraction: 1.0,
                          onPageChanged: (index, reason) {
                            controller.currentIndex = index;
                            controller.setState(() {});
                          },
                        ),
                        items: images.map((imageUrl) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: MediaQuery.of(context).size.width * 0.93,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5.0),
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(6.0),
                                  ),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      imageUrl,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: images.asMap().entries.map((entry) {
                          bool isSelected =
                              controller.currentIndex == entry.key;
                          return GestureDetector(
                            onTap: () => controller.carouselController
                                .animateToPage(entry.key),
                            child: Container(
                              width: isSelected ? 40 : 6.0,
                              height: 6.0,
                              margin: const EdgeInsets.only(
                                right: 6.0,
                                top: 12.0,
                              ),
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? primaryColor
                                    : primaryColor.withOpacity(0.6),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  );
                }),
                const SizedBox(
                  height: 5.0,
                ),
                Container(
                  margin: const EdgeInsets.all(13.0),
                  padding: const EdgeInsets.all(20.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                    border: Border.all(
                      width: 1.0,
                      color: Colors.grey[300]!,
                    ),
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
                        "Layanan Untukmu",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 25.0),
                      Builder(builder: (context) {
                        List menuItems = [
                          {
                            "image":
                                "https://cdn-icons-png.flaticon.com/128/3131/3131598.png",
                            "label": "Pengajuan\nSurat",
                            "view": UserPengajuanSuratListView(),
                          },
                          {
                            "image":
                                "https://cdn-icons-png.flaticon.com/128/2537/2537856.png",
                            "label": "Berita\nDesa",
                          },
                          {
                            "image":
                                "https://cdn-icons-png.flaticon.com/128/862/862819.png",
                            "label": "Produk\nDesa",
                          },
                          {
                            "image":
                                "https://cdn-icons-png.flaticon.com/128/1378/1378644.png",
                            "label": "Ajukan\nPengaduan",
                          },
                          {
                            "image":
                                "https://cdn-icons-png.flaticon.com/128/4412/4412392.png",
                            "label": "Info\nDesa",
                          },
                        ];

                        return GridView.builder(
                          padding: EdgeInsets.zero,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 1.0,
                            crossAxisCount: 3,
                            mainAxisSpacing: 15,
                            crossAxisSpacing: 25,
                          ),
                          itemCount: menuItems.length,
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            var item = menuItems[index];
                            return InkWell(
                              onTap: () {
                                if (item["view"] != null) {
                                  Get.to(item["view"]);
                                  return;
                                }
                                // Menggunakan Navigator.pushNamed untuk pindah halaman
                                if (index == 0) {
                                  Navigator.pushNamed(
                                      context, '/pengajuan_surat');
                                } else if (index == 1) {
                                  Navigator.pushNamed(context, '/berita_desa');
                                } else if (index == 2) {
                                  Navigator.pushNamed(context, '/produk_desa');
                                } else if (index == 3) {
                                  Navigator.pushNamed(
                                      context, '/ajukan_pengaduan');
                                } else if (index == 4) {
                                  Navigator.pushNamed(context, '/info_desa');
                                }
                              },
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      child: Image.network(
                                        item["image"],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6.0,
                                  ),
                                  Text(
                                    item["label"],
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      }),
                      const SizedBox(
                        height: 8.0,
                      ),
                    ],
                  ),
                ),
                Container(
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
                          title: 'Berita Desa Terbaru',
                          subtitle: 'Lihat semua',
                          onPressed: () => Get.to(NewsListView())),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Baca & temukan berita terbaru tentang desa",
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      StreamBuilder<QuerySnapshot>(
                        stream: FirebaseFirestore.instance
                            .collection("news")
                            .snapshots(),
                        builder: (context, snapshot) {
                          if (snapshot.hasError) return const Text("Error");
                          if (snapshot.data == null) return Container();
                          if (snapshot.data!.docs.isEmpty) {
                            return const Text("No Data");
                          }
                          final data = snapshot.data!;
                          var items = data.docs;
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            itemCount: items.length,
                            shrinkWrap: true,
                            physics: const ScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              var item =
                                  items[index].data() as Map<String, dynamic>;
                              item["id"] = items[index].id;
                              return GestureDetector(
                                onTap: () => Get.to(NewsDetailView(
                                  item: item,
                                )),
                                child: Container(
                                  margin: const EdgeInsets.only(bottom: 10.0),
                                  padding: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x19000000),
                                        blurRadius: 24,
                                        offset: Offset(0, 11),
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    children: [
                                      Image.network(
                                        item["photo"] ??
                                            "https://res.cloudinary.com/dotz74j1p/image/upload/v1715660683/no-image.jpg",
                                        width: 120.0,
                                        height: 80.0,
                                        fit: BoxFit.cover,
                                      ),
                                      const SizedBox(
                                        width: 12.0,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              item["title"],
                                              style: const TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 4.0,
                                            ),
                                            Text(
                                              (item["created_at"].toDate()
                                                      as DateTime)
                                                  .dMMMykkmmss,
                                              style: TextStyle(
                                                fontSize: 12.0,
                                                color: Colors.grey[600],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 8.0,
                                            ),
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: InkWell(
                                                onTap: () async {
                                                  var snapshot =
                                                      await FirebaseFirestore
                                                          .instance
                                                          .collection(
                                                              "news_likes")
                                                          .where("news_id",
                                                              isEqualTo:
                                                                  item["id"])
                                                          .where("user_id",
                                                              isEqualTo:
                                                                  currentUser!
                                                                      .uid)
                                                          .get();
                                                  if (snapshot
                                                      .docs.isNotEmpty) {
                                                    se("Kamu sudah pernah like postingan ini");
                                                    return;
                                                  }

                                                  await FirebaseFirestore
                                                      .instance
                                                      .collection("news")
                                                      .doc(item["id"])
                                                      .update({
                                                    "like_count":
                                                        FieldValue.increment(1),
                                                  });
                                                  await FirebaseFirestore
                                                      .instance
                                                      .collection("news_likes")
                                                      .add({
                                                    "news_id": item["id"],
                                                    "user_id": currentUser!.uid,
                                                  });
                                                },
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Icon(
                                                      Icons.thumb_up,
                                                      color: Colors.grey[800],
                                                      size: 20.0,
                                                    ),
                                                    Text(
                                                      "${item["like_count"]}",
                                                      style: TextStyle(
                                                          fontSize: 16.0),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Container(
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
                                var item =
                                    items[index].data() as Map<String, dynamic>;
                                item["id"] = items[index].id;

                                return GestureDetector(
                                    onTap: () => Get.to(ProductDetailView(
                                          item: item,
                                        )),
                                    child: Container(
                                      margin:
                                          const EdgeInsets.only(right: 15.0),
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 8.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        item["product_name"] ??
                                                            "-",
                                                        style: TextStyle(
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.bold,
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
                                                          fontWeight:
                                                              FontWeight.bold,
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<UserDashboardView> createState() => UserDashboardController();
}
