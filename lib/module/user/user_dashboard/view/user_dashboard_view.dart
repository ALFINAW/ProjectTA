import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/user_dashboard_controller.dart';
import '../../../__general/app_widget/berita_desa_terbaru_widget.dart';
import '../../../__general/app_widget/produk_desa_terbaru_widget.dart';

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
                            "view": PengajuanListView(),
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
                BeritaDesaTerbaruWidget(),
                const SizedBox(
                  height: 15.0,
                ),
                ProdukDesaTerbaruWidget(),
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
