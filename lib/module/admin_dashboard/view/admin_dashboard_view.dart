import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/admin_dashboard_controller.dart';

class AdminDashboardView extends StatefulWidget {
  const AdminDashboardView({Key? key}) : super(key: key);

  Widget build(context, AdminDashboardController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
        actions: const [],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text("Admin"),
              accountEmail: const Text("adminsikedes@gmail.com"),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdn-icons-png.flaticon.com/128/3237/3237472.png"),
              ),
              decoration: BoxDecoration(color: primaryColor),
              otherAccountsPictures: const [
                // CircleAvatar(
                //   backgroundColor: Colors.white,
                //   backgroundImage: NetworkImage(
                //       "https://randomuser.me/api/portraits/women/74.jpg"),
                // ),
                // CircleAvatar(
                //   backgroundColor: Colors.white,
                //   backgroundImage: NetworkImage(
                //       "https://randomuser.me/api/portraits/men/47.jpg"),
                // ),
              ],
            ),
            ListTile(
              leading: Image.network(
                "https://cdn-icons-png.flaticon.com/128/9431/9431944.png",
                height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              title: const Text("Daftar Pengajuan Surat",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              trailing: Icon(
                Icons.chevron_right,
                size: 24.0,
              ),
              onTap: () => Get.to(AdminListAjuanView()),
            ),
            ListTile(
              leading: Image.network(
                "https://cdn-icons-png.flaticon.com/128/1239/1239605.png",
                height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              title: const Text("Daftar Pengaduan",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              trailing: Icon(
                Icons.chevron_right,
                size: 24.0,
              ),
              onTap: () => Get.to(AdminListAduanView()),
            ),
            ListTile(
              leading: Image.network(
                "https://cdn-icons-png.flaticon.com/128/2910/2910769.png",
                height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              title: const Text("Tambah Berita",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              trailing: Icon(
                Icons.chevron_right,
                size: 24.0,
              ),
              onTap: () => Get.to(AdminTambahBeritaView()),
            ),
            ListTile(
              leading: Image.network(
                "https://cdn-icons-png.flaticon.com/128/5665/5665443.png",
                height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              title: const Text("Tambah Produk",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              trailing: Icon(
                Icons.chevron_right,
                size: 24.0,
              ),
              onTap: () => Get.to(AdminTambahProdukView()),
            ),
            ListTile(
              leading: Image.network(
                "https://cdn-icons-png.flaticon.com/128/12623/12623530.png",
                height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              title: const Text("Riwayat Pengajuan Surat",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              trailing: Icon(
                Icons.chevron_right,
                size: 24.0,
              ),
              onTap: () => Get.to(AdminRiwayatPengajuanSuratView()),
            ),
            ListTile(
              leading: Image.network(
                "https://cdn-icons-png.flaticon.com/128/2415/2415898.png",
                height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              title: const Text("Riwayat Pengaduan",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              trailing: Icon(
                Icons.chevron_right,
                size: 24.0,
              ),
              onTap: () => Get.to(AdminRiwayatPengaduanView()),
            ),
            ListTile(
              leading: Image.network(
                "https://cdn-icons-png.flaticon.com/128/9304/9304688.png",
                height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              title: const Text("Data Warga",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              trailing: Icon(
                Icons.chevron_right,
                size: 24.0,
              ),
              onTap: () => Get.to(AdminDataWargaView()),
            ),
            ListTile(
              leading: Image.network(
                "https://cdn-icons-png.flaticon.com/128/182/182448.png",
                height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              title: const Text("Logout",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              onTap: () => controller.logout(),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Container(
          color: backgroundColor,
          child: Column(
            children: [
              const SizedBox(height: 10.0),
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
                        bool isSelected = controller.currentIndex == entry.key;
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
                    Builder(builder: (context) {
                      List menuItems = [
                        {
                          "image":
                              "https://gcdnb.pbrd.co/images/GMf7NTbEjfuL.jpg?o=1",
                          "title":
                              "KARNAVAL TINGKAT DESA KARANGRENA TAHUN 2023",
                          "date": "09 Januari 2024",
                          "like": "15"
                        },
                        {
                          "image":
                              "https://images.unsplash.com/photo-1626030952277-9fbe79141a31?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW5jaWRlbnR8ZW58MHx8MHx8fDA%3D",
                          "title": "Kecelakaan beruntun di jl.Garuda",
                          "date": "23 Januari 2024",
                          "like": "18"
                        },
                        {
                          "image":
                              "https://plus.unsplash.com/premium_photo-1686397308706-9547f8cc4e32?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW5jaWRlbnR8ZW58MHx8MHx8fDA%3D",
                          "title": "Penyelamatan pemuda tenggelam di laut",
                          "date": "08 Februari 2024",
                          "like": "20"
                        },
                      ];
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: menuItems.length,
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          var item = menuItems[index];
                          return Container(
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
                                  item["image"],
                                  width: 140.0,
                                  height: 94.0,
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
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(
                                              Icons.thumb_up,
                                              color: Colors.grey[800],
                                              size: 20.0,
                                            ),
                                            Text(
                                              item["like"],
                                              style: TextStyle(fontSize: 16.0),
                                            ),
                                          ],
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
                        subtitle: 'Lihat semua',
                        onPressed: () => Get.to(ProductListView())),
                    const SizedBox(height: 5.0),
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
                    SizedBox(
                      height: 260.0,
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
                              "harga": 15000,
                              "image":
                                  "https://images.unsplash.com/photo-1529563021893-cc83c992d75d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aW5kb25lc2lhbiUyMGZvb2R8ZW58MHx8MHx8fDA%3D"
                            },
                            {
                              "nama": "Gado-gado",
                              "penjual": "Aminah",
                              "harga": 15000,
                              "image":
                                  "https://images.unsplash.com/photo-1562607635-4608ff48a859?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW5kb25lc2lhbiUyMGZvb2R8ZW58MHx8MHx8fDA%3D"
                            },
                            {
                              "nama": "Pecel Lele",
                              "penjual": "Jono",
                              "harga": 11000,
                              "image":
                                  "https://images.unsplash.com/photo-1613653739328-e86ebd77c9c8?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8aW5kb25lc2lhbiUyMGZvb2R8ZW58MHx8MHx8fDA%3D"
                            },
                            {
                              "nama": "Soto",
                              "penjual": "Pak Arya",
                              "harga": 15000,
                              "image":
                                  "https://images.unsplash.com/photo-1572656631137-7935297eff55?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8aW5kb25lc2lhbiUyMGZvb2R8ZW58MHx8MHx8fDA%3D"
                            },
                            {
                              "nama": "Ramen",
                              "penjual": "Dimas",
                              "harga": 16000,
                              "image":
                                  "https://images.unsplash.com/photo-1569718212165-3a8278d5f624?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGluZG9uZXNpYW4lMjBmb29kfGVufDB8fDB8fHww"
                            },
                          ];
                          var food = foods[index];
                          return GestureDetector(
                              onTap: () => Get.to(ProductDetailView(
                                    item: {},
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
                                              food["image"],
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
                                                  food["nama"],
                                                  style: TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  food["penjual"],
                                                  style: TextStyle(
                                                    fontSize: 14.0,
                                                  ),
                                                ),
                                                Text(
                                                  "Rp ${NumberFormat("#,##0", "id_ID").format(food["harga"])}",
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
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15.0),
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
                        title: 'Pengaduan',
                        subtitle: 'Lihat semua',
                        onPressed: () => Get.to(AdminListAduanView())),
                    const SizedBox(height: 5.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pantau aduan warga",
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    SizedBox(
                      height: 300.0,
                      child: ListView.builder(
                        itemCount: 5,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.zero,
                        clipBehavior: Clip.none,
                        itemBuilder: (context, index) {
                          List<Map<String, dynamic>> aduans = [
                            {
                              "judul": "Jalan Berlubang",
                              "tanggal": "25 Maret 2024, 16:59",
                              "deskripsi":
                                  "Jalan berlubang ini sudah sangat parah dan mengganggu perjalanan warga yang melewati daerah tersebut, mohon segera diperbaiki.",
                              "image":
                                  "https://images.unsplash.com/photo-1515162816999-a0c47dc192f7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cG90aG9sZXN8ZW58MHx8MHx8fDA%3D"
                            },
                            {
                              "judul": "Pohon Tumbang",
                              "tanggal": "25 April 2024, 14:04",
                              "deskripsi":
                                  "Ada pohon tumbang yang menutupi jalan pramuka",
                              "image":
                                  "https://images.unsplash.com/photo-1620239864516-c7513ed7eab2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFsbGVuJTIwdHJlZXxlbnwwfHwwfHx8MA%3D%3D"
                            },
                            {
                              "judul": "Sampah Laut",
                              "tanggal": "24 April 2024, 15:04",
                              "deskripsi":
                                  "Di laut sodong terdapat jumlah sampah yang tidak wajar, saya harap ini segera bisa dibersihkan ",
                              "image":
                                  "https://images.unsplash.com/flagged/photo-1572213426852-0e4ed8f41ff6?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cnViYmlzaHxlbnwwfHwwfHx8MA%3D%3D"
                            },
                            {
                              "judul": "Jalan Berlubang",
                              "tanggal": "26 April 2024, 16:04",
                              "deskripsi":
                                  "Jalan berlubang yang mengakibatkan genangan air, hal ini dapat membahayakan pengguna jalan",
                              "image":
                                  "https://images.unsplash.com/photo-1560782202-154b39d57ef2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cG90aG9sZXN8ZW58MHx8MHx8fDA%3D"
                            },
                            {
                              "judul": "Sampah",
                              "tanggal": "23 April 2024, 10:04",
                              "deskripsi":
                                  "Truk pemungut sampah tidak mengambil sampah di rumah saya yang beralamat di jalan niaga rt/rw 01/04",
                              "image":
                                  "https://images.unsplash.com/photo-1592890278983-18616401d4ed?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cnViYmlzaHxlbnwwfHwwfHx8MA%3D%3D"
                            },
                          ];
                          var aduan = aduans[index];
                          return GestureDetector(
                            onTap: () => Get.to(UserDetailAduanView()),
                            child: Container(
                              margin: const EdgeInsets.only(right: 25.0),
                              width: 230,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        height: 190.0,
                                        width: 230.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(aduan["image"]),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(
                                              10.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 0,
                                        right: 0,
                                        child: Container(
                                          padding: const EdgeInsets.only(
                                              left: 17.0,
                                              right: 17.0,
                                              top: 5.0,
                                              bottom: 5.0),
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10.0),
                                            ),
                                          ),
                                          child: Text(
                                            "Lapor",
                                            style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        left: 0,
                                        right: 0,
                                        child: Container(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                aduan["judul"],
                                                style: TextStyle(
                                                  fontSize: 17.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  shadows: [
                                                    Shadow(
                                                      color: Colors.black,
                                                      blurRadius: 24,
                                                      offset: Offset(1, 1),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    aduan["tanggal"],
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 8.0),
                                  Expanded(
                                    child: Text(
                                      aduan["deskripsi"],
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 15.0,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
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
    );
  }

  @override
  State<AdminDashboardView> createState() => AdminDashboardController();
}
