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
                        "Alfin",
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
                          height: 170.0,
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
                        "Layanan untukmu",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Builder(builder: (context) {
                        List menuItems = [
                          {
                            "image":
                                "https://cdn-icons-png.flaticon.com/128/3131/3131598.png",
                            "label": "Pengajuan\nSurat",
                          },
                          {
                            "image":
                                "https://cdn-icons-png.flaticon.com/128/2537/2537856.png",
                            "label": "Berita\nDesa",
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
                            crossAxisCount: 4,
                            mainAxisSpacing: 6,
                            crossAxisSpacing: 6,
                          ),
                          itemCount: menuItems.length,
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            var item = menuItems[index];
                            return InkWell(
                              onTap: () {},
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
                                      fontSize: 12.0,
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
                          subtitle: 'Lihat Semua',
                          onPressed: () {}),
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
                      Builder(builder: (context) {
                        List menuItems = [
                          {
                            "image":
                                "https://images.unsplash.com/photo-1561828718-3971eadec8b5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8aW5jaWRlbnR8ZW58MHx8MHx8fDA%3D",
                            "title":
                                "Polisis amankan tiga pemuda hendak bunuh diri",
                            "date": "09 Januari 2024",
                          },
                          {
                            "image":
                                "https://images.unsplash.com/photo-1626030952277-9fbe79141a31?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW5jaWRlbnR8ZW58MHx8MHx8fDA%3D",
                            "title": "Kecelakaan beruntun di jl.Garuda",
                            "date": "23 Januari 2024",
                          },
                          {
                            "image":
                                "https://plus.unsplash.com/premium_photo-1686397308706-9547f8cc4e32?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW5jaWRlbnR8ZW58MHx8MHx8fDA%3D",
                            "title": "Penyelamatan pemuda tenggelam di laut",
                            "date": "08 Februari 2024",
                          }
                        ];
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          itemCount: menuItems.length,
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            var item = menuItems[index];
                            return Container(
                              margin: const EdgeInsets.only(bottom: 15.0),
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
                                    item["image"],
                                    width: 140.0,
                                    height: 94.0,
                                    fit: BoxFit.fill,
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
                                          item["date"],
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
                                          child: Icon(
                                            Icons.thumb_up,
                                            color: Colors.grey[800],
                                            size: 20.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      }),
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
                          subtitle: 'Lihat Semua',
                          onPressed: () {}),
                      const SizedBox(
                        height: 20.0,
                      ),
                      SizedBox(
                        height: 235.0,
                        child: ListView.builder(
                          itemCount: 5,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.zero,
                          clipBehavior: Clip.none,
                          itemBuilder: (context, index) {
                            List<Map<String, dynamic>> foods = [
                              {
                                "nama": "Sate Ayam",
                                "penjual": "Suwiryo",
                                "harga": "Rp 15.000",
                                "image":
                                    "https://images.unsplash.com/photo-1529563021893-cc83c992d75d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aW5kb25lc2lhbiUyMGZvb2R8ZW58MHx8MHx8fDA%3D"
                              },
                              {
                                "nama": "Gado-gado",
                                "penjual": "Aminah",
                                "harga": "Rp 15.000",
                                "image":
                                    "https://images.unsplash.com/photo-1562607635-4608ff48a859?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW5kb25lc2lhbiUyMGZvb2R8ZW58MHx8MHx8fDA%3D"
                              },
                              {
                                "nama": "Pecel Lele",
                                "penjual": "Jono",
                                "harga": "Rp 11.000",
                                "image":
                                    "https://images.unsplash.com/photo-1613653739328-e86ebd77c9c8?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8aW5kb25lc2lhbiUyMGZvb2R8ZW58MHx8MHx8fDA%3D"
                              },
                              {
                                "nama": "Soto",
                                "penjual": "Pak Arya",
                                "harga": "Rp 15.000",
                                "image":
                                    "https://images.unsplash.com/photo-1572656631137-7935297eff55?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8aW5kb25lc2lhbiUyMGZvb2R8ZW58MHx8MHx8fDA%3D"
                              },
                              {
                                "nama": "Ramen",
                                "penjual": "Dimas",
                                "harga": "Rp 16.000",
                                "image":
                                    "https://images.unsplash.com/photo-1569718212165-3a8278d5f624?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGluZG9uZXNpYW4lMjBmb29kfGVufDB8fDB8fHww"
                              },
                            ];
                            var food = foods[index];
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 160.0,
                                  width: 140.0,
                                  margin: const EdgeInsets.only(right: 15.0),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(food["image"]),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        8.0,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  food["nama"],
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  food["penjual"],
                                  style: TextStyle(
                                    fontSize: 13.0,
                                  ),
                                ),
                                Text(
                                  food["harga"],
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
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
